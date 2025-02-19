import 'package:aurora/theme/all_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Training extends StatelessWidget {
  const Training({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              'assets/images/Book.svg',
              width: 24.w,
              height: 24.w,
            ),
            8.horizontalSpace,
            Text(
              "Udemy:",
              style: Theme.of(
                context,
              ).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w500),
            ),
            Text(
              " (Course URL)",
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                fontWeight: FontWeight.w300,
                decoration: TextDecoration.underline,
                decorationColor: Theme.of(context).colorScheme.secondary,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ],
        ),
        Text(
          "Lorem ipsum dolor sit amet, consectetur",
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
            color: Theme.of(context).colorScheme.onSecondary,
          ),
        ),
        Text(
          "Performance:",
          style: Theme.of(
            context,
          ).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w500),
        ),
        LinearPercentIndicator(
          width: 286.w,
          lineHeight: 34.0,
          percent: 0.67,
          center: Text("67.0%", style: Theme.of(context).textTheme.labelLarge),
          backgroundColor: Theme.of(context).colorScheme.onSurface,
          progressColor: TURQUOISE_200,
          barRadius: Radius.circular(4),
        ),
      ],
    );
  }
}
