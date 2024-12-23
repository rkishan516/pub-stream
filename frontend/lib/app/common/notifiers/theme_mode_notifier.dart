import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:pubstream/app/common/services/shared_perferences_service.dart';

part 'theme_mode_notifier.g.dart';

@riverpod
class ThemeModeNotifier extends _$ThemeModeNotifier {
  final _sharedPrefKey = 'theme_mode';

  @override
  ThemeMode build() {
    final savedTheme =
        ref.read(sharedPerferencesServiceProvider).getString(_sharedPrefKey);
    try {
      if (savedTheme == null) return ThemeMode.system;
      return ThemeMode.values.byName(savedTheme);
    } catch (e) {
      return ThemeMode.system;
    }
  }

  void updateThemeMode(ThemeMode mode) {
    state = mode;
    ref
        .read(sharedPerferencesServiceProvider)
        .setString(_sharedPrefKey, mode.name);
  }
}
