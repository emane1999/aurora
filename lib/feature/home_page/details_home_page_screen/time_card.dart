import 'package:aurora/commentwidget/b_button.dart';
import 'package:aurora/commentwidget/b_sec_button.dart';
import 'package:aurora/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import 'package:timezone/timezone.dart' as tz;

class TimeCard extends StatelessWidget {
  const TimeCard({super.key});
  String getCurrentTime() {
    final amman = tz.getLocation('Asia/Amman');
    final now = tz.TZDateTime.now(amman);
    final formatter = DateFormat('hh:mm:ss a');
    return formatter.format(now);
  }

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      elevation: 4.w,
      color: Theme.of(context).cardColor,
      shadowColor: Theme.of(context).shadowColor,
      child: Padding(
        padding: EdgeInsetsDirectional.only(
          start: 12.w,
          top: 12.w,
          end: 12.w,
          bottom: 24.w,
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                'assets/images/dicons.png',
                width: 72.w,
                height: 72.w,
              ),
            ),
            Column(
              spacing: 12,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  getCurrentTime(),
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Row(
                  children: [
                    Text(
                      S.of(context).todaysShift,
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      " 9:00 AM - 5:00 PM",
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      S.of(context).location,
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "  Amman Office",
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: BSecButton(
                        enabled: true,
                        onPressed: () {},
                        text: S.of(context).clockIn,
                      ),
                    ),
                    12.horizontalSpace,
                    Center(
                      child: BButton(S.of(context).clockOut, onPressed: () {}),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
