import 'package:flutter/material.dart';

class CustomSliderTheme extends StatelessWidget {
  final Widget child;

  const CustomSliderTheme({required this.child});

  @override
  Widget build(BuildContext context) {
    const double thumbRadius = 8;
    const double tickMarkLength = 16;

    final activeColor = Theme.of(context).colorScheme.primary;
    final inactiveColor = Theme.of(context).colorScheme.primary;

    return SliderTheme(
      data: SliderThemeData(
        trackHeight: 1,

        /// Thumb
        thumbShape: RoundSliderThumbShape(
          disabledThumbRadius: thumbRadius,
          enabledThumbRadius: thumbRadius,
        ),
        rangeThumbShape: RoundRangeSliderThumbShape(
          disabledThumbRadius: thumbRadius,
          enabledThumbRadius: thumbRadius,
        ),

        /// Tick Mark
        tickMarkShape:
            CustomSliderTickMarkShape(tickMarkLength: tickMarkLength),

        /// Inactive
        inactiveTickMarkColor: inactiveColor,
        inactiveTrackColor: inactiveColor,

        /// Active
        thumbColor: activeColor,
        activeTrackColor: activeColor,
        activeTickMarkColor: activeColor,
      ),
      child: child,
    );
  }
}

class CustomSliderTickMarkShape extends SliderTickMarkShape {
  final double tickMarkLength;

  CustomSliderTickMarkShape({this.tickMarkLength = 9.0});

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required Offset thumbCenter,
    required bool isEnabled,
    required TextDirection textDirection,
  }) {
    final Canvas canvas = context.canvas;
    final Paint paint = Paint()
      ..color = isEnabled
          ? sliderTheme.activeTickMarkColor! // Active color if enabled
          : sliderTheme.inactiveTickMarkColor! // Inactive color if not enabled
      ..strokeWidth = 2.0; // Line thickness

    // Draw the tick mark as a vertical line
    canvas.drawLine(
      Offset(
          center.dx,
          center.dy -
              tickMarkLength /
                  2), // Start at (center.x, dy - half tickMarkLength)
      Offset(
          center.dx,
          center.dy +
              tickMarkLength /
                  2), // End at (center.x, dy + half tickMarkLength)
      paint,
    );
  }

  @override
  Size getPreferredSize(
      {required SliderThemeData sliderTheme, required bool isEnabled}) {
    return Size(3.0,
        tickMarkLength); // Width for the line (height of the tick mark), height is tickMarkLength
  }
}
