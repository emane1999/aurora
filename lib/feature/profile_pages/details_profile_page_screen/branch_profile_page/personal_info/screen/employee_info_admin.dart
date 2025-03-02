import 'package:aurora/commentwidget/header_of_each_branch.dart';
import 'package:aurora/commentwidget/heading_all_text.dart';
import 'package:aurora/commentwidget/person_des.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_profile_page/personal_info/screen/b_TextField_reade.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_profile_page/personal_info/screen/b_textField_edit.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_profile_page/personal_info/screen/countries.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_profile_page/personal_info/screen/cupertino_picker.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_profile_page/personal_info/screen/gender_field.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_profile_page/personal_info/screen/marital_status.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_profile_page/personal_info/screen/mobile_number.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_profile_page/personal_info/screen/nationality.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmployeeInfoAdmin extends StatelessWidget {
  const EmployeeInfoAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController fullName = TextEditingController(text: "John Doe");
    TextEditingController position = TextEditingController(
      text: "Technical Lead",
    );
    TextEditingController employeeNumber = TextEditingController(text: "#8700");
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(.07.sh), // Set the height of the app bar
        child: HeaderOfEachBranch(
          title: 'Personal Info',
          preferredSize: Size.fromHeight(.07.sh),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: 16.w,
              end: 16.w,
              top: 24.w,
              bottom: 24.w,
            ),
            child: PersonDes(detail: 'Technical Lead', isshowicon: false),
          ),
          4.verticalSpace,
          Expanded(
            child: ListView(
              padding: EdgeInsetsDirectional.only(
                start: 16.w,
                end: 16.w,
                top: 12.w,
                bottom: 12.w,
              ),
              shrinkWrap: true,
              children: [
                BTextfieldEdit(
                  inputType: TextInputType.text,
                  hintText: "John Doe",
                  lable: "Full Name",
                  controller: fullName,
                  suffixIcon: Icon(
                    Icons.edit,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                  readOnly: false,
                ),
                12.verticalSpace,
                BTextfieldEdit(
                  inputType: TextInputType.text,
                  hintText: "Technical Lead",
                  lable: "Position",
                  controller: position,
                  suffixIcon: Icon(
                    Icons.edit,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                  readOnly: false,
                ),
                12.verticalSpace,
                BTextfieldEdit(
                  inputType: TextInputType.text,
                  hintText: "#8700",
                  lable: "Employee Number",
                  controller: employeeNumber,
                  suffixIcon: Icon(
                    Icons.edit,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                  readOnly: false,
                ),
                12.verticalSpace,
                GenderField(),
                12.verticalSpace,
                CupertinoPickers(),
                12.verticalSpace,
                MaritalStatus(),
                12.verticalSpace,
                MobileNumber(),
                16.verticalSpace,
                HeadingAllText(indexToSearch: 10),
                16.verticalSpace,
                BTextfieldEdit(
                  inputType: TextInputType.text,
                  hintText: "#87004829937",
                  lable: "ID Number",
                  // controller: TextEditingController(),
                  suffixIcon: Icon(
                    Icons.edit,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  readOnly: false,
                ),
                12.verticalSpace,
                Nationality(),
                12.verticalSpace,
                BTextfieldEdit(
                  inputType: TextInputType.text,
                  hintText: "enter your religion",
                  lable: "Religion",
                  // controller: TextEditingController(),
                  readOnly: false,
                ),
                16.verticalSpace,
                HeadingAllText(indexToSearch: 11),
                16.verticalSpace,
                BTextfieldEdit(
                  inputType: TextInputType.text,
                  hintText: "enter building number",
                  lable: "Building Number",
                  // controller: TextEditingController(),
                  readOnly: false,
                ),
                12.verticalSpace,
                BTextfieldEdit(
                  inputType: TextInputType.text,
                  hintText: "enter street name",
                  lable: "Street Name",
                  // controller: TextEditingController(),
                  readOnly: false,
                ),
                12.verticalSpace,
                BTextfieldEdit(
                  inputType: TextInputType.text,
                  hintText: "enter city name",
                  lable: "City",
                  // controller: TextEditingController(),
                  readOnly: false,
                ),
                12.verticalSpace,
                Countries(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
