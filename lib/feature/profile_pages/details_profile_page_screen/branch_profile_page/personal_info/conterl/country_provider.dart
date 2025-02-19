import 'dart:convert';
import 'dart:async';

import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_profile_page/personal_info/conterl/selected_countryNotifier.dart';
import 'package:aurora/feature/verification_ALL_Page/verification/model/country.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fuzzy/data/result.dart';
import 'package:fuzzy/fuzzy.dart';

class CountryNotifier extends Notifier<List<Country>> {
  List<Country> allCountries = [];
  List<Country> filteredCountries = [];
  String currentQuery = '';
  late Fuzzy fuzzySearch;
  Timer? _debounceTimer;
  String selectedCategory = '';

  @override
  List<Country> build() {
    return [];
  }

  Future<void> loadCountries() async {
    try {
      String data = await rootBundle.loadString('assets/countries.json');
      List<dynamic> jsonData = json.decode(data);

      allCountries =
          jsonData.map((item) {
            return Country(
              item['name'],
              item['abbreviation'],
              'assets/flags/${item['flag']}',
              item['code'],
            );
          }).toList();

      fuzzySearch = Fuzzy(allCountries.map((country) => country.name).toList());

      state = allCountries;
      filteredCountries = allCountries;
    } catch (e) {
      print("Error loading countries: $e");
    }
  }

  void filterCountries(String query) {
    if (_debounceTimer?.isActive ?? false) {
      _debounceTimer?.cancel();
    }

    _debounceTimer = Timer(const Duration(milliseconds: 200), () {
      currentQuery = query;

      if (query.isEmpty) {
        filteredCountries = allCountries;
      } else {
        List<Result> results = fuzzySearch.search(query);

        filteredCountries =
            results
                .map(
                  (result) => allCountries.firstWhere(
                    (country) => country.name == result.item,
                  ),
                )
                .toList();
      }

      if (selectedCategory.isNotEmpty) {
        filteredCountries =
            filteredCountries
                .where(
                  (country) => country.name.toLowerCase().contains(
                    selectedCategory.toLowerCase(),
                  ),
                )
                .toList();
      }

      state = List.from(filteredCountries);
    });
  }

  void setCategoryFilter(String category) {
    selectedCategory = category;
    filterCountries(currentQuery);
  }

  void resetFilters() {
    selectedCategory = '';
    filterCountries('');
  }

  void selectCountry(Country country) {
    ref.read(selectedCountryProvider.notifier).selectCountry(country);
  }
}

final countryProvider = NotifierProvider<CountryNotifier, List<Country>>(() {
  return CountryNotifier();
});
