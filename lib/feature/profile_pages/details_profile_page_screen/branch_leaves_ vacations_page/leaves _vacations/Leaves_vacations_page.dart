import 'package:aurora/commentwidget/header_of_each_branch.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_leaves_%20vacations_page/leaves%20_vacations/annual_leave.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LeavesVacationsPage extends StatelessWidget {
  const LeavesVacationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(.1.sh),
        child: HeaderOfEachBranch(
          title: 'Leaves & Vacations',
          preferredSize: Size.fromHeight(.1.sh),
        ),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(top: 24.w, start: 16.w, end: 16.w),
        child: Column(
          spacing: 24,
          children: [
            AnnualLeave(name: 'Annual Leave'),
            AnnualLeave(name: 'Sick Leave'),
          ],
        ),
      ),
    );
  }
}
