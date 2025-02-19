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
            enabled: false,
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: hintText,
              suffixIcon: Icon(
                Icons.admin_panel_settings,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            )),
      ],
    );
  }
}
