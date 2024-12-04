// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homePageRoute,
      $splashPageRoute,
      $developerMenuPageRoute,
    ];

RouteBase get $homePageRoute => GoRouteData.$route(
      path: '/',
      name: 'home',
      factory: $HomePageRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'packages',
          name: 'PackagesView',
          factory: $PackagesViewPageRouteExtension._fromState,
        ),
      ],
    );

extension $HomePageRouteExtension on HomePageRoute {
  static HomePageRoute _fromState(GoRouterState state) => const HomePageRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $PackagesViewPageRouteExtension on PackagesViewPageRoute {
  static PackagesViewPageRoute _fromState(GoRouterState state) =>
      PackagesViewPageRoute(
        query: state.uri.queryParameters['query'],
        sort: state.uri.queryParameters['sort'],
      );

  String get location => GoRouteData.$location(
        '/packages',
        queryParams: {
          if (query != null) 'query': query,
          if (sort != null) 'sort': sort,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $splashPageRoute => GoRouteData.$route(
      path: '/splash',
      name: 'splash',
      factory: $SplashPageRouteExtension._fromState,
    );

extension $SplashPageRouteExtension on SplashPageRoute {
  static SplashPageRoute _fromState(GoRouterState state) =>
      const SplashPageRoute();

  String get location => GoRouteData.$location(
        '/splash',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $developerMenuPageRoute => GoRouteData.$route(
      path: '/developerMenu',
      name: 'developerMenu',
      factory: $DeveloperMenuPageRouteExtension._fromState,
    );

extension $DeveloperMenuPageRouteExtension on DeveloperMenuPageRoute {
  static DeveloperMenuPageRoute _fromState(GoRouterState state) =>
      const DeveloperMenuPageRoute();

  String get location => GoRouteData.$location(
        '/developerMenu',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
