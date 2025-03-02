import 'package:aurora/feature/profile_pages/details_profile_page_screen/main_profile/custom_switch.dart';
import 'package:aurora/theme/global_theme_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CardSwichComponet extends StatelessWidget {
  final String image;
  final String title;

  final Function()? onPressed;
  final SwitchType switchType;
  const CardSwichComponet({
    super.key,
    required this.image,
    required this.title,

    this.onPressed,
    required this.switchType,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: Theme.of(context).cardColor,
      shadowColor: Theme.of(context).shadowColor,
      child: Padding(
        padding: EdgeInsetsDirectional.only(
          start: 12.w,
          top: 8.w,
          end: 12.w,
          bottom: 8.w,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 8,
          children: [
            SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.primary,
                BlendMode.srcIn, // Color the SVG
              ),
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                fontWeight: FontWeight.w300,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: onPressed,
              icon:
                  switchType == SwitchType.theme
                      ? Consumer(
                        builder: (context, ref, child) {
                          final themeState = ref.watch(themeStateProvider);
                          return CustomSwitch(
                            value: themeState == ThemeMode.dark,
                            onChanged: (bool val) {
                              ref
                                  .read(themeStateProvider.notifier)
                                  .setTheme(
                                    mode:
                                        val ? ThemeMode.dark : ThemeMode.light,
                                  );
                            },
                            switchType: SwitchType.theme,
                          );
                        },
                      )
                      : Consumer(
                        builder: (context, ref, child) {
                          return CustomSwitch(
                            value:
                                false, // Use actual condition for biometric here
                            onChanged: (bool val) async {
                              if (val) {
                                // Implement biometric login logic here
                                // e.g., trigger biometric authentication
                              }
                            },
                            switchType: SwitchType.biometric,
                          );
                        },
                      ),
            ),
          ],
        ),
      ),
    );
  }
}
