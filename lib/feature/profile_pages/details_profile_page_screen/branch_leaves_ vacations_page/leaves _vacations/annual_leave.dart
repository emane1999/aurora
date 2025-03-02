import 'package:aurora/commentwidget/card_com.dart';
import 'package:aurora/commentwidget/details_requst.dart';
import 'package:aurora/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AnnualLeave extends StatelessWidget {
  final String name;
  const AnnualLeave({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return CardCom(
      children: [
        Text(
          name,
          style: Theme.of(
            context,
          ).textTheme.displayMedium?.copyWith(fontSize: 18.sp),
        ),
        4.verticalSpace,
        Divider(
          color: BORDER_PRIMARY.light,
          indent: 2,
          endIndent: 2,
          height: 1,
        ),
        4.verticalSpace,
        Row(
          spacing: 12,
          children: [
            Icon(
              Icons.calendar_today,
              color: Theme.of(context).colorScheme.primary,
            ),
            DetailsRequst(tite: 'Up to Date Balance:', subTite: '2.46 days'),
          ],
        ),
        Row(
          spacing: 12,
          children: [
            Icon(
              Icons.calendar_today,
              color: Theme.of(context).colorScheme.primary,
            ),
            DetailsRequst(tite: 'Leaves Used:', subTite: ' 0 days'),
          ],
        ),
        Row(
          spacing: 12,
          children: [
            Icon(
              Icons.calendar_today,
              color: Theme.of(context).colorScheme.primary,
            ),
            DetailsRequst(tite: 'Total Year Balance:', subTite: '5.27 days'),
          ],
        ),
      ],
    );
  }
}
