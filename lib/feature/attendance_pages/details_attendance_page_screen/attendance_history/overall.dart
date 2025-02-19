import 'package:aurora/feature/attendance_pages/details_attendance_page_screen/attendance_history/comment_wiget.dart';
import 'package:aurora/theme/colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Overall extends StatelessWidget {
  const Overall({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    return ScrollbarTheme(
      data: ScrollbarThemeData(
        minThumbLength: 54.0,
        thumbColor: WidgetStateProperty.all(
          SCROLLBAR_PRIMARY.light,
        ), // Thumb color
        trackColor: WidgetStateProperty.all(Colors.grey[300]), // Track color
        radius: Radius.circular(10),
        interactive: true,
      ),
      child: Scrollbar(
        thumbVisibility: true,
        child: ListView(
          controller: scrollController,
          children: [
            24.verticalSpace,
            CommentWiget(changecolor: true),
            Container(height: 1, width: 1.0.sw, color: BORDER_PRIMARY.light),
            24.verticalSpace,
            CommentWiget(changecolor: false),
            Container(height: 1, width: 1.0.sw, color: BORDER_PRIMARY.light),
            24.verticalSpace,
            CommentWiget(changecolor: true),
            Container(height: 1, width: 1.0.sw, color: BORDER_PRIMARY.light),
            24.verticalSpace,
            CommentWiget(changecolor: false),
            Container(height: 1, width: 1.0.sw, color: BORDER_PRIMARY.light),
            24.verticalSpace,
            CommentWiget(changecolor: false),
            Container(height: 1, width: 1.0.sw, color: BORDER_PRIMARY.light),
          ],
        ),
      ),
    );
  }
}
