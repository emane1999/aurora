import 'dart:ui';

import 'package:aurora/commentwidget/card_com.dart';
import 'package:aurora/commentwidget/details_requst.dart';
import 'package:aurora/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Salary extends StatefulWidget {
  const Salary({super.key});

  @override
  State<Salary> createState() => _SalaryState();
}

class _SalaryState extends State<Salary> {
  bool _isIconVisible = true;
  void _toggleIconVisibility() {
    setState(() {
      _isIconVisible = !_isIconVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CardCom(
      children: [
        Row(
          children: [
            Text("Salary", style: Theme.of(context).textTheme.displaySmall),
            Spacer(),
            IconButton(
              onPressed: () {
                _toggleIconVisibility();
              },
              icon:
                  _isIconVisible
                      ? Icon(
                        Icons.visibility_off,
                        color: Theme.of(context).colorScheme.primary,
                      )
                      : Icon(
                        Icons.visibility,
                        color: Theme.of(context).colorScheme.primary,
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
        _isIconVisible
            ? ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 5),
              child: Column(
                spacing: 12,
                children: [
                  Row(
                    spacing: 12,
                    children: [
                      SvgPicture.asset(
                        'assets/images/currencyCoinDollar.svg',
                        width: 24.w,
                        height: 24.w,
                      ),
                      DetailsRequst(tite: 'Total Salary:', subTite: '\$2000'),
                    ],
                  ),
                  Row(
                    spacing: 12,
                    children: [
                      SvgPicture.asset(
                        'assets/images/discountCircle.svg',
                        width: 24.w,
                        height: 24.w,
                      ),
                      DetailsRequst(
                        tite: 'Social Security:',
                        subTite: '7% - 16%',
                      ),
                    ],
                  ),
                  Row(
                    spacing: 12,
                    children: [
                      SvgPicture.asset(
                        'assets/images/receiptLines.svg',
                        width: 24.w,
                        height: 24.w,
                      ),
                      DetailsRequst(tite: 'Basic Salary:', subTite: '\$1860'),
                    ],
                  ),
                ],
              ),
            )
            : Column(
              spacing: 12,
              children: [
                Row(
                  spacing: 12,
                  children: [
                    SvgPicture.asset(
                      'assets/images/currencyCoinDollar.svg',
                      width: 24.w,
                      height: 24.w,
                    ),
                    DetailsRequst(tite: 'Total Salary:', subTite: '\$2000'),
                  ],
                ),
                Row(
                  spacing: 12,
                  children: [
                    SvgPicture.asset(
                      'assets/images/discountCircle.svg',
                      width: 24.w,
                      height: 24.w,
                    ),
                    DetailsRequst(
                      tite: 'Social Security:',
                      subTite: '7% - 16%',
                    ),
                  ],
                ),
                Row(
                  spacing: 12,
                  children: [
                    SvgPicture.asset(
                      'assets/images/receiptLines.svg',
                      width: 24.w,
                      height: 24.w,
                    ),
                    DetailsRequst(tite: 'Basic Salary:', subTite: '\$1860'),
                  ],
                ),
              ],
            ),
      ],
    );
  }
}
