import 'package:aurora/commentwidget/card_com.dart';
import 'package:aurora/commentwidget/details_requst.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_finance%20_salary_page/finance_salary/screen/expandable_wideg.dart';
import 'package:aurora/theme/colors.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DeductionsPerMonth extends StatelessWidget {
  const DeductionsPerMonth({super.key});

  @override
  Widget build(BuildContext context) {
    return CardCom(
      children: [
        Text(
          "Deductions per Month",
          style: Theme.of(context).textTheme.displaySmall,
        ),
        4.verticalSpace,
        Divider(
          color: BORDER_PRIMARY.light,
          indent: 2,
          endIndent: 2,
          height: 1,
        ),
        Text(
          "2024",
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: Theme.of(context).colorScheme.onSecondary,
          ),
        ),
        DetailsRequst(tite: 'January:', subTite: 'No Deductions.'),
        DetailsRequst(tite: 'February:', subTite: 'No Deductions.'),
        DetailsRequst(tite: 'March:', subTite: 'No Deductions.'),
        _DetailsdeductionNumder(context: context, number: 600),
        ExpandableWideg(number: 600),
        DetailsRequst(tite: 'May:', subTite: 'No Deductions.'),
        _DetailsdeductionNumder(context: context, number: 300),
        ExpandableWideg(number: 300),
        DetailsRequst(tite: 'July:', subTite: '_ __ _'),
        DetailsRequst(tite: 'August:', subTite: '_ __ _'),
        DetailsRequst(tite: 'September:', subTite: '_ __ _'),
      ],
    );
  }
}

Widget _DetailsdeductionNumder({
  required BuildContext context,
  required int number,
}) {
  return Row(
    children: [
      DetailsRequst(tite: 'June:', subTite: 'Deductions on attendance:.'),
      Text(
        "-\$${number}",
        style: Theme.of(context).textTheme.labelMedium?.copyWith(
          color: Theme.of(context).colorScheme.error,
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}
