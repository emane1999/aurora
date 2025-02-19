import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_customizations_admin/customizations_admin_page/screen/custom_slider_theme.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_customizations_admin/customizations_admin_page/screen/utils.dart';
import 'package:flutter/material.dart';

class SliderShapeWidget extends StatefulWidget {
  @override
  _SliderShapeWidgetState createState() => _SliderShapeWidgetState();
}

class _SliderShapeWidgetState extends State<SliderShapeWidget> {
  int indexSlider = 0;

  @override
  Widget build(BuildContext context) => CustomSliderTheme(child: buildSlider());

  Widget buildSlider() {
    final labels = ['14', '16', '20', ' 24']; // The labels you mentioned
    final double min = 0;
    final double max = labels.length - 1.0;
    final divisions = labels.length - 1;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Slider(
          value: indexSlider.toDouble(),
          min: min,
          max: max,
          divisions: divisions,
          label: labels[indexSlider],
          onChanged:
              (value) => setState(() => this.indexSlider = value.toInt()),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: Utils.modelBuilder(labels, (index, label) {
              final selectedColor = Colors.black;
              final unselectedColor = Colors.black.withOpacity(0.3);
              final isSelected = index <= indexSlider;
              final color = isSelected ? selectedColor : unselectedColor;

              final fontSize = double.tryParse(label.trim()) ?? 16.0;

              return buildLabel(
                label: label,
                color: color,
                width: 30,
                fontSize: fontSize,
              );
            }),
          ),
        ),
      ],
    );
  }

  Widget buildLabel({
    required String label,
    required double width,
    required Color color,
    required double fontSize,
  }) => Container(
    width: width,
    child: Text(
      "A",
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.labelSmall?.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: fontSize,
      ),
    ),
  );
}
