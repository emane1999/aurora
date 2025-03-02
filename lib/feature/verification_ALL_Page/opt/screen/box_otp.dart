import 'package:aurora/feature/verification_ALL_Page/opt/contorl/otp_contorl.dart';
import 'package:bond_form/bond_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class BoxOtp extends ConsumerStatefulWidget {
  const BoxOtp({Key? key}) : super(key: key);

  @override
  ConsumerState<BoxOtp> createState() => _BoxOtpState();
}

class _BoxOtpState extends ConsumerState<BoxOtp> {
  @override
  Widget build(BuildContext context) {
    final formState = ref.watch(otpCodeProvider);
    return Column(
      children: [
        Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: PinCodeTextField(
                appContext: context,
                textStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color:
                      Theme.of(context).brightness == Brightness.dark
                          ? Theme.of(context).colorScheme.primary
                          // Dark mode background color
                          : Theme.of(context).colorScheme.onTertiary,
                  fontSize: 24.sp,
                ),
                hintCharacter: "4",
                enableActiveFill: true,
                length: 4,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  errorBorderColor: Theme.of(context).colorScheme.error,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(4),
                  fieldHeight: 49.w,
                  fieldWidth: 57.w,
                  activeFillColor:
                      Theme.of(context).colorScheme.surfaceContainerHigh,
                  inactiveColor: Theme.of(context).colorScheme.onTertiary,
                  activeColor:
                      BondFormStateStatus.failed == formState.status &&
                              BondFormStateStatus.submitted != formState.status
                          ? Theme.of(context).colorScheme.error
                          : Theme.of(context).colorScheme.primary,
                  selectedColor: Theme.of(context).colorScheme.primary,
                  selectedFillColor:
                      Theme.of(context).colorScheme.surfaceContainerHigh,
                  inactiveFillColor:
                      Theme.of(context).colorScheme.surfaceContainerHigh,
                ),
                onChanged: (value) {
                  ref.read(otpCodeProvider.notifier).updateText('otp', value);
                },

                backgroundColor: Colors.transparent,
                cursorColor: Theme.of(context).colorScheme.onTertiary,
                animationDuration: const Duration(milliseconds: 300),
                keyboardType: TextInputType.number,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              heightFactor: 3.5,
              child:
                  BondFormStateStatus.failed == formState.status &&
                          BondFormStateStatus.submitted != formState.status
                      ? Row(
                        children: [
                          Text(
                            formState.error('otp') ?? "",
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
            ),
          ],
        ),
      ],
    );
  }
}
