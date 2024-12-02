import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pubstream/app/common/notifiers/theme_mode_notifier.dart';
import 'package:pubstream/app/routes/notifiers/app_router.dart';
import 'package:pubstream/app/routes/notifiers/app_routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: FlexThemeData.light(
        scheme: FlexScheme.blueM3,
        useMaterial3: true,
      ),
      darkTheme: FlexThemeData.dark(
        scheme: FlexScheme.blueM3,
        useMaterial3: true,
      ),
      themeMode: ref.watch(themeModeNotifierProvider),
      routerConfig: ref.watch(navigatorProvider),
      builder: (context, child) {
        return ResponsiveBreakpoints.builder(
          breakpoints: [
            const Breakpoint(start: 0, end: 450, name: MOBILE),
            const Breakpoint(start: 451, end: 800, name: TABLET),
            const Breakpoint(start: 801, end: 1920, name: DESKTOP),
            const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
          ],
          child: _VersionOverlay(
            child: child!,
          ),
        );
      },
    );
  }
}

class _VersionOverlay extends ConsumerWidget {
  final Widget child;

  const _VersionOverlay({
    required this.child,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        child,
        if (kDebugMode)
          SafeArea(
            child: Align(
              alignment: const Alignment(1, -0.95),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    final router = ref.read(navigatorProvider);
                    final lastMatch =
                        router.routerDelegate.currentConfiguration.last;
                    final matchList = lastMatch is ImperativeRouteMatch
                        ? lastMatch.matches
                        : router.routerDelegate.currentConfiguration;
                    final String location = matchList.uri.toString();
                    if (!location.contains(DeveloperMenuPageRoute.name)) {
                      router.pushNamed(DeveloperMenuPageRoute.name);
                    }
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 5, bottom: 10),
                    child: RotatedBox(
                      quarterTurns: 1,
                      child: ColoredBox(
                        color: Colors.black,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 1,
                          ),
                          child: Text(
                            'Dev',
                            style: TextStyle(fontSize: 11),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
