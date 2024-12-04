import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// View routes imports
import 'package:pubstream/app/packages/presentation/package_home_view.dart';
import 'package:pubstream/app/packages/presentation/packages_view.dart';
import 'package:pubstream/app/developer_menu/presentation/page.dart';
import 'package:pubstream/app/home/presentation/page.dart';
import 'package:pubstream/app/splash/presentation/page.dart';

part 'app_router.g.dart';

@TypedGoRoute<HomePageRoute>(
  path: HomePageRoute.path,
  name: HomePageRoute.name,
  routes: [
    // Other routes nested under the home route

    TypedGoRoute<PackagesViewPageRoute>(
      path: PackagesViewPageRoute.path,
      name: PackagesViewPageRoute.name,
      routes: [
        TypedGoRoute<PackageHomeViewPageRoute>(
          path: PackageHomeViewPageRoute.path,
          name: PackageHomeViewPageRoute.name,
        ),
      ],
    ),
  ],
)
class HomePageRoute extends GoRouteData {
  static const path = '/';
  static const name = 'home';
  const HomePageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomePage();
}

// Other routes definations

enum PackageHomeViewTabs {
  readMe,
  changelog,
  installing,
  versions,
}

class PackageHomeViewPageRoute extends GoRouteData {
  static const path = ':packageName';
  static const name = 'PackageHomeView';
  const PackageHomeViewPageRoute({
    required this.packageName,
    this.version = 'latest',
    this.tab = PackageHomeViewTabs.readMe,
  });
  final String packageName;
  final String version;
  final PackageHomeViewTabs tab;
  @override
  Widget build(BuildContext context, GoRouterState state) => PackageHomeView(
        packageName: packageName,
        version: version,
        tab: tab,
      );
}

class PackagesViewPageRoute extends GoRouteData {
  static const path = 'packages';
  static const name = 'PackagesView';
  const PackagesViewPageRoute({this.query, this.sort});
  final String? query;
  final String? sort;
  @override
  Widget build(BuildContext context, GoRouterState state) => PackagesView(
        query: query,
        sort: sort,
      );
}

@TypedGoRoute<SplashPageRoute>(
  path: SplashPageRoute.path,
  name: SplashPageRoute.name,
)
class SplashPageRoute extends GoRouteData {
  static const path = '/splash';
  static const name = 'splash';
  const SplashPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const SplashPage();
}

@TypedGoRoute<DeveloperMenuPageRoute>(
  path: DeveloperMenuPageRoute.path,
  name: DeveloperMenuPageRoute.name,
)
class DeveloperMenuPageRoute extends GoRouteData {
  static const path = '/developerMenu';
  static const name = 'developerMenu';
  const DeveloperMenuPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const DeveloperMenuPage();
}
