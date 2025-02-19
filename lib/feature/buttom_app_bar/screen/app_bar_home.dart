import 'package:aurora/feature/buttom_app_bar/model/destination.dart';
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
          backgroundColor: Theme.of(context).colorScheme.primary,
          leading: FittedBox(
            fit: BoxFit.scaleDown,
            child: Column(
              children: [
                16.verticalSpace,
                SvgPicture.asset(
                  'assets/images/logo.svg',
                  width: 61.w,
                  height: 37.w,
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
                  Icon(
                    Icons.search,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  Icon(
                    Icons.dashboard,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
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
