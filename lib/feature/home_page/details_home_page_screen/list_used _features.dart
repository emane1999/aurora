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
        Iconsfeature: Icon(
          Icons.fingerprint,
          color: Theme.of(context).colorScheme.primary,
        ),
        isCheckType: true,
      ),
      ItemFeature(
        nameFeature: S.of(context).leaveRequest,
        Iconsfeature: Icon(
          Icons.schedule,
          color: Theme.of(context).colorScheme.primary,
        ),
        isCheckType: true,
      ),
      ItemFeature(
        nameFeature: S.of(context).loanRequest,
        Iconsfeature: Icon(
          Icons.request_quote_outlined,
          color: Theme.of(context).colorScheme.primary,
        ),
        isCheckType: true,
      ),
      ItemFeature(
        nameFeature: S.of(context).newRequest,
        Iconsfeature: Icon(
          Icons.add_circle_outline,
          color: Theme.of(context).colorScheme.primary,
        ),
        isCheckType: true,
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
                    features[index].Iconsfeature!,
                    Text(
                      features[index].nameFeature,
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
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
