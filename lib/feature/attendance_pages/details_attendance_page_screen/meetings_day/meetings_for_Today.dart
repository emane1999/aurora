import 'package:aurora/commentwidget/b_sec_button.dart';
import 'package:aurora/commentwidget/card_com.dart';
import 'package:aurora/commentwidget/person_des.dart';
import 'package:aurora/generated/l10n.dart';
import 'package:aurora/router/router_utils.dart';
import 'package:aurora/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class MeetingsForToday extends StatelessWidget {
  const MeetingsForToday({super.key});

  @override
  Widget build(BuildContext context) {
    return CardCom(
      children: [
        PersonDes(detail: "Technical Lead"),
        Divider(color: BORDER_PRIMARY.light, thickness: 1, endIndent: 1),
        28.verticalSpace,
        Row(
          spacing: 8.w,
          children: [
            Icon(Icons.today, color: Theme.of(context).colorScheme.primary),
            Text(
              "Technical Lead",
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
          ],
        ),
        4.verticalSpace,
        Row(
          spacing: 8.w,
          children: [
            Icon(Icons.place, color: Theme.of(context).colorScheme.primary),
            Text(
              "Online - Microsoft Teams",
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            BSecButton(
              onPressed: () {
                context.pushNamed(AppRoute.meeting_details.toName);
              },
              text: S.of(context).viewMore,
              enabled: true,
            ),
          ],
        ),
      ],
    );
  }
}
