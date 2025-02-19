import 'package:flutter/material.dart';

class BButton extends StatelessWidget {
  final double height;
  final VoidCallback? onPressed;
  final bool enabled;
  final String text;
  final double fontSize;
  final ButtonStyle? style;
  const BButton(this.text,
      {super.key,
      this.height = 42,
      this.enabled = false,
      this.onPressed,
      this.fontSize = 16,
      this.style});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: style ?? Theme.of(context).filledButtonTheme.style,
      onPressed: enabled ? onPressed : null,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          softWrap: true,
          overflow: TextOverflow.ellipsis,
          text,
          style: enabled
              ? Theme.of(context).textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  )
              : Theme.of(context).textTheme.labelMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.onSurface),
        ),
      ),
    );
  }
}
