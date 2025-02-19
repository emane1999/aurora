import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BTextfieldEdit extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final Widget? suffixIcon;
  final FocusNode? focusNode;
  final String? lable;
  final bool? readOnly;
  final Function(String)? onChanged;
  final TextInputType inputType;
  const BTextfieldEdit(
      {super.key,
      this.controller,
      this.hintText,
      this.suffixIcon,
      this.focusNode,
      this.lable,
      this.readOnly,
      this.onChanged,
      required this.inputType});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          lable ?? "",
          style: Theme.of(context).textTheme.labelSmall,
        ),
        8.verticalSpace,
        TextFormField(
          readOnly: readOnly!,
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: Theme.of(context).colorScheme.onTertiary,
              ),
          controller: controller,
          focusNode: focusNode,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.tertiary,
              ),
            ),
            hintText: hintText,
            suffixIcon: suffixIcon,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
              borderSide: readOnly!
                  ? BorderSide(color: Colors.transparent)
                  : BorderSide(color: Theme.of(context).colorScheme.tertiary),
            ),
          ),
          autocorrect: false,
          keyboardType: inputType,
          onChanged: onChanged,
        )
      ],
    );
  }
}
