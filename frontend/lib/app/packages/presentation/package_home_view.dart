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
    final notifier = ref.watch(
        packageHomeNotifierProvider(packageName: packageName, version: version)
            .notifier);
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
              data: (d) => SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 50),
                    _PackageHeader(),
                    SizedBox(height: 50),
                    _PackageReadme(),
                    SizedBox(height: 50),
                    _PackageChangelog(),
                  ],
                ),
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
                              .withOpacity(0.7),
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
