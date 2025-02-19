import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum Nationalites {
  American,
  Canadian,
  Indian,
  British,
  Australian,
  German,
  French,
  Japanese,
  Chinese,
  Brazilian,
}

class Nationality extends StatefulWidget {
  const Nationality({super.key});

  @override
  State<Nationality> createState() => _NationalityState();
}

class _NationalityState extends State<Nationality> {
  Nationalites? selectedNationalites;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Nationality",
          style: Theme.of(context).textTheme.labelSmall,
        ),
        8.verticalSpace,
        Center(
          child: DropdownButtonHideUnderline(
            child: DropdownButton2<Nationalites>(
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
                  'choose your nationality',
                  style: Theme.of(context).inputDecorationTheme.hintStyle,
                ),
              ),
              items: Nationalites.values
                  .map((Nationalites gender) => DropdownMenuItem<Nationalites>(
                        value: gender,
                        child: Text(
                          gender.toString().split('.').last,
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.w400,
                              ),
                        ),
                      ))
                  .toList(),
              value: selectedNationalites,
              onChanged: (Nationalites? value) {
                setState(() {
                  selectedNationalites = value;
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
                  border: selectedNationalites != null
                      ? Border.all(
                          color: Theme.of(context).colorScheme.tertiary,
                        )
                      : Border.all(
                          color: Colors.transparent,
                        ),
                  borderRadius: BorderRadius.circular(4),
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
