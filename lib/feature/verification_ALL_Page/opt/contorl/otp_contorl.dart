import 'dart:developer';
import 'package:aurora/router/app_router.dart';
import 'package:aurora/router/router_utils.dart';
import 'package:bond_form/bond_form.dart';
import 'package:bond_form_riverpod/bond_form_riverpod.dart';
import 'package:flutter/widgets.dart' as co;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:bond_form/bond_form.dart';

class OtpContorlFormController
    extends AutoDisposeFormStateNotifier<String, Error> {
  @override
  Map<String, FormFieldState> fields() => {
    'otp': TextFieldState(
      null,
      label: "OTP",
      validateOnUpdate: false,
      rules: [Rules.required(), Rules.minLength(4)],
    ),
  };

  @override
  Future<String> onSubmit() async {
    final otp = state.get('otp').value;
    log('otp: $otp');

    await Future.delayed(const Duration(seconds: 1));

    if (otp != '1234') {
      log('Invalid OTP: $otp');
      ref.read(otpCodeProvider.notifier).setError('otp', 'Wrong OTP');
      throw Error();
    }
    navgtorContext?.pushNamed(
      AppRoute.new_account_page.toName,
      // pathParameters: {'userId' :},
    );
    log('OTP validated successfully');
    return 'Success';
  }
}

final otpCodeProvider = NotifierProvider.autoDispose<
  OtpContorlFormController,
  BondFormState<String, Error>
>(OtpContorlFormController.new);
