import 'package:aurora/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationEventsScreen extends StatelessWidget {
  final TabController tabController;
  const NotificationEventsScreen({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.all(16.0),
          child: Text(
            "Earlier",
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
        ),
        Expanded(
          child: RawScrollbar(
            thickness: 4,
            padding: EdgeInsets.only(left: 3, right: 8.w),
            mainAxisMargin: 200,
            thumbColor: Theme.of(context).colorScheme.onSurfaceVariant,
            thumbVisibility: true,
            radius: Radius.circular(4),
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (BuildContext context, index) {
                return Container(
                  height: 1,
                  width: 1.0.sw,
                  color: BORDER_PRIMARY.light,
                );
              },
              separatorBuilder: (BuildContext context, index) {
                return Padding(
                  padding: EdgeInsetsDirectional.only(
                    top: 12.w,
                    bottom: 12.w,
                    start: 16.w,
                    end: 16.w,
                  ),
                  child: Column(
                    spacing: 8,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur consectetur",
                        style: Theme.of(
                          context,
                        ).textTheme.labelMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onTertiary,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "6 hours ago",
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: 10,
            ),
          ),
        ),
      ],
    );
  }
}
