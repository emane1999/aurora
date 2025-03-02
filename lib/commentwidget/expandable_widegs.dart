import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ExpandableWidegs extends StatelessWidget {
  final bool colorchange;
  const ExpandableWidegs({super.key, required this.colorchange});

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
          Icon(
            Icons.comment_outlined,
            color: Theme.of(context).colorScheme.primary,
          ),

          Text(
            "Notes:",
            style: Theme.of(
              context,
            ).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w500),
          ),
          colorchange
              ? Text(
                "You got zero notes.",
                style: Theme.of(
                  context,
                ).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w500),
              )
              : Text(
                "You got one note!",
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
        ],
      ),
      collapsed: SizedBox(),
      expanded:
          colorchange
              ? Text(
                "• No notes were found here",
                style: Theme.of(context).textTheme.labelMedium,
              )
              : Text(
                "• Dear John, your repeated tardiness is noted, and continued lateness may lead to further action, so please make the necessary adjustments to arrive on time moving forward.",
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
    );
  }
}
