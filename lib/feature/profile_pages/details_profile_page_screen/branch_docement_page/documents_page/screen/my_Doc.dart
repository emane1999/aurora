import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MyDoc extends StatelessWidget {
  final String docType;
  const MyDoc({super.key, required this.docType});

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      elevation: 4.w,
      color: Theme.of(context).cardColor,
      shadowColor: Theme.of(context).shadowColor,
      child: Padding(
        padding: EdgeInsetsDirectional.only(start: 12.w, top: 8.w, end: 12.w),
        child: Center(
          child: Column(
            children: [
              ExpandablePanel(
                theme: ExpandableThemeData(
                  iconColor: Theme.of(context).colorScheme.primary,
                  animationDuration: const Duration(milliseconds: 500),
                ),
                header: Row(
                  spacing: 8,
                  children: [
                    SvgPicture.asset(
                      'assets/images/File6.svg',
                      width: 24.w,
                      height: 24.w,
                      colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.primary,
                        BlendMode.srcIn, // Color the SVG
                      ),
                    ),
                    Text(
                      docType,
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w300,
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                    ),
                  ],
                ),
                collapsed: SizedBox(),
                expanded: Column(
                  spacing: 10,
                  children: [
                    Listcompent(context, "Medical Insurance"),

                    Listcompent(context, "National ID Card"),
                    Listcompent(context, "Non-Criminal Record Certificate"),

                    Listcompent(context, "Passport"),
                    10.verticalSpace,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget Listcompent(BuildContext context, String title) {
  return Padding(
    padding: const EdgeInsetsDirectional.only(
      start: 16,
      end: 16,
      top: 10,
      bottom: 10,
    ),

    child: Row(
      children: [
        Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w400),
        ),
        Spacer(),
        Icon(Icons.file_download, color: Theme.of(context).colorScheme.primary),
      ],
    ),
  );
}
