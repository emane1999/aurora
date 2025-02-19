import 'package:aurora/commentwidget/heading_all_text.dart';
import 'package:aurora/feature/attendance_pages/details_attendance_page_screen/attendance_history/attendance_history.dart';
import 'package:aurora/feature/attendance_pages/details_attendance_page_screen/calender.dart';
import 'package:aurora/feature/attendance_pages/details_attendance_page_screen/meetings_day/meetings_for_Today.dart';
import 'package:aurora/feature/buttom_app_bar/screen/header_home.dart';
import 'package:aurora/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AttendancePage extends StatelessWidget {
  const AttendancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsetsDirectional.only(start: 16.w, end: 16.w, top: 24.w),
      shrinkWrap: true,
      children: [
        HeaderHome(tite: S.of(context).todaysSchedule),
        24.verticalSpace,
        Calendar(),
        24.verticalSpace,
        HeadingAllText(indexToSearch: 6),
        12.verticalSpace,
        AttendanceHistory(),
        24.verticalSpace,
        HeadingAllText(indexToSearch: 7),
        12.verticalSpace,
        MeetingsForToday(),
      ],
    );
  }
}
