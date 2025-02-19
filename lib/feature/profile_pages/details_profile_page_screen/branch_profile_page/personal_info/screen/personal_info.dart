import 'package:aurora/commentwidget/header_of_each_branch.dart';
import 'package:aurora/commentwidget/heading_all_text.dart';
import 'package:aurora/commentwidget/person_des.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_profile_page/personal_info/conterl/countr_provider.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_profile_page/personal_info/screen/b_TextField_reade.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_profile_page/personal_info/screen/b_textField_edit.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_profile_page/personal_info/screen/countries.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_profile_page/personal_info/screen/cupertino_picker.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_profile_page/personal_info/screen/gender_field.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_profile_page/personal_info/screen/marital_status.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_profile_page/personal_info/screen/mobile_number.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_profile_page/personal_info/screen/nationality.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(.10.sh), // Set the height of the app bar
        child: HeaderOfEachBranch(
          title: 'Personal Info',
          preferredSize: Size.fromHeight(.10.sh),
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
            child: Consumer(
              builder: (context, ref, child) {
                final data = ref.watch(getProfileDataProvider('3'));
                return data.when(
                  data: (data) {
                    print('data $data');
                    return ListView(
                      padding: EdgeInsetsDirectional.only(
                        start: 16.w,
                        end: 16.w,
                        top: 12.w,
                        bottom: 12.w,
                      ),
                      shrinkWrap: true,
                      children: [
                        BTextfieldReade(
                          inputType: TextInputType.text,
                          hintText: "John Doe",
                          lable: "Full Name",
                          controller: TextEditingController(
                            text: data?.fullName,
                          ),
                          suffixIcon: Icon(Icons.lock_outline),
                          readOnly: true,
                        ),
                        12.verticalSpace,
                        BTextfieldReade(
                          inputType: TextInputType.text,
                          hintText: data?.position ?? "Technical Lead",
                          lable: "Position",
                          controller: TextEditingController(
                            text: data?.position,
                          ),
                          suffixIcon: Icon(Icons.lock_outline),
                          readOnly: true,
                        ),
                        12.verticalSpace,
                        BTextfieldReade(
                          inputType: TextInputType.text,
                          hintText: "#8700",
                          lable: "Employee Number",
                          controller: TextEditingController(
                            text: data?.employeeNumber,
                          ),
                          suffixIcon: Icon(Icons.lock_outline),
                          readOnly: true,
                        ),
                        12.verticalSpace,
                        GenderField(
                          selectedGenderProfile:
                              data?.gender == ''
                                  ? null
                                  : data?.gender == 'Male'
                                  ? Gender.Male
                                  : Gender.Female,
                        ),
                        12.verticalSpace,
                        CupertinoPickers(
                          dateTime:
                              data!.birthday.isNotEmpty
                                  ? DateTime.parse(data.birthday)
                                  : null,
                        ),
                        12.verticalSpace,
                        MaritalStatus(selected: data.maritalStatus),
                        12.verticalSpace,
                        MobileNumber(),
                        16.verticalSpace,
                        HeadingAllText(indexToSearch: 10),
                        16.verticalSpace,
                        BTextfieldEdit(
                          inputType: TextInputType.text,
                          hintText: "#87004829937",
                          lable: "ID Number",
                          controller: TextEditingController(
                            text: data?.idNumber,
                          ),
                          suffixIcon: Icon(Icons.lock_outline),
                          readOnly: true,
                        ),
                        12.verticalSpace,
                        Nationality(),
                        12.verticalSpace,
                        BTextfieldEdit(
                          inputType: TextInputType.text,
                          hintText: "enter your religion",
                          lable: "Religion",
                          controller: TextEditingController(
                            text: data?.religion,
                          ),
                          readOnly: false,
                        ),
                        16.verticalSpace,
                        HeadingAllText(indexToSearch: 11),
                        16.verticalSpace,
                        BTextfieldEdit(
                          inputType: TextInputType.text,
                          hintText: "enter building number",
                          lable: "Building Number",
                          controller: TextEditingController(
                            text: data?.buildingNumber,
                          ),
                          readOnly: false,
                        ),
                        12.verticalSpace,
                        BTextfieldEdit(
                          inputType: TextInputType.text,
                          hintText: "enter street name",
                          lable: "Street Name",
                          controller: TextEditingController(
                            text: data?.streetName,
                          ),
                          readOnly: false,
                        ),
                        12.verticalSpace,
                        BTextfieldEdit(
                          inputType: TextInputType.text,
                          hintText: "enter city name",
                          lable: "City",
                          controller: TextEditingController(text: data?.city),
                          readOnly: false,
                        ),
                        12.verticalSpace,
                        Countries(country: data.country),
                      ],
                    );
                  },
                  loading: () {
                    return CircularProgressIndicator();
                  },
                  error: (error, stackTrace) => Text(error.toString()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
