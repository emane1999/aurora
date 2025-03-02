import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DisText extends StatelessWidget {
  final String text;
  final String? hintText;
  const DisText({super.key, required this.text, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
        8.verticalSpace,
        TextFormField(
          enabled: true,
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),

          autovalidateMode: AutovalidateMode.onUserInteraction,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            filled: true, // Enable background color
            fillColor: Theme.of(context).colorScheme.onSurface,
            hintText: hintText,
            suffixIcon: Icon(
              Icons.lock,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
        ),
      ],
    );
  }
}
