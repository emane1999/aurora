import 'package:aurora/commentwidget/b_sec_button.dart';
import 'package:aurora/commentwidget/card_com.dart';
import 'package:aurora/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Payslip extends StatelessWidget {
  const Payslip({super.key});

  @override
  Widget build(BuildContext context) {
    return CardCom(
      children: [
        Text("Payslip", style: Theme.of(context).textTheme.displaySmall),
        4.verticalSpace,
        Divider(
          color: BORDER_PRIMARY.light,
          indent: 2,
          endIndent: 2,
          height: 1,
        ),
        _download(context),
        4.verticalSpace,
        Divider(
          color: BORDER_PRIMARY.light,
          indent: 2,
          endIndent: 2,
          height: 1,
        ),
        _download(context),
        4.verticalSpace,
        Divider(
          color: BORDER_PRIMARY.light,
          indent: 2,
          endIndent: 2,
          height: 1,
        ),
        _download(context),
      ],
    );
  }
}

Widget _download(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      4.verticalSpace,
      Text(
        "Salary of July 2024",
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
          fontWeight: FontWeight.w600,
          color: Theme.of(context).colorScheme.onSecondary,
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Download",
            style: Theme.of(
              context,
            ).textTheme.labelSmall?.copyWith(fontWeight: FontWeight.w600),
          ),
          8.horizontalSpace,
          Icon(
            Icons.download,
            color: Theme.of(context).colorScheme.primary,
            size: 24,
          ),
          Spacer(),
          BSecButton(text: 'View', enabled: true, onPressed: () {}),
        ],
      ),
    ],
  );
}
