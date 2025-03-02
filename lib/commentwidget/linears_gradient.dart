import 'package:aurora/theme/all_color.dart';
import 'package:flutter/material.dart';

class LinersGradientButton extends StatelessWidget {
  final List<Color> gradientColors;
  final Widget child;
  final bool isborder;
  LinersGradientButton({
    this.gradientColors = const [lin_1, lin_2, lin_3, lin_4, lin_5, lin_6],

    required this.child,
    required this.isborder,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.zero,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: gradientColors),
        borderRadius:
            isborder
                ? BorderRadius.circular(24)
                : BorderRadius.circular(4), // Optional: Add rounded corners
      ),

      child: child,
    );
  }
}
