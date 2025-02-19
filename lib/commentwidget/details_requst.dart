import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsRequst extends StatelessWidget {
  final String tite;
  final String subTite;

  const DetailsRequst({
    super.key,
    required this.tite,
    required this.subTite,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        Text(
          tite,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
        ),
        Text(
          subTite,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                fontWeight: FontWeight.w300,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
        ),
      ],
    );
  }
}
