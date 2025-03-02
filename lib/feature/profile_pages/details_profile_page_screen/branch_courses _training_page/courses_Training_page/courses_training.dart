import 'package:aurora/commentwidget/card_com.dart';
import 'package:aurora/commentwidget/header_of_each_branch.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_courses%20_training_page/courses_Training_page/training.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoursesTraining extends StatelessWidget {
  const CoursesTraining({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(.07.sh),
        child: HeaderOfEachBranch(
          title: 'Courses & Training',
          preferredSize: Size.fromHeight(.07.sh),
        ),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(top: 24.w, end: 16.w, start: 16.w),
        child: Column(
          spacing: 12,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Courses",
              style: Theme.of(
                context,
              ).textTheme.displayMedium?.copyWith(fontSize: 18.sp),
            ),
            CardCom(
              children: [
                Training(),
                12.verticalSpace,
                Training(),
                12.verticalSpace,
                Training(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
