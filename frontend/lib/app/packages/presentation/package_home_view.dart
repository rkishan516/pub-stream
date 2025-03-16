import 'package:flexible_text/flexible_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pubstream/app/packages/notifiers/package_home_view_notifier.dart';
import 'package:pubstream/app/routes/notifiers/app_router.dart';
import 'package:timeago/timeago.dart';

class PackageHomeView extends ConsumerWidget {
  const PackageHomeView({
    super.key,
    required this.packageName,
    required this.version,
    required this.tab,
  });
  final String packageName;
  final String version;
  final PackageHomeViewTabs tab;

  static PackageHomeView of(BuildContext context) {
    final view = mayBeOf(context);
    assert(view != null);
    return view!;
  }

  static PackageHomeView? mayBeOf(BuildContext context) {
    return context.findAncestorWidgetOfExactType<PackageHomeView>();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(
      packageHomeNotifierProvider(
        packageName: packageName,
        version: version,
      ),
    );

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'assets/logo.png',
            height: 30,
          ),
          centerTitle: true,
        ),
        body: Center(
          child: FractionallySizedBox(
            widthFactor: 0.9,
            child: state.when(
              data: (d) => Column(
                children: [
                  SizedBox(height: 25),
                  _PackageHeader(),
                  SizedBox(height: 25),
                  _TabBar(),
                  SizedBox(height: 25),
                  Expanded(
                    child: _buildSelectedTab(context),
                  ),
                ],
              ),
              error: (e, s) => Center(
                child: Text(
                  'Unable to load package: $packageName',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: Colors.redAccent,
                      ),
                ),
              ),
              loading: () => Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSelectedTab(BuildContext context) {
    switch (tab) {
      case PackageHomeViewTabs.readMe:
        return SingleChildScrollView(child: _PackageReadme());
      case PackageHomeViewTabs.changelog:
        return SingleChildScrollView(child: _PackageChangelog());
      case PackageHomeViewTabs.installing:
        return SingleChildScrollView(child: _PackageInstalling());
      case PackageHomeViewTabs.versions:
        return SingleChildScrollView(child: _PackageVersions());
    }
  }
}

class _PackageHeader extends ConsumerWidget {
  const _PackageHeader();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final view = PackageHomeView.of(context);
    final state = ref.watch(
      packageHomeNotifierProvider(
        packageName: view.packageName,
        version: view.version,
      ).select((value) => value.asData!.value),
    );
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${state.detailView.name} ${state.detailView.version}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 16),
            Text(
              state.detailView.description,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            SizedBox(height: 16),
            Row(
              children: [
                FlexibleText(
                  text: 'Published #${format(state.detailView.createdAt)}#',
                  style: Theme.of(context).textTheme.bodyLarge!,
                  richTextSeparator: '#',
                  richStyles: [
                    Theme.of(context).textTheme.bodyLarge!.apply(
                          color: Theme.of(context)
                              .colorScheme
                              .onSecondaryContainer
                              .withValues(alpha: 255 * 0.7),
                        )
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            _Platfroms(),
          ],
        ),
      ),
    );
  }
}

class _Platfroms extends ConsumerWidget {
  const _Platfroms();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Wrap(
      runSpacing: 16,
      spacing: 20,
      children: [
        SizedBox(
          height: 30,
          width: 100,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Platforms:',
            ),
          ),
        ),
        ...['Android', 'iOS', 'Linux', 'MacOS', 'Windows'].map((e) {
          return Chip(
            label: Text(
              e.toUpperCase(),
            ),
          );
        }),
      ],
    );
  }
}

class _PackageReadme extends ConsumerWidget {
  const _PackageReadme();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final view = PackageHomeView.of(context);
    final state = ref.watch(
      packageHomeNotifierProvider(
        packageName: view.packageName,
        version: view.version,
      ).select((value) => value.asData!.value.detailView.readme!),
    );
    return Card(
      child: Markdown(
        shrinkWrap: true,
        data: state,
      ),
    );
  }
}

class _PackageChangelog extends ConsumerWidget {
  const _PackageChangelog();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final view = PackageHomeView.of(context);
    final state = ref.watch(
      packageHomeNotifierProvider(
        packageName: view.packageName,
        version: view.version,
      ).select((value) => value.asData!.value.detailView.changelog!),
    );
    return Card(
      child: Markdown(
        shrinkWrap: true,
        data: state,
      ),
    );
  }
}

class _PackageVersions extends ConsumerWidget {
  const _PackageVersions();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final view = PackageHomeView.of(context);
    final state = ref.watch(
      packageHomeNotifierProvider(
        packageName: view.packageName,
        version: view.version,
      ).select((value) => value.asData!.value.detailView.versions),
    );
    return Card(
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: state.length,
        separatorBuilder: (context, index) => Divider(),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        itemBuilder: (context, index) {
          final version = state.elementAt(index);
          return Row(
            children: [
              InkWell(
                onTap: () {
                  PackageHomeViewPageRoute(
                    packageName: view.packageName,
                    version: version.version,
                  ).go(context);
                },
                child: Text(
                  version.version,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Theme.of(context).primaryColor,
                      ),
                ),
              ),
              const Spacer(),
              Text(
                format(version.createdAt),
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          );
        },
      ),
    );
  }
}

class _TabBar extends ConsumerWidget {
  const _TabBar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final view = PackageHomeView.of(context);
    final theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: OverflowBar(
          alignment: MainAxisAlignment.spaceEvenly,
          children: PackageHomeViewTabs.values.map((tab) {
            final isSelected = view.tab == tab;
            return InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () {
                PackageHomeViewPageRoute(
                  packageName: view.packageName,
                  version: view.version,
                  tab: tab,
                ).go(context);
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color:
                          isSelected ? theme.primaryColor : Colors.transparent,
                      width: 2,
                    ),
                  ),
                ),
                child: Text(
                  tab.name.toUpperCase(),
                  style: theme.textTheme.labelLarge?.copyWith(
                    color: isSelected ? theme.primaryColor : null,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class _PackageInstalling extends ConsumerWidget {
  const _PackageInstalling();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final view = PackageHomeView.of(context);
    final theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Installing',
              style: theme.textTheme.headlineMedium,
            ),
            SizedBox(height: 16),
            Text(
              '1. Add this to your package\'s pubspec.yaml file:',
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: theme.colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'dependencies:\n  ${view.packageName}: ^${view.version}',
                style: theme.textTheme.bodyLarge?.copyWith(
                  fontFamily: 'monospace',
                ),
              ),
            ),
            SizedBox(height: 24),
            Text(
              '2. Install it',
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: theme.colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'dart pub get',
                style: theme.textTheme.bodyLarge?.copyWith(
                  fontFamily: 'monospace',
                ),
              ),
            ),
            SizedBox(height: 24),
            Text(
              '3. Import it',
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: theme.colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'import \'package:${view.packageName}/${view.packageName}.dart\';',
                style: theme.textTheme.bodyLarge?.copyWith(
                  fontFamily: 'monospace',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
