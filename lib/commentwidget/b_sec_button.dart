import 'package:flutter/material.dart';

class BSecButton extends StatelessWidget {
  final ButtonStyle? style;
  final String text;
  final VoidCallback? onPressed;
  const BSecButton({super.key, required this.text, this.onPressed, this.style});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: style ??
          Theme.of(context).filledButtonTheme.style?.copyWith(
              backgroundColor: WidgetStateProperty.all(
                  Theme.of(context).colorScheme.tertiary),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              )),
      onPressed: onPressed,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          softWrap: true,
          overflow: TextOverflow.ellipsis,
          text,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
              color: Theme.of(context).colorScheme.onPrimaryContainer),
        ),
      ),
    );
  }
}
