import 'package:aurora/feature/home_page/model/item_feature.dart';
import 'package:aurora/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ListUsedFeatures extends StatelessWidget {
  const ListUsedFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    final features = [
      ItemFeature(
        nameFeature: S.of(context).punchCorrection,
        imagefeature: 'assets/images/Fingerprint (1).svg',
      ),
      ItemFeature(
        nameFeature: S.of(context).leaveRequest,
        imagefeature: 'assets/images/Icons (2).svg',
      ),
      ItemFeature(
        nameFeature: S.of(context).loanRequest,
        imagefeature: 'assets/images/vectors.svg',
      ),
      ItemFeature(
        nameFeature: S.of(context).newRequest,
        imagefeature: 'assets/images/Icons (3).svg',
      ),
    ];
    return SizedBox(
      width: 171.w,
      height: 60.w,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: features.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext, int index) {
          return Center(
            child: Card.filled(
              elevation: 4.w,
              color: Theme.of(context).cardColor,
              shadowColor: Theme.of(context).shadowColor,
              child: Padding(
                padding: EdgeInsetsDirectional.all(12.w),
                child: Row(
                  spacing: 12,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      features[index].imagefeature,
                      width: 24.w,
                      height: 24.w,
                    ),
                    Text(
                      features[index].nameFeature,
                      style: Theme.of(
                        context,
                      ).textTheme.labelSmall?.copyWith(fontSize: 12.sp),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
