import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BSecButton extends StatelessWidget {
  final ButtonStyle? style;
  final String text;
  final bool? enabled;
  final VoidCallback? onPressed;
  const BSecButton({
    super.key,
    required this.text,

    required this.onPressed,
    this.enabled = false,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style:
          style ??
          Theme.of(context).filledButtonTheme.style?.copyWith(
            backgroundColor: WidgetStateProperty.all(
              Theme.of(context).brightness == Brightness.dark
                  ? Theme.of(context).colorScheme.tertiary
                  // Dark mode background color
                  : Theme.of(
                    context,
                  ).colorScheme.onSecondary, // Light mode background color
            ),
            padding: WidgetStateProperty.all(
              EdgeInsetsDirectional.only(
                start: 16.w,
                end: 16.w,
                top: 8.w,
                bottom: 8.w,
              ),
            ),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
          ),
      onPressed: enabled! ? onPressed : null,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          softWrap: true,
          overflow: TextOverflow.ellipsis,
          text,
          style:
              enabled!
                  ? Theme.of(context).textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.onSurface,
                  )
                  : Theme.of(context).textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
          // style: Theme.of(context).textTheme.labelMedium?.copyWith(
          //   color: Theme.of(context).colorScheme.onPrimaryContainer,
          // ),
        ),
      ),
    );
  }
}
