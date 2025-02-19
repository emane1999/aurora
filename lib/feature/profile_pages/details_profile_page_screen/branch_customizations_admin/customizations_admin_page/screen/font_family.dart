import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FontFamily extends StatefulWidget {
  const FontFamily({super.key});

  @override
  _FontFamilyState createState() => _FontFamilyState();
}

class _FontFamilyState extends State<FontFamily> {
  String? selectedFontFamily; // To hold the selected font family

  @override
  Widget build(BuildContext context) {
    List<String> fontFamilyList = [
      'Roboto',
      'Arial',
      'Times New Roman',
      'Courier New',
      'Georgia',
      'Helvetica',
      'Comic Sans MS',
      'Lobster'
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Document Type",
          style: Theme.of(context).textTheme.labelSmall,
        ),
        8.verticalSpace,
        Center(
          child: DropdownButtonHideUnderline(
            child: DropdownButton2<String>(
              iconStyleData: IconStyleData(
                icon: Icon(
                  Icons.arrow_drop_down,
                ),
                iconSize: 24,
                iconEnabledColor: Theme.of(context).colorScheme.onTertiary,
              ),
              isExpanded: true,
              hint: Padding(
                padding: const EdgeInsetsDirectional.all(8),
                child: Text(
                  'Choose your font family',
                  style: Theme.of(context).inputDecorationTheme.hintStyle,
                ),
              ),
              items: fontFamilyList.map((fontFamily) {
                return DropdownMenuItem<String>(
                  value: fontFamily,
                  child: Text(
                    fontFamily,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                );
              }).toList(),
              value: selectedFontFamily, // Bind the selected value here
              onChanged: (String? value) {
                setState(() {
                  selectedFontFamily = value; // Update the selected value
                });
                print(value); // You can handle the font change here
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
                  border: selectedFontFamily != null
                      ? Border.all(
                          color: Theme.of(context).colorScheme.tertiary,
                        )
                      : Border.all(
                          color: Colors.transparent,
                        ),
                  borderRadius: BorderRadius.circular(4),
                  shape: BoxShape.rectangle,
                  color: Theme.of(context).colorScheme.surfaceContainerHigh,
                ),
              ),
              menuItemStyleData: MenuItemStyleData(
                height: .05.sh,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
