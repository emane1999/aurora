import 'package:aurora/commentwidget/expandable_widegs.dart';
import 'package:aurora/feature/attendance_pages/model/today.dart';
import 'package:aurora/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CommentWiget extends StatelessWidget {
  final bool changecolor;
  const CommentWiget({super.key, required this.changecolor});

  @override
  Widget build(BuildContext context) {
    final todaysitem = [
      Todays(
        icon: Icon(
          Icons.restore,
          color: Theme.of(context).colorScheme.primary,
          size: 30,
        ),
        title: S.of(context).clockIn,
        subtitle: '9:00AM',
      ),
      Todays(
        icon: Icon(
          Icons.today,
          color: Theme.of(context).colorScheme.primary,
          size: 30,
        ),
        title: S.of(context).date,
        subtitle: 'Thurs, 28 \nOct 2024',
      ),
      Todays(
        icon: Icon(
          Icons.history,
          color: Theme.of(context).colorScheme.primary,
          size: 30,
        ),
        title: S.of(context).clockOut,
        subtitle: '5:00 PM',
      ),
    ];

    return Column(
      children: [
        24.verticalSpace,
        SizedBox(
          height: 91.w,
          child: ListView.separated(
            itemCount: todaysitem.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  todaysitem[index].icon,

                  Text(
                    todaysitem[index].title,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                  ),
                  Text(
                    todaysitem[index].subtitle,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                  ),
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(width: 40.w);
            },
          ),
        ),
        16.verticalSpace,
        ExpandableWidegs(colorchange: changecolor),
        24.verticalSpace,
      ],
    );
  }
}
