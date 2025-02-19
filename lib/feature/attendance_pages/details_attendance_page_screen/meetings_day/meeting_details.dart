import 'dart:convert';

import 'package:aurora/commentwidget/b_error.dart';
import 'package:aurora/commentwidget/card_com.dart';
import 'package:aurora/commentwidget/detail_raw.dart';
import 'package:aurora/commentwidget/header_of_each_branch.dart';
import 'package:aurora/commentwidget/heading_all_text.dart';
import 'package:aurora/commentwidget/person_des.dart';
import 'package:aurora/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MeetingDetails extends StatelessWidget {
  const MeetingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    String myStringWithLinebreaks =
        "Lorem ipsum dolor sit amet, consectetur\nLorem ipsum dolor sit amet, consectetur\nLorem ipsum dolor sit amet, consectetur\nLorem ipsum dolor sit amet, consectetur\nLorem ipsum dolor sit amet, consectetur";

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(.10.sh),
        child: HeaderOfEachBranch(
          title: S.of(context).meetings,
          preferredSize: Size.fromHeight(.10.sh),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.only(
            top: 24.0.w,
            start: 16.w,
            end: 16.w,
            bottom: 24.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 24.0,
            children: [
              HeadingAllText(indexToSearch: 8),
              PersonDes(detail: "Technical Lead"),
              DetailRaw(
                images: 'assets/images/today.svg',
                tite: "15 May 2024 - Wednesday",
              ),
              DetailRaw(
                images: 'assets/images/clock_in.svg',
                tite: "9:00 am - Eastern Time (ET)",
              ),
              DetailRaw(
                images: 'assets/images/Group.svg',
                tite: "Online - Microsoft Teams",
              ),
              CardCom(
                children: [
                  ListTile(
                    title: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/note.svg',
                          width: 24.w,
                          height: 24.w,
                        ),
                        10.horizontalSpace,
                        Text(
                          "Comments",
                          style: Theme.of(
                            context,
                          ).textTheme.labelSmall?.copyWith(
                            fontSize: 16.sp,
                            color: Theme.of(context).colorScheme.onSecondary,
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
                                  style: Theme.of(
                                    context,
                                  ).textTheme.labelSmall?.copyWith(
                                    color:
                                        Theme.of(
                                          context,
                                        ).colorScheme.onSecondary,
                                    fontSize: 16.sp,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    o,
                                    style: Theme.of(
                                      context,
                                    ).textTheme.labelSmall?.copyWith(
                                      color:
                                          Theme.of(
                                            context,
                                          ).colorScheme.onSecondary,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }).toList(),
                    ),
                  ),
                ],
              ),
              110.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BError(text: S.of(context).cancelMeeting),
                  FilledButton(
                    style: Theme.of(context).filledButtonTheme.style?.copyWith(
                      padding: WidgetStatePropertyAll(
                        EdgeInsetsDirectional.only(
                          start: 16.w,
                          top: 4.w,
                          end: 16.w,
                          bottom: 4.w,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        S.of(context).rescheduleMeeting,
                        style: Theme.of(context).textTheme.labelMedium
                            ?.copyWith(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
