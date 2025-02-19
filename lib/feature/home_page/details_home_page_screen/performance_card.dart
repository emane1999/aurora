import 'dart:convert';

import 'package:aurora/commentwidget/b_sec_button.dart';
import 'package:aurora/commentwidget/card_com.dart';
import 'package:aurora/generated/l10n.dart';
import 'package:aurora/theme/all_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PerformanceCard extends StatelessWidget {
  const PerformanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    String myStringWithLinebreaks =
        "Lorem ipsum dolor sit amet, consectetur\nLorem ipsum dolor sit amet, consectetur\nLorem ipsum dolor sit amet, consectetur ";
    return CardCom(
      children: [
        ListTile(
          title: Text(
            S.of(context).goals,
            style: Theme.of(
              context,
            ).textTheme.labelSmall?.copyWith(fontSize: 16.sp),
          ),
          subtitle: Column(
            children:
                LineSplitter.split(myStringWithLinebreaks).map((o) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "• ",
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: Theme.of(context).colorScheme.onSecondary,
                          fontSize: 16.sp,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          o,
                          style: Theme.of(
                            context,
                          ).textTheme.labelSmall?.copyWith(
                            color: Theme.of(context).colorScheme.onSecondary,
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ],
                  );
                }).toList(),
          ),
        ),
        Text(
          S.of(context).ttperformance,
          style: Theme.of(
            context,
          ).textTheme.labelSmall?.copyWith(fontSize: 16.sp),
        ),
        Row(
          spacing: 32.0.w,
          children: [
            Column(
              children: [
                CircularPercentIndicator(
                  radius: 40.0.w, // Size of the circle
                  lineWidth: 10.0, // Width of the progress line
                  percent: 0.38, // Percentage (0.75 means 75%)
                  center: Text(
                    "38%",
                    style: Theme.of(
                      context,
                    ).textTheme.labelSmall?.copyWith(fontSize: 16.sp),
                  ),
                  progressColor: TURQUOISE_200, // Color of the progress line
                  backgroundColor:
                      Theme.of(
                        context,
                      ).colorScheme.surface, // Background circle color
                  circularStrokeCap:
                      CircularStrokeCap
                          .round, // Rounded edges for the progress line
                ),
                Text(
                  S.of(context).work,
                  style: Theme.of(
                    context,
                  ).textTheme.labelSmall?.copyWith(fontSize: 16.sp),
                ),
              ],
            ),
            Column(
              children: [
                CircularPercentIndicator(
                  radius: 40.0.w, // Size of the circle
                  lineWidth: 10.0, // Width of the progress line
                  percent: 0.79, // Percentage (0.75 means 75%)
                  center: Text(
                    "79%",
                    style: Theme.of(
                      context,
                    ).textTheme.labelSmall?.copyWith(fontSize: 16.sp),
                  ),
                  progressColor: TURQUOISE_200, // Color of the progress line
                  backgroundColor:
                      Theme.of(
                        context,
                      ).colorScheme.surface, // Background circle color
                  circularStrokeCap:
                      CircularStrokeCap
                          .round, // Rounded edges for the progress line
                ),
                Text(
                  S.of(context).training,
                  style: Theme.of(
                    context,
                  ).textTheme.labelSmall?.copyWith(fontSize: 16.sp),
                ),
              ],
            ),
            Column(
              children: [
                CircularPercentIndicator(
                  radius: 40.0.w, // Size of the circle
                  lineWidth: 10.0, // Width of the progress line
                  percent: 0.87, // Percentage (0.75 means 75%)
                  center: Text(
                    "87%",
                    style: Theme.of(
                      context,
                    ).textTheme.labelSmall?.copyWith(fontSize: 16.sp),
                  ),
                  progressColor: TURQUOISE_200, // Color of the progress line
                  backgroundColor:
                      Theme.of(
                        context,
                      ).colorScheme.surface, // Background circle color
                  circularStrokeCap:
                      CircularStrokeCap
                          .round, // Rounded edges for the progress line
                ),
                Text(
                  S.of(context).courses,
                  style: Theme.of(
                    context,
                  ).textTheme.labelSmall?.copyWith(fontSize: 16.sp),
                ),
              ],
            ),
          ],
        ),
        24.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [BSecButton(text: S.of(context).viewMore)],
        ),
      ],
    );
  }
}
