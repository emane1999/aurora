import 'dart:convert';

import 'package:aurora/commentwidget/b_sec_button.dart';
import 'package:aurora/commentwidget/card_com.dart';
import 'package:aurora/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class UpcomingEventCrad extends StatelessWidget {
  const UpcomingEventCrad({super.key});

  @override
  Widget build(BuildContext context) {
    String myStringWithLinebreaks =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ";
    return CardCom(
      children: [
        ListTile(
          title: Row(
            children: [
              Icon(
                Icons.mail_outline,
                color: Theme.of(context).colorScheme.primary,
              ),
              10.horizontalSpace,
              Text(
                S.of(context).latestAnnouncement,
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  fontSize: 16.sp,
                  fontFamily: 'Sora',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
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
                            fontFamily: 'Sora',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  );
                }).toList(),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            BSecButton(
              text: S.of(context).viewMore,
              enabled: true,
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
