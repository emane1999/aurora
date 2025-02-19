import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'app_language_provider.g.dart';

@riverpod
class AppLanguageState extends _$AppLanguageState {
  @override
  Locale build() {
    return Locale('en');
  }

  Future<void> fetchLocale() async {
    var prefs = await SharedPreferences.getInstance();
    String? languageCode = prefs.getString('language_code');
    if (languageCode != null) {
      state = Locale(languageCode);
    }
  }

  Future<void> changeLanguage(Locale type) async {
    var prefs = await SharedPreferences.getInstance();
    if (state != type) {
      state = type;
      await prefs.setString('language_code', type.languageCode);
    }
  }
}
