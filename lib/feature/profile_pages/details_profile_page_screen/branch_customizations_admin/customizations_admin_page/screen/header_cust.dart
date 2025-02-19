import 'package:aurora/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderCust extends StatelessWidget {
  final String maintitile;
  final String subtitle;
  final String dec;
  const HeaderCust({
    super.key,
    required this.maintitile,
    required this.subtitle,
    required this.dec,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          maintitile,
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        12.verticalSpace,
        Divider(color: BORDER_PRIMARY.light, thickness: 1, endIndent: 1),
        12.verticalSpace,
        Text(
          subtitle,
          style: Theme.of(
            context,
          ).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w400),
        ),
        4.verticalSpace,
        Text(
          dec,
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
            fontWeight: FontWeight.w400,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
        24.verticalSpace,
      ],
    );
  }
}
