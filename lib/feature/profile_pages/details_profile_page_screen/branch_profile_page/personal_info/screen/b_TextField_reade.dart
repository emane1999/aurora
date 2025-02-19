import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BTextfieldReade extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final Widget? suffixIcon;
  final FocusNode? focusNode;
  final String? lable;
  final bool? readOnly;
  final Function(String)? onChanged;
  final TextInputType inputType;
  const BTextfieldReade(
      {super.key,
      this.controller,
      this.hintText,
      this.suffixIcon,
      this.lable,
      this.onChanged,
      required this.inputType,
      this.focusNode,
      required this.readOnly});

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
            hintText: hintText,
            suffixIcon: suffixIcon,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
              borderSide: readOnly!
                  ? BorderSide(
                      color: Theme.of(context).colorScheme.onSurfaceVariant)
                  : BorderSide(color: Colors.transparent),
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
