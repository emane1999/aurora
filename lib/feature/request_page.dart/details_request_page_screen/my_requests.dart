import 'package:aurora/commentwidget/b_sec_button.dart';
import 'package:aurora/commentwidget/card_com.dart';
import 'package:aurora/commentwidget/details_requst.dart';
import 'package:aurora/commentwidget/expandable_widegs.dart';
import 'package:aurora/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MyRequests extends StatelessWidget {
  const MyRequests({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsetsDirectional.only(start: 16, end: 16, top: 4),
      children: [
        CardCom(
          children: [
            Text(
              "Request #2879 ",
              style: Theme.of(
                context,
              ).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w600),
            ),
            4.verticalSpace,
            DetailsRequst(
              tite: S.of(context).requestType,
              subTite: " Sick Leave",
            ),
            DetailsRequst(
              tite: S.of(context).date,
              subTite: "Sun, 27 Oct 2024, 8:55 AM",
            ),
            DetailsRequst(tite: "Time:", subTite: " 8:55 AM"),
            DetailsRequst(
              tite: S.of(context).requestStatus,
              subTite: " Pending",
            ),
            12.verticalSpace,
            ExpandableWidegs(colorchange: false),
            4.verticalSpace,
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
        ),
        24.verticalSpace,
        CardCom(
          children: [
            Text(
              "Request #2879 ",
              style: Theme.of(
                context,
              ).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w600),
            ),
            4.verticalSpace,
            DetailsRequst(
              tite: S.of(context).requestType,
              subTite: " Sick Leave",
            ),
            DetailsRequst(
              tite: S.of(context).date,
              subTite: "Sun, 27 Oct 2024, 8:55 AM",
            ),
            DetailsRequst(tite: "Time:", subTite: " 8:55 AM"),
            DetailsRequst(
              tite: S.of(context).requestStatus,
              subTite: " Pending",
            ),
            12.verticalSpace,
            ExpandableWidegs(colorchange: true),
            4.verticalSpace,
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
        ),
      ],
    );
  }
}
