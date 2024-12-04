import 'package:flexible_text/flexible_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pubstream/app/home/notifiers/page_notifier.dart';
import 'package:pubstream/app/routes/notifiers/app_router.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PubStream'),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(height: 50),
                Image.asset(
                  'assets/full_logo.png',
                  width: 200,
                ),
                SizedBox(height: 50),
                _PackageSearchField(),
                SizedBox(height: 25),
                _SearchBannerSubtitle(),
                SizedBox(height: 25),
                Divider(),
                SizedBox(height: 50),
                _TopPackagesHeader(),
                SizedBox(height: 50),
                _TopPackages(),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _PackageSearchField extends ConsumerWidget {
  const _PackageSearchField();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: theme.secondaryHeaderColor),
    );
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      constraints: BoxConstraints(
        maxWidth: 600,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: border,
          enabledBorder: border,
          fillColor: Color(0xFF454C4F),
          filled: true,
          prefixIcon: Icon(Icons.search),
        ),
        style: theme.textTheme.titleSmall,
        onFieldSubmitted: (query) =>
            PackagesViewPageRoute(query: query).go(context),
      ),
    );
  }
}

class _SearchBannerSubtitle extends ConsumerWidget {
  const _SearchBannerSubtitle();

  void launchLink(String url) async {
    await launchUrlString(url);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    return FlexibleText(
      text: 'Private package repository for #Dart# and #Flutter# apps.',
      style: Theme.of(context).textTheme.bodyLarge!,
      richTextSeparator: '#',
      textRecognizers: [
        TapGestureRecognizer()..onTap = () => launchLink('https://dart.dev'),
        TapGestureRecognizer()..onTap = () => launchLink('https://flutter.dev')
      ],
      richStyles: [
        theme.textTheme.bodyLarge!.copyWith(
          color: theme.primaryColor,
        ),
        theme.textTheme.bodyLarge!.copyWith(
          color: theme.primaryColor,
        ),
      ],
    );
  }
}

class _TopPackagesHeader extends ConsumerWidget {
  const _TopPackagesHeader();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(
      'Top Packages',
      style: Theme.of(context).textTheme.headlineLarge,
    );
  }
}

class _TopPackages extends ConsumerWidget {
  const _TopPackages();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    return ref.watch(homePageNotifierProvider).when(
          data: (packages) => Center(
            child: GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 40),
              shrinkWrap: true,
              gridDelegate: ResponsiveGridDelegate(
                childAspectRatio: 2,
                minCrossAxisExtent: 400,
              ),
              itemCount: packages.packages.count,
              itemBuilder: (context, index) {
                final package = packages.packages.packages.elementAt(index);
                return Align(
                  child: GestureDetector(
                    onTap: () =>
                        PackageHomeViewPageRoute(packageName: package.name)
                            .go(context),
                    child: SizedBox(
                      height: 300,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                package.name,
                                style: theme.textTheme.displaySmall
                                    ?.copyWith(color: theme.primaryColor),
                              ),
                              const Spacer(),
                              if (package.description != null)
                                Text(package.description!),
                              const Spacer(),
                              Text(package.latest),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          error: (e, s) => Container(),
          loading: () => Center(
            child: CircularProgressIndicator.adaptive(),
          ),
        );
  }
}
