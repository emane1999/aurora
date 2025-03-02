import 'package:aurora/commentwidget/card_com.dart';
import 'package:aurora/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BankAccounts extends StatelessWidget {
  const BankAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    ColorFilter? colorFilter = ColorFilter.mode(
      Theme.of(context).colorScheme.primary,
      BlendMode.srcIn, // Color the SVG
    );
    return CardCom(
      children: [
        Text("Bank Accounts", style: Theme.of(context).textTheme.displaySmall),
        4.verticalSpace,
        Divider(
          color: BORDER_PRIMARY.light,
          indent: 2,
          endIndent: 2,
          height: 1,
        ),
        4.verticalSpace,
        Row(
          spacing: 8,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.perm_identity,
              color: Theme.of(context).colorScheme.primary,
            ),
            Center(
              child: Text(
                "Receiver Bank \nAccount",
                style: Theme.of(
                  context,
                ).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w500),
              ),
            ),
            Center(
              child: Text(
                "ABCD 1234 5678 \n9009",
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ),
            ),
          ],
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
          spacing: 8,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/Building.svg',
              colorFilter: colorFilter,
              width: 24.w,
              height: 24.w,
            ),
            Center(
              child: Text(
                "Receiver Bank \nAccount",
                style: Theme.of(
                  context,
                ).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w500),
              ),
            ),
            Center(
              child: Text(
                "ABCD 1234 5678 \n9009",
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
