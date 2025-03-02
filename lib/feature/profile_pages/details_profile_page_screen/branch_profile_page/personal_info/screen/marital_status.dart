import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:collection/collection.dart';

enum MaritalStatu { single, married, divorced, widowed }

class MaritalStatus extends StatefulWidget {
  final String? selected;
  const MaritalStatus({super.key, this.selected});

  @override
  State<MaritalStatus> createState() => _MaritalStatusState();
}

class _MaritalStatusState extends State<MaritalStatus> {
  MaritalStatu? selectedMaritalStatu;
  @override
  void initState() {
    selectedMaritalStatu = MaritalStatu.values.firstWhereOrNull((e) {
      return e.name == widget.selected?.toLowerCase();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Marital Status",
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
            fontFamily: 'AllRoundGothic',
            fontWeight: FontWeight.w600,
          ),
        ),
        8.verticalSpace,
        Center(
          child: DropdownButtonHideUnderline(
            child: DropdownButton2<MaritalStatu>(
              iconStyleData: IconStyleData(
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 24,
                iconEnabledColor: Theme.of(context).colorScheme.primary,
              ),
              isExpanded: true,
              hint: Padding(
                padding: const EdgeInsetsDirectional.all(8),
                child: Text(
                  'choose your marital status',
                  style: Theme.of(context).inputDecorationTheme.hintStyle,
                ),
              ),
              items:
                  MaritalStatu.values
                      .map(
                        (MaritalStatu maritalSt) =>
                            DropdownMenuItem<MaritalStatu>(
                              value: maritalSt,
                              child: Text(
                                maritalSt.toString().split('.').last,
                                style: Theme.of(
                                  context,
                                ).textTheme.labelMedium?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onSecondary,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                      )
                      .toList(),
              value: selectedMaritalStatu,
              onChanged: (MaritalStatu? value) {
                print(value);
                setState(() {
                  selectedMaritalStatu = value;
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
                width: 2.sw,
                decoration: BoxDecoration(
                  border:
                      selectedMaritalStatu != null
                          ? Border.all(
                            color: Theme.of(context).colorScheme.primary,
                          )
                          : Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(4),
                  shape: BoxShape.rectangle,
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
