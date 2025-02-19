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
                      animationDuration: const Duration(milliseconds: 500)),
                  header: Row(
                    spacing: 8,
                    children: [
                      SvgPicture.asset(
                        'assets/images/note.svg',
                        width: 24.w,
                        height: 24.w,
                      ),
                      Text(
                        docType,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(
                                fontWeight: FontWeight.w300,
                                color:
                                    Theme.of(context).colorScheme.onSecondary),
                      ),
                    ],
                  ),
                  collapsed: SizedBox(),
                  expanded: Column(
                    spacing: 10,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Medical Insurance",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w400,
                                ),
                          ),
                          Spacer(),
                          SvgPicture.asset(
                            'assets/images/downlaod.svg',
                            width: 24.w,
                            height: 24.w,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "National ID Card",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w400,
                                ),
                          ),
                          Spacer(),
                          SvgPicture.asset(
                            'assets/images/downlaod.svg',
                            width: 24.w,
                            height: 24.w,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Non-Criminal Record Certificate",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w400,
                                ),
                          ),
                          Spacer(),
                          SvgPicture.asset(
                            'assets/images/downlaod.svg',
                            width: 24.w,
                            height: 24.w,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Passport",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w400,
                                ),
                          ),
                          Spacer(),
                          SvgPicture.asset(
                            'assets/images/downlaod.svg',
                            width: 24.w,
                            height: 24.w,
                          ),
                        ],
                      ),
                      10.verticalSpace
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
