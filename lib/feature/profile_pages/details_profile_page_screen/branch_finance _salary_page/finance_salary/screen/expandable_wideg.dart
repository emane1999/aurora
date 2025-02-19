import 'package:aurora/commentwidget/details_requst.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ExpandableWideg extends StatelessWidget {
  final int number;
  const ExpandableWideg({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return ExpandablePanel(
      theme: ExpandableThemeData(
        iconColor: Theme.of(context).colorScheme.primary,
        animationDuration: const Duration(milliseconds: 500),
      ),
      header: Row(
        spacing: 8,
        children: [
          SvgPicture.asset('assets/images/note.svg', width: 24.w, height: 24.w),
          Text(
            "Details on deduction",
            style: Theme.of(
              context,
            ).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w500),
          ),
        ],
      ),
      collapsed: SizedBox(),
      expanded: Column(
        children: [
          DetailsRequst(tite: 'Date:', subTite: 'Sun, 27 Oct 2024'),
          DetailsRequst(tite: 'Annual Vacations:', subTite: '0'),
          DetailsRequst(tite: 'Vacations Taken:', subTite: '1 day '),
          Row(
            children: [
              Text(
                "Deduction:",
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: Theme.of(context).colorScheme.error,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "-\$${number}",
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
