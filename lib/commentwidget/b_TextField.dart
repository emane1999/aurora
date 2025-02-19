import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bond_form/bond_form.dart';

class BTextField extends ConsumerWidget {
  final TextEditingController? controller;
  final bool? isfontWeights;
  final FocusNode? focusNode;
  final String? hintText;
  final String? statetext;
  final Widget? suffixIcon;
  final String? obscuringCharacter;
  final VoidCallback? onEditingComplete;
  final bool obscureText;
  final String? lable;
  final TextInputType inputType;
  final ProviderListenable<dynamic>? provider;
  final Function(String)? onChanged;
  final FormFieldValidator<String>? validator;

  const BTextField({
    this.isfontWeights,
    this.lable,
    super.key,
    this.controller,
    this.provider,
    this.obscuringCharacter,
    this.statetext,
    this.focusNode,
    this.hintText,
    this.onChanged,
    this.suffixIcon,
    this.inputType = TextInputType.text,
    this.validator,
    this.onEditingComplete,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formState = ref.watch(provider!);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          lable ?? "",
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
            fontWeight:
                isfontWeights ?? false ? FontWeight.w300 : FontWeight.w500,
          ),
        ),
        8.verticalSpace,
        TextFormField(
          enabled: true,
          obscuringCharacter: obscuringCharacter ?? ".",
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
                color:
                    formState.error(statetext) == null
                        ? Theme.of(context).colorScheme.onTertiary
                        : Colors.transparent,
              ),
            ),
            error:
                formState.error(statetext) != null
                    ? Row(
                      children: [
                        Text(
                          formState.error(statetext) ?? "",
                          style: Theme.of(
                            context,
                          ).textTheme.labelSmall?.copyWith(
                            color: Theme.of(context).colorScheme.onError,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.error_outline_sharp,
                          color: Theme.of(context).colorScheme.onError,
                        ),
                      ],
                    )
                    : null,
            hintText: hintText,
            suffixIcon: suffixIcon,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
              borderSide:
                  controller!.text.isEmpty
                      ? BorderSide(color: Colors.transparent)
                      : BorderSide(
                        color: Theme.of(context).colorScheme.onTertiary,
                      ),
            ),
          ),
          obscureText: obscureText,
          autocorrect: true,
          keyboardType: inputType,
          validator: validator,
          onChanged: onChanged,
          onEditingComplete: onEditingComplete,
        ),
      ],
    );
  }
}
