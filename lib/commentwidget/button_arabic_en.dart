import 'package:aurora/app_lang/app_language_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ButtonArabicEn extends ConsumerWidget {
  TextStyle? style;
  String svgPicture;
  ButtonArabicEn({super.key, required this.style, required this.svgPicture});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: () async {
          final appLanguageState = ref.read(appLanguageStateProvider.notifier);
          final currentLocale = ref.read(appLanguageStateProvider);

          final newLocale =
              currentLocale.languageCode == 'en' ? Locale('ar') : Locale('en');

          await appLanguageState.changeLanguage(newLocale);
        },
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(svgPicture, width: 75.w, height: 20.w),
              SizedBox(width: 8),
              Text(
                ref.read(appLanguageStateProvider).languageCode == 'en'
                    ? 'العربية'
                    : 'English',
                style: style,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
