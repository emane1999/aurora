import 'package:aurora/commentwidget/linears_gradient.dart';
import 'package:aurora/theme/all_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BButton extends StatelessWidget {
  final double height;
  final VoidCallback? onPressed;
  final bool enabled;
  final String text;
  final double fontSize;
  final ButtonStyle? style;
  const BButton(
    this.text, {
    super.key,
    this.height = 42,
    this.enabled = false,
    this.onPressed,
    this.fontSize = 16,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return enabled
        ? LinersGradientButton(
          isborder: false,
          child: FilledButton(
            style: style ?? Theme.of(context).filledButtonTheme.style,
            onPressed: enabled ? onPressed : null,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                text,
                style:
                    enabled
                        ? Theme.of(context).textTheme.labelMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          color:
                              Theme.of(context).brightness == Brightness.dark
                                  ? NAVY_50
                                  // Dark mode background color
                                  : Theme.of(context).colorScheme.onTertiary,
                        )
                        : null,
              ),
            ),
          ),
        )
        : FilledButton(
          style: Theme.of(context).filledButtonTheme.style?.copyWith(
            backgroundColor: WidgetStateProperty.all(
              Theme.of(context).colorScheme.onSurface,
            ),
            padding: WidgetStateProperty.all(
              EdgeInsetsDirectional.only(
                start: 16.w,
                end: 16.w,
                top: 8.w,
                bottom: 8.w,
              ),
            ),
          ),
          onPressed: enabled ? onPressed : null,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              text,
              style:
                  enabled
                      ? null
                      : Theme.of(context).textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
            ),
          ),
        );
  }
}
