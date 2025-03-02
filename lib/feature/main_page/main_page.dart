import 'package:aurora/commentwidget/button_arabic_en.dart';
import 'package:aurora/feature/main_page/widget_main_page/sign_in_to_your_work.dart';
import 'package:aurora/feature/main_page/widget_main_page/text_wecome.dart';
import 'package:aurora/theme/all_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Theme.of(context).brightness == Brightness.dark
              ? GRAY_900
              // Dark mode background color
              : Theme.of(context).colorScheme.primary,

      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 44.w, end: 44.w, top: 48.w),
        child: ListView(
          shrinkWrap: true,
          children: [
            48.verticalSpace,
            Center(
              child: SvgPicture.asset(
                'assets/images/Brand Logo.svg',
                width: 200.w,
                height: 100.w,
              ),
            ),
            48.verticalSpace,
            SvgPicture.asset(
              'assets/images/Vector (1).svg',
              width: 300.w,
              height: 206.w,
            ),
            49.verticalSpace,
            TextWecome(),
            48.verticalSpace,
            SignInToYourWork(),
            60.verticalSpace,
            ButtonArabicEn(
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: GRAY_50,
                fontWeight: FontWeight.w400,
              ),
              icons: Icon(Icons.language, color: GRAY_50),
            ),
          ],
        ),
      ),
    );
  }
}
