import 'package:aurora/commentwidget/b_button.dart';
import 'package:aurora/commentwidget/details_requst.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Listcard extends StatelessWidget {
  final String title;
  const Listcard({super.key, required this.title});

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
                      'assets/images/Box.svg',
                      width: 24.w,
                      height: 24.w,
                    ),
                    Text(
                      title,
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
                    DetailsRequst(
                      tite: 'Serial number: ',
                      subTite: '#37994264',
                    ),
                    DetailsRequst(tite: 'Condition: ', subTite: 'Stable'),
                    DetailsRequst(tite: 'Location: ', subTite: 'Amman Office'),
                    16.verticalSpace,
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          BButton(
                            "Request Return",
                            style: Theme.of(
                              context,
                            ).filledButtonTheme.style?.copyWith(
                              padding: WidgetStateProperty.resolveWith(
                                (context) => EdgeInsetsDirectional.only(
                                  start: 12.w,
                                  top: 4.w,
                                  end: 12.w,
                                  bottom: 4,
                                ),
                              ),
                            ),
                            enabled: true,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    12.verticalSpace,
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
