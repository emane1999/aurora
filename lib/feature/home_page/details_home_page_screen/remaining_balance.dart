import 'package:aurora/feature/home_page/model/item_feature.dart';
import 'package:aurora/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RemainingBalance extends StatelessWidget {
  const RemainingBalance({super.key});

  @override
  Widget build(BuildContext context) {
    final feat = [
      ItemFeature(
        nameFeature: S.of(context).overtimeDays,
        imagefeature: 'assets/images/annualIcon.svg',
        isCheckType: false,
      ),

      ItemFeature(
        nameFeature: S.of(context).sickDays,
        imagefeature: 'assets/images/sickIcon.svg',
        isCheckType: false,
      ),
      ItemFeature(
        nameFeature: S.of(context).annualBalance,
        Iconsfeature: Icon(
          Icons.request_quote_outlined,
          color: Theme.of(context).colorScheme.primary,
        ),
        isCheckType: true,
      ),
      ItemFeature(
        nameFeature: S.of(context).annualBalance,
        Iconsfeature: Icon(
          Icons.remove_circle_outline,
          color: Theme.of(context).colorScheme.primary,
        ),
        isCheckType: true,
      ),
    ];

    return SizedBox(
      height: 225.w,
      child: GridView.count(
        childAspectRatio: 3.0,
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
                    // Check if the feature is an icon or an image
                    if (feat[index].isCheckType == false)
                      SvgPicture.asset(
                        feat[index].imagefeature!,
                        width: 20.w,
                        height: 20.w,
                        colorFilter: ColorFilter.mode(
                          Theme.of(context).colorScheme.primary,
                          BlendMode.srcIn, // Color the SVG
                        ),
                      )
                    else
                      feat[index].Iconsfeature!,

                    6.horizontalSpace,
                    Text(
                      feat[index].nameFeature,
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                      ),
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
