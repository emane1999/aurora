import 'dart:io';

import 'package:aurora/commentwidget/b_button.dart';
import 'package:aurora/commentwidget/b_sec_button.dart';
import 'package:aurora/commentwidget/header_of_each_branch.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_customizations_admin/customizations_admin_page/screen/brand_color.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_customizations_admin/customizations_admin_page/screen/branding_logo.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_customizations_admin/customizations_admin_page/screen/custom_color.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_customizations_admin/customizations_admin_page/screen/font_family.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_customizations_admin/customizations_admin_page/screen/header_cust.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_customizations_admin/customizations_admin_page/screen/slider_shape_widget.dart';
import 'package:aurora/theme/all_color.dart';
import 'package:aurora/theme/colors.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CustomizationsAdmin extends StatefulWidget {
  const CustomizationsAdmin({super.key});

  @override
  State<CustomizationsAdmin> createState() => _CustomizationsAdminState();
}

class _CustomizationsAdminState extends State<CustomizationsAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(.07.sh),
        child: HeaderOfEachBranch(
          title: 'Customizations',
          preferredSize: Size.fromHeight(.07.sh),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsetsDirectional.only(
          top: 24,
          start: 16,
          end: 16,
          bottom: 24,
        ),
        children: [
          HeaderCust(
            maintitile: "Branding",
            subtitle: "Logo",
            dec: "Select or customize your branding logo.",
          ),
          BrandingLogo(),
          HeaderCust(
            maintitile: "Appearance",
            subtitle: "Brand Color",
            dec: "Select or customize your brand color.",
          ),
          BrandColor(),
          12.verticalSpace,
          Divider(color: BORDER_PRIMARY.light, thickness: 1, endIndent: 1),
          12.verticalSpace,
          CustomColor(),
          48.verticalSpace,
          HeaderCust(
            maintitile: "Text & Styles",
            subtitle: "Font Family",
            dec: "Select or customize your font family.",
          ),
          FontFamily(),
          32.verticalSpace,
          Text(
            "Font Size",
            style: Theme.of(
              context,
            ).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w400),
          ),
          4.verticalSpace,
          Text(
            "Select or customize your font size.",
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.w400,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
          24.verticalSpace,
          SliderShapeWidget(),
          24.verticalSpace,
          12.verticalSpace,
          Divider(color: BORDER_PRIMARY.light, thickness: 1, endIndent: 1),
          12.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              BSecButton(
                enabled: true,
                onPressed: () {},
                text: "Save",
                style: Theme.of(context).filledButtonTheme.style?.copyWith(
                  backgroundColor: WidgetStateProperty.all(NAVY_100),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
