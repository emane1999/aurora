import 'package:aurora/commentwidget/card_com.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_contract_page/contract/model/contract_response_model.dart';
import 'package:aurora/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PartiesWidget extends StatelessWidget {
  final Parties? PartiesData;
  const PartiesWidget({super.key, this.PartiesData});

  @override
  Widget build(BuildContext context) {
    return CardCom(
      children: [
        Text("Parties", style: Theme.of(context).textTheme.displaySmall),
        4.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 32,
          children: [
            Column(
              spacing: 8,
              children: [
                Icon(
                  Icons.perm_identity,
                  color: Theme.of(context).colorScheme.primary,
                ),
                Text(
                  "Employee",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  PartiesData?.employee ?? '',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
              ],
            ),
            Container(
              width: 2,
              height: 85.h,
              color: BORDER_PRIMARY.light,
              margin: EdgeInsets.symmetric(vertical: 2),
            ),
            Column(
              spacing: 8,
              children: [
                SvgPicture.asset(
                  'assets/images/Building.svg',
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.primary,
                    BlendMode.srcIn, // Color the SVG
                  ),
                  width: 24.w,
                  height: 24.w,
                ),
                Text(
                  "Organization",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  PartiesData?.organization ?? '',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
