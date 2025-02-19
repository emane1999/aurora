import 'package:aurora/feature/buttom_app_bar/screen/header_home.dart';
import 'package:aurora/feature/request_page.dart/details_request_page_screen/requests_details.dart';

// import 'package:base_project/feature/request_page.dart/details_request_page_screen/requests_admin.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RequestsPage extends StatelessWidget {
  const RequestsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1.sh,
      child: Padding(
        padding: EdgeInsetsDirectional.only(start: 16.w, end: 16.w, top: 24.w),
        child: Column(
          children: [
            HeaderHome(tite: "Requests"),
            16.verticalSpace,
            Expanded(child: RequestsDetails()),
            // Expanded(child: RequestsAdmin()),
          ],
        ),
      ),
    );
  }
}
