import 'package:aurora/app_lang/app_language_provider.dart';
import 'package:aurora/commentwidget/button_arabic_en.dart';
import 'package:aurora/commentwidget/circlePainter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BasisVer extends ConsumerWidget {
  Material? material;
  String? textpage;
  ScrollPhysics? physics;
  BasisVer({
    super.key,
    required this.material,
    required this.textpage,
    required this.physics,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.0.w),
        child: AppBar(
          leading: InkWell(
            child: Icon(Icons.arrow_back),
            onTap: () => context.pop(),
          ),
          backgroundColor: Theme.of(context).colorScheme.primary,
          flexibleSpace: Stack(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.only(start: 16.w, top: 70.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    46.verticalSpace,
                    Text(
                      textpage!,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context).colorScheme.surface,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left:
                    ref.read(appLanguageStateProvider).languageCode == 'en'
                        ? 220.w
                        : 0,
                right:
                    ref.read(appLanguageStateProvider).languageCode == 'en'
                        ? 0
                        : 150.w,
                bottom: 80.w,
                child: Center(
                  child: CustomPaint(
                    size: Size(128, 128),
                    painter: CirclePainter(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.shadow,
              offset: Offset(0, -5),
            ),
          ],
        ),
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsetsDirectional.only(
            end: 36.w,
            start: 36.w,
            top: 32.w,
            bottom: 32.w,
          ),
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            material!,
            ButtonArabicEn(
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
              svgPicture: 'assets/images/Icon.svg',
            ),
          ],
        ),
      ),
    );
  }
}
