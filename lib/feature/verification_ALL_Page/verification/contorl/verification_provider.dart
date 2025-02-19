import 'dart:developer';

import 'package:aurora/core/api_result_state.dart';
import 'package:aurora/core/repository/auth_repo/auth_repository_provider.dart';
import 'package:aurora/feature/verification_ALL_Page/verification/model/verification_state_model.dart';
import 'package:aurora/feature/verification_ALL_Page/verification/model/verification_state_response_model.dart';
import 'package:aurora/router/app_router.dart';
import 'package:aurora/router/router_utils.dart';
import 'package:bond_form/bond_form.dart';
import 'package:bond_form_riverpod/bond_form_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:retrofit/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'verification_provider.g.dart';

class VerificationContorlFormController
    extends AutoDisposeFormStateNotifier<String, Error> {
  @override
  Map<String, FormFieldState> fields() => {
    'IDNumber': TextFieldState(
      null,
      label: "",
      rules: [
        Rules.required(),
        // Rules.minLength(9),
        Rules.numeric(),
      ],
    ),
    'MobileNumber': TextFieldState(
      null,
      label: "",
      rules: [
        Rules.required(),
        // Rules.minLength(9),
        Rules.numeric(),
      ],
    ),
  };

  @override
  Future<String> onSubmit() async {
    final iDNumber = state.get('IDNumber').value as String;
    log(iDNumber);
    VerificationStateModel result = await ref.read(
      checkuserAvilabilityProvider(iDNumber).future,
    );
    if (result.apiResultState == APIResultState.error) {
      ref
          .read(verificationContorlFormController.notifier)
          .setError('IDNumber', result.errorMessage);
      throw Error();
    }
    navgtorContext?.pushNamed(
      AppRoute.otp_code_verification.toName,
      pathParameters: {'userId': iDNumber},
    );
    return 'Success';
  }
}

final verificationContorlFormController = NotifierProvider.autoDispose<
  VerificationContorlFormController,
  BondFormState<String, Error>
>(VerificationContorlFormController.new);
@riverpod
Future<VerificationStateModel> checkuserAvilability(
  Ref ref,
  String iduser,
) async {
  try {
    HttpResponse<VerificationStateModel?> result = await ref
        .read(authRepositoryProvider)
        .checkuserAvilability(iduser);

    VerificationStateModel verificationStateModel = VerificationStateModel(
      apiResultState: APIResultState.result,
      response: VerificationStateResponseModel(
        employees:
            result.data?.response?.employees ??
            Employee(employee_id: 0, name_ar: "", name_en: ""),
        statues: result.data?.response?.statues ?? "",
      ),
    );

    return Future.value(verificationStateModel);
  } catch (e, trace) {
    print(e);
    print(trace);
    final verificationStateModel = VerificationStateModel(
      apiResultState: APIResultState.error,
      errorMessage: "otp not found",
    );

    return Future.value(verificationStateModel);
  }
}
