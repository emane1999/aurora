import 'package:aurora/feature/attendance_pages/details_attendance_page_screen/attendance_history/comment_wiget.dart';
import 'package:aurora/feature/attendance_pages/details_attendance_page_screen/attendance_history/overall.dart';
import 'package:aurora/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AttendanceHistory extends StatelessWidget {
  const AttendanceHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: .40.sh,
      child: Card(
        elevation: 4.0,
        color: Theme.of(context).cardColor,
        shadowColor: Theme.of(context).shadowColor,
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: DefaultTabController(
            length: 2, // Number of tabs
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TabBar(
                  unselectedLabelColor: Theme.of(context).colorScheme.primary,
                  unselectedLabelStyle: Theme.of(context).textTheme.displaySmall
                      ?.copyWith(fontWeight: FontWeight.w300),
                  labelStyle: Theme.of(context).textTheme.displaySmall,
                  tabs: [
                    Tab(text: S.of(context).today),
                    Tab(text: S.of(context).overall),
                  ],
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                      width: 2.0,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
                const Expanded(
                  child: TabBarView(
                    children: [
                      Center(child: CommentWiget(changecolor: true)),
                      Center(child: Overall()),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
