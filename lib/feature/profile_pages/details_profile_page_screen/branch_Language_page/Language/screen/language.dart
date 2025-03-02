import 'package:aurora/commentwidget/b_button.dart';
import 'package:aurora/commentwidget/b_sec_button.dart';
import 'package:aurora/commentwidget/header_of_each_branch.dart';
import 'package:aurora/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  String? _selectedLanguage = "";
  @override
  Widget build(BuildContext context) {
    List<String> ofLanguage = [
      "English",
      "Arabic",
      "Spanish",
      "French",
      "German",
      "Italian",
      "Chinese",
      "German",
      "Italian",
      "Chinese",
      "German",
      "Italian",
      "Chinese",
      "German",
    ];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(.07.sh),
        child: HeaderOfEachBranch(
          title: 'Language',
          preferredSize: Size.fromHeight(.07.sh),
        ),
      ),
      body: Column(
        children: [
          24.verticalSpace,
          Expanded(
            child: RawScrollbar(
              thickness: 4,
              padding: EdgeInsets.only(left: 3, right: 8.w),
              mainAxisMargin: 200,
              thumbColor: Theme.of(context).colorScheme.onSurfaceVariant,
              thumbVisibility: true,
              radius: Radius.circular(4),
              child: ListView(
                shrinkWrap: true,
                children: List.generate(ofLanguage.length, (index) {
                  return RadioListTile<String>(
                    activeColor: Theme.of(context).colorScheme.onSecondary,
                    title: Text(
                      ofLanguage[index],
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    value: ofLanguage[index],
                    groupValue: _selectedLanguage,
                    onChanged: (String? value) {
                      setState(() {
                        _selectedLanguage = value;
                      });
                    },
                  );
                }),
              ),
            ),
          ),
          Container(height: 1, width: 1.0.sw, color: BORDER_PRIMARY.light),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              top: 24,
              end: 16,
              bottom: 24,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BSecButton(
                  style: Theme.of(context).filledButtonTheme.style?.copyWith(
                    backgroundColor: WidgetStateProperty.all(
                      Theme.of(context).brightness == Brightness.dark
                          ? Theme.of(context).colorScheme.tertiary
                          // Dark mode background color
                          : Theme.of(context).colorScheme.onSecondary,
                    ),
                  ),
                  onPressed: () {},
                  enabled: true,
                  text: "Save",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
