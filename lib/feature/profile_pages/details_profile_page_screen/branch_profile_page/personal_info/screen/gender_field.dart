import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum Gender { Male, Female }

class GenderField extends StatefulWidget {
  final Gender? selectedGenderProfile;
  const GenderField({this.selectedGenderProfile});
  @override
  State<GenderField> createState() => _GenderFieldState();
}

class _GenderFieldState extends State<GenderField> {
  Gender? selectedGender;

  @override
  void initState() {
    selectedGender = widget.selectedGenderProfile;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Gender",
          style: Theme.of(context).textTheme.labelSmall,
        ),
        8.verticalSpace,
        Center(
          child: DropdownButtonHideUnderline(
            child: DropdownButton2<Gender>(
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
                  'Select Gender',
                  style: Theme.of(context).inputDecorationTheme.hintStyle,
                ),
              ),
              items: Gender.values
                  .map((Gender gender) => DropdownMenuItem<Gender>(
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
              value: selectedGender,
              onChanged: (Gender? value) {
                setState(() {
                  selectedGender = value;
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
                  border: selectedGender != null
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
