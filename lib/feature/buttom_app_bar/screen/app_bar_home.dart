import 'package:aurora/feature/buttom_app_bar/model/destination.dart';
import 'package:aurora/theme/all_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class AppBarHome extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const AppBarHome({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBarTheme(
        data: Theme.of(context).navigationBarTheme,
        child: NavigationBar(
          selectedIndex: navigationShell.currentIndex,
          onDestinationSelected: (index) {
            navigationShell.goBranch(index);
          },
          destinations:
              destinations
                  .map(
                    (destination) => NavigationDestination(
                      icon: Icon(destination.icon),
                      label: destination.label,
                      selectedIcon: Icon(
                        destination.icon,
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                    ),
                  )
                  .toList(),
        ),
      ),
      appBar: PreferredSize(
        child: AppBar(
          backgroundColor:
              Theme.of(context).brightness == Brightness.dark
                  ? NAVY_50
                  // Dark mode background color
                  : Theme.of(context).colorScheme.primary,
          leading: FittedBox(
            fit: BoxFit.scaleDown,
            child: Column(
              children: [
                16.verticalSpace,
                Row(
                  children: [
                    16.horizontalSpace,
                    SvgPicture.asset(
                      'assets/images/BrandLogos.svg',
                      width: 60.w,
                      height: 37.w,
                    ),
                    12.horizontalSpace,
                    Text(
                      "aurora",
                      style: Theme.of(
                        context,
                      ).textTheme.displayMedium?.copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: TechnoWhite,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          leadingWidth: 98.w,
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.all(30.w),
              child: Row(
                spacing: 16.w,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.search, color: GRAY_50),
                  Icon(Icons.notifications_none, color: GRAY_50),
                ],
              ),
            ),
          ],
        ),
        preferredSize: Size.fromHeight(70.w),
      ),
    );
  }
}
