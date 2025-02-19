import 'package:aurora/generated/l10n.dart';
import 'package:aurora/theme/all_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextWecome extends StatelessWidget {
  const TextWecome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).welcome,
          style: Theme.of(
            context,
          ).textTheme.headlineSmall?.copyWith(color: GRAY_50),
          textAlign: TextAlign.left,
        ),
        12.verticalSpace,
        Builder(
          builder: (context) {
            bool isEnghish =
                Localizations.localeOf(context).languageCode == "en";
            TextStyle? textStyle = Theme.of(context).textTheme.displaySmall
                ?.copyWith(fontWeight: FontWeight.w300, color: GRAY_50);

            return RichText(
              softWrap: true,
              text:
                  isEnghish
                      ? buildEnglishText(textStyle, context)
                      : buildOtherLanguageText(textStyle, context, isEnghish),
            );
          },
        ),
      ],
    );
  }
}

TextSpan buildEnglishText(TextStyle? textStyle, BuildContext context) {
  return TextSpan(
    text: S.of(context).seamless,
    style: textStyle?.copyWith(height: 1.5.sp),
    children: [
      WidgetSpan(
        child: Text(
          S.of(context).hrManagement,
          style: textStyle?.copyWith(fontWeight: FontWeight.w600),
        ),
      ),
      TextSpan(
        text: " ${S.of(context).justAClickAway}",
        style: textStyle?.copyWith(height: 1.25.sp),
      ),
    ],
  );
}

TextSpan buildOtherLanguageText(
  TextStyle? textStyle,
  BuildContext context,
  bool isEnghish,
) {
  return TextSpan(
    text: isEnghish ? "" : "ادارة ",
    style: textStyle?.copyWith(height: 1.25.sp),
    children: [
      TextSpan(
        text: S.of(context).seamless,
        style: textStyle?.copyWith(fontWeight: FontWeight.w600, height: 1.5.sp),
      ),
      WidgetSpan(child: Text(S.of(context).hrManagement, style: textStyle)),
      TextSpan(
        text: " ${S.of(context).justAClickAway}",
        style: textStyle?.copyWith(height: 1.25.sp),
      ),
    ],
  );
}
