import 'package:aurora/feature/verification_ALL_Page/verification/model/country.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectedCountryNotifier extends StateNotifier<Country?> {
  SelectedCountryNotifier() : super(null);

  void selectCountry(Country country) {
    state = country;
  }
}

final selectedCountryProvider =
    StateNotifierProvider<SelectedCountryNotifier, Country?>((ref) {
      return SelectedCountryNotifier();
    });
