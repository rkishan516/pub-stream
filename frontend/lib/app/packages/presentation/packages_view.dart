import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pubstream/app/packages/notifiers/packages_view_notifier.dart';
import 'package:pubstream/app/routes/notifiers/app_router.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PackagesView extends ConsumerWidget {
  const PackagesView({super.key, this.query, this.sort});
  final String? query;
  final String? sort;

  static PackagesView of(BuildContext context) {
    final view = mayBeOf(context);
    assert(view != null);
    return view!;
  }

  static PackagesView? mayBeOf(BuildContext context) {
    return context.findAncestorWidgetOfExactType<PackagesView>();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              _PackageSearchField(),
              SizedBox(height: 50),
              Divider(),
              SizedBox(height: 50),
              Text(
                'Packages',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              SizedBox(height: 50),
              _Packages(),
            ],
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
    final view = PackagesView.of(context);
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
        initialValue: view.query,
        style: theme.textTheme.titleSmall,
        onFieldSubmitted: (query) => PackagesViewPageRoute(
          query: query,
          sort: view.sort,
        ).go(context),
      ),
    );
  }
}

class _Packages extends ConsumerWidget {
  const _Packages();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final view = PackagesView.of(context);
    final theme = Theme.of(context);
    return ref
        .watch(packagesNotifierProvider(query: view.query, sort: view.sort))
        .when(
          data: (state) {
            if (state.packages.packages.isEmpty) {
              return Expanded(
                child: Align(
                  alignment: const FractionalOffset(0.5, 0.4),
                  child: Text(
                    'No package found with given filter',
                    style: theme.textTheme.titleLarge
                        ?.copyWith(color: Colors.redAccent),
                  ),
                ),
              );
            }
            return Center(
              child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 40),
                shrinkWrap: true,
                gridDelegate: ResponsiveGridDelegate(
                  childAspectRatio: 2,
                  minCrossAxisExtent: 400,
                ),
                itemCount: state.packages.count,
                itemBuilder: (context, index) {
                  final package = state.packages.packages.elementAt(index);
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
            );
          },
          error: (e, s) => Container(),
          loading: () => Center(
            child: CircularProgressIndicator.adaptive(),
          ),
        );
  }
}
