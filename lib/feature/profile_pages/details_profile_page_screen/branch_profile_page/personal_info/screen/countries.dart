import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum Countres {
  UnitedStates,
  Canada,
  India,
  UnitedKingdom,
  Australia,
  Germany,
  France,
  Japan,
  China,
  Brazil,
  SouthKorea,
  Mexico,
  Russia,
  Italy,
  Spain,
  SouthAfrica,
  Argentina,
  Egypt,
  Turkey,
  SaudiArabia,
}

class Countries extends StatefulWidget {
  final String? country;
  const Countries({super.key, this.country});

  @override
  State<Countries> createState() => _CountriesState();
}

class _CountriesState extends State<Countries> {
  Countres? countresStatu;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Country",
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
            fontFamily: 'AllRoundGothic',
            fontWeight: FontWeight.w600,
          ),
        ),
        8.verticalSpace,
        Center(
          child: DropdownButtonHideUnderline(
            child: DropdownButton2<Countres>(
              iconStyleData: IconStyleData(
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 24,
                iconEnabledColor: Theme.of(context).colorScheme.onSecondary,
              ),
              isExpanded: true,
              hint: Padding(
                padding: const EdgeInsetsDirectional.all(8),
                child: Text(
                  'choose your country',
                  style: Theme.of(context).inputDecorationTheme.hintStyle,
                ),
              ),
              items:
                  Countres.values
                      .map(
                        (Countres countres) => DropdownMenuItem<Countres>(
                          value: countres,
                          child: Text(
                            countres.toString().split('.').last,
                            style: Theme.of(
                              context,
                            ).textTheme.labelMedium?.copyWith(
                              color: Theme.of(context).colorScheme.onSecondary,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      )
                      .toList(),
              value: countresStatu,
              onChanged: (Countres? value) {
                setState(() {
                  countresStatu = value;
                });
              },
              dropdownStyleData: DropdownStyleData(
                elevation: 0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Theme.of(context).colorScheme.surfaceContainerHigh,
                ),
              ),
              buttonStyleData: ButtonStyleData(
                padding: EdgeInsetsDirectional.all(4),
                width: 1.sw,
                decoration: BoxDecoration(
                  border:
                      countresStatu != null
                          ? Border.all(
                            color: Theme.of(context).colorScheme.primary,
                          )
                          : Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(4),
                  color: Theme.of(context).colorScheme.surfaceContainerHigh,
                ),
              ),
              menuItemStyleData: MenuItemStyleData(height: .05.sh),
            ),
          ),
        ),
      ],
    );
  }
}
