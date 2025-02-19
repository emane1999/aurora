import 'package:aurora/theme/colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class HeaderOfEachBranch extends StatelessWidget {
  final String title;
  final Size preferredSize;
  final bool? showIcon;
  final Widget? icon;
  final void Function()? onPressed;
  const HeaderOfEachBranch({
    super.key,
    required this.title,
    required this.preferredSize,
    this.showIcon,
    this.onPressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: PreferredSize(
        preferredSize: preferredSize,
        child: Divider(color: BORDER_PRIMARY.light, thickness: 1, endIndent: 1),
      ),
      actions:
          showIcon ?? false
              ? [
                IconButton(
                  onPressed: onPressed ?? () {},
                  icon:
                      icon ??
                      Icon(
                        Icons.settings,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
              ]
              : [],
      leadingWidth: 15.sw,
      leading: Row(
        children: [
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              context.pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          Text(
            title,
            style: Theme.of(
              context,
            ).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
