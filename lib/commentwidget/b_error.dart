import 'package:flutter/material.dart';

class BError extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  const BError({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: Theme.of(context).outlinedButtonTheme.style?.copyWith(
            foregroundColor: WidgetStateProperty.all<Color>(Theme.of(context)
                .colorScheme
                .error), // Foreground color for text
            backgroundColor: WidgetStateProperty.all<Color>(
                Theme.of(context).colorScheme.error), // Background color
            side: WidgetStateProperty.all<BorderSide>(BorderSide(
                color: Theme.of(context).colorScheme.error)), // Border color
          ),
      onPressed: onPressed,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          softWrap: true,
          overflow: TextOverflow.ellipsis,
          text,
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.onError),
        ),
      ),
    );
  }
}
