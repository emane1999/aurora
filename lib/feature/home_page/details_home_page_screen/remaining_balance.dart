import 'package:aurora/feature/home_page/model/item_feature.dart';
import 'package:aurora/generated/l10n.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class RemainingBalance extends StatelessWidget {
  const RemainingBalance({super.key});

  @override
  Widget build(BuildContext context) {
    final feat = [
      ItemFeature(
        nameFeature: S.of(context).annualBalance,
        imagefeature: 'assets/images/annualIcon.svg',
      ),
      ItemFeature(
        nameFeature: S.of(context).sickDays,
        imagefeature: 'assets/images/sickIcon.svg',
      ),
      ItemFeature(
        nameFeature: S.of(context).overtimeDays,
        imagefeature: 'assets/images/vectors.svg',
      ),
      ItemFeature(
        nameFeature: S.of(context).deductions,
        imagefeature: 'assets/images/Icons (6).svg',
      ),
    ];
    return SizedBox(
      height: 300.w,
      child: GridView.count(
        childAspectRatio: 2.0,
        crossAxisSpacing: 12.0,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsetsDirectional.zero,
        crossAxisCount: 2,
        children: List.generate(feat.length, (index) {
          return Center(
            child: Card.filled(
              elevation: 4.w,
              color: Theme.of(context).cardColor,
              shadowColor: Theme.of(context).shadowColor,
              child: Padding(
                padding: EdgeInsetsDirectional.all(12.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      feat[index].imagefeature,
                      width: 24.w,
                      height: 24.w,
                    ),
                    8.horizontalSpace,
                    Text(
                      feat[index].nameFeature,
                      style: Theme.of(
                        context,
                      ).textTheme.labelSmall?.copyWith(fontSize: 12.sp),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
