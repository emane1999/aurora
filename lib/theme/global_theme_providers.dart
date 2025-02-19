import 'package:aurora/shared_prefs/app_shared_prefs.dart';
import 'package:aurora/theme/global_theme.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'global_theme_providers.g.dart';

@riverpod
GlobalThemData globalThemData(ref) {
  return GlobalThemData();
}

@riverpod
class ThemeState extends _$ThemeState {
  @override
  ThemeMode build() {
    return AppSharedPrefs().themeMode();
  }

  ThemeMode getTheme() {
    return state;
  }

  void setTheme({ThemeMode? mode}) {
    state =
        mode ?? (state == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark);
    AppSharedPrefs().updateThemeMode(state);
  }
}
