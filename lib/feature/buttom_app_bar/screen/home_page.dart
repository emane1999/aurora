import 'dart:convert';

import 'package:aurora/commentwidget/heading_all_text.dart';
import 'package:aurora/feature/buttom_app_bar/screen/header_home.dart';
import 'package:aurora/feature/home_page/details_home_page_screen/list_used%20_features.dart';
import 'package:aurora/feature/home_page/details_home_page_screen/performance_card.dart';
import 'package:aurora/feature/home_page/details_home_page_screen/remaining_balance.dart';
import 'package:aurora/feature/home_page/details_home_page_screen/time_card.dart';
import 'package:aurora/feature/home_page/details_home_page_screen/upcoming_event_crad.dart';
import 'package:aurora/feature/home_page/details_home_page_screen/your_requests.dart';
import 'package:aurora/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsetsDirectional.only(start: 16.w, end: 16.w, top: 24.w),
      shrinkWrap: true,
      children: [
        HeaderHome(tite: S.of(context).goodAfternoonJohn('a', 'name')),
        24.verticalSpace,
        HeadingAllText(indexToSearch: 0),
        12.verticalSpace,
        TimeCard(),
        24.verticalSpace,
        HeadingAllText(indexToSearch: 1),
        12.verticalSpace,
        UpcomingEventCrad(),
        24.verticalSpace,
        HeadingAllText(indexToSearch: 2),
        12.verticalSpace,
        PerformanceCard(),
        24.verticalSpace,
        HeadingAllText(indexToSearch: 3),
        12.verticalSpace,
        YourRequests(),
        12.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(
              'assets/images/Icons (4).svg',
              width: 24.w,
              height: 24.w,
            ),
            8.horizontalSpace,
            SvgPicture.asset(
              'assets/images/Icons (5).svg',
              width: 24.w,
              height: 24.w,
            ),
          ],
        ),
        24.verticalSpace,
        HeadingAllText(indexToSearch: 4),
        12.verticalSpace,
        ListUsedFeatures(),
        24.verticalSpace,
        HeadingAllText(indexToSearch: 5),
        12.verticalSpace,
        RemainingBalance(),
      ],
    );
  }
}
