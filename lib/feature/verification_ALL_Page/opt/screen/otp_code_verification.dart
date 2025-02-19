import 'package:aurora/app_lang/app_language_provider.dart';
import 'package:aurora/commentwidget/b_button.dart';
import 'package:aurora/commentwidget/circlePainter.dart';
import 'package:aurora/feature/verification_ALL_Page/opt/contorl/otp_contorl.dart';
import 'package:aurora/feature/verification_ALL_Page/opt/screen/box_otp.dart';
import 'package:aurora/generated/l10n.dart';
import 'package:bond_form/bond_form.dart' as form;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:go_router/go_router.dart';

class OtpCodeVerification extends ConsumerStatefulWidget {
  const OtpCodeVerification(String? userId, {super.key});

  @override
  ConsumerState<OtpCodeVerification> createState() =>
      _OtpCodeVerificationState();
}

class _OtpCodeVerificationState extends ConsumerState<OtpCodeVerification> {
  bool? hasError;
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(144.0),
        child: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          flexibleSpace: Stack(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.only(start: 16, top: 70.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    32.verticalSpace,
                    Text(
                      S.of(context).verification,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context).colorScheme.surface,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left:
                    ref.read(appLanguageStateProvider).languageCode == 'en'
                        ? 220.w
                        : 0,
                right:
                    ref.read(appLanguageStateProvider).languageCode == 'en'
                        ? 0
                        : 150.w,
                bottom: 140.w,
                child: Center(
                  child: CustomPaint(
                    size: Size(128, 28),
                    painter: CirclePainter(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).colorScheme.shadow,
                offset: Offset(0, -5),
              ),
            ],
          ),
          child: SizedBox(
            height: .80.sh,
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                end: 36.w,
                start: 36.w,
                top: 32.w,
                bottom: 32.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).otpCode,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  8.verticalSpace,
                  RichText(
                    text: TextSpan(
                      text:
                          S.of(context).pleaseTypeTheOtpVerificationCodeSentTo,
                      style: Theme.of(
                        context,
                      ).textTheme.labelMedium?.copyWith(fontSize: 16.sp),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' (+962)099999999',
                          style: Theme.of(context).textTheme.labelMedium
                              ?.copyWith(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  32.verticalSpace,
                  BoxOtp(),
                  Spacer(),
                  Center(
                    child: BButton(
                      enabled: true,
                      S.of(context).signUp,
                      onPressed: () async {
                        await ref.read(otpCodeProvider.notifier).submit();

                        // context
                        //     .pushNamed(AppRoute.new_account_page.name);
                      },
                    ),
                  ),
                  16.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        S.of(context).didntReceiveSms,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      8.horizontalSpace,
                      InkWell(
                        onTap: () {},
                        child: RichText(
                          text: TextSpan(
                            text: S.of(context).resendCode,
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Alexandria',
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  32.verticalSpace,
                  SizedBox(height: MediaQuery.of(context).viewInsets.bottom),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
