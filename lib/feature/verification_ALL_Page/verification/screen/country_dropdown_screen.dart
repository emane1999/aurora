import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_profile_page/personal_info/conterl/country_provider.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_profile_page/personal_info/conterl/selected_countryNotifier.dart';
import 'package:aurora/feature/verification_ALL_Page/verification/model/country.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class CountryDropdown extends ConsumerStatefulWidget {
  @override
  _CountryDropdownState createState() => _CountryDropdownState();
}

class _CountryDropdownState extends ConsumerState<CountryDropdown> {
  TextEditingController _searchController = TextEditingController();
  TextEditingController _mobileNumberController = TextEditingController();

  late List<Country> _filteredCountries;
  late String _currentQuery;

  @override
  void initState() {
    super.initState();
    _filteredCountries = [];
    _currentQuery = '';

    Future.microtask(() {
      ref.read(countryProvider.notifier).loadCountries();
    });

    _searchController.addListener(() {
      _filterCountries();
    });
  }

  void _filterCountries() {
    final query = _searchController.text;

    if (_currentQuery != query) {
      _currentQuery = query;
      ref.read(countryProvider.notifier).filterCountries(query);
    }
  }

  Future<void> _showCountryDialog(
    BuildContext context,
    List<Country> countries,
  ) async {
    await WoltModalSheet.show(
      modalTypeBuilder: (context) => WoltModalType.dialog(),
      context: context,
      pageListBuilder: (context) {
        return [
          SliverWoltModalSheetPage(
            isTopBarLayerAlwaysVisible: true,
            navBarHeight: .17.sh,
            topBarTitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Select a Country',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    style: Theme.of(context).textTheme.labelSmall,
                    controller: _searchController,
                    decoration: InputDecoration(
                      labelText: 'Search Country',
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ],
            ),
            mainContentSliversBuilder: (context) {
              return [
                Consumer(
                  builder: (context, watch, _) {
                    final filteredCountries = watch.watch(countryProvider);
                    return SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: filteredCountries.length,
                        (context, index) {
                          final country = filteredCountries[index];
                          return ListTile(
                            leading: Image.asset(
                              country.flagPath,
                              width: 30,
                              height: 20,
                            ),
                            title: Text(
                              country.name,
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                            onTap: () {
                              ref
                                  .read(selectedCountryProvider.notifier)
                                  .selectCountry(country);
                              Navigator.of(context).pop(country);
                            },
                          );
                        },
                      ),
                    );
                  },
                ),
              ];
            },
          ),
        ];
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final countries = ref.watch(countryProvider);
    final selectedCountry = ref.watch(selectedCountryProvider);

    if (countries.isEmpty) {
      return Center(child: CircularProgressIndicator());
    }

    return Container(
      padding: EdgeInsetsDirectional.all(8.0.w),
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Row(
        children: [
          selectedCountry == null
              ? Row(
                children: [
                  Image.asset('assets/flags/jo.png', width: 20.w, height: 13.w),
                  8.horizontalSpace,
                  Text("+962", style: Theme.of(context).textTheme.labelSmall),
                ],
              )
              : Row(
                children: [
                  Image.asset(
                    selectedCountry!.flagPath,
                    width: 20.w,
                    height: 13.w,
                  ),
                  8.horizontalSpace,
                  Text(
                    "${selectedCountry.code}",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
          8.horizontalSpace,
          InkWell(
            onTap: () {
              _showCountryDialog(context, countries);
            },
            child: Icon(
              Icons.arrow_drop_down,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
