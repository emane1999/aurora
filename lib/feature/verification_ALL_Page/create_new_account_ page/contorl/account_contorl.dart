import 'dart:developer';

import 'package:aurora/core/api_result_state.dart';
import 'package:aurora/core/repository/auth_repo/auth_repository_provider.dart';
import 'package:aurora/feature/verification_ALL_Page/create_new_account_%20page/model/sign_up_model.dart';
import 'package:aurora/feature/verification_ALL_Page/create_new_account_%20page/model/sign_up_resposnse_model.dart';
import 'package:aurora/feature/verification_ALL_Page/create_new_account_%20page/model/sign_up_state_model.dart';
import 'package:aurora/router/app_router.dart';
import 'package:aurora/router/router_utils.dart';
import 'package:aurora/shared_prefs/app_shared_prefs.dart';
import 'package:bond_form/bond_form.dart';
import 'package:bond_form_riverpod/bond_form_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'account_contorl.g.dart';

class AccountContorlFormController
    extends AutoDisposeFormStateNotifier<String, Error> {
  @override
  Map<String, FormFieldState> fields() => {
    'emails': TextFieldState(
      null,
      label: "",
      rules: [Rules.required(), Rules.email()],
    ),
    'pass': TextFieldState(
      null,
      label: "",
      rules: [Rules.required(), Rules.minLength(8), Rules.alphaNum()],
    ),
    'confirmPassword': TextFieldState(
      null,
      label: "",
      rules: [Rules.required(), Rules.same(otherField: 'pass')],
    ),
    'checkbox': CheckboxFieldState<bool>(
      false,
      label: '',
      rules: [Rules.isTrue()],
    ),
  };

  @override
  Future<String> onSubmit() async {
    final email = state.get('emails').value as String;
    final pass = state.get('pass').value as String;

    String? database = await AppSharedPrefs().UrlWorkspaceGet();
    SignUpStateModel result = await ref.read(
      checkSignUpProvider(
        SignUpModel(
          db_name: database as String,
          name: "enssaf",
          username: email,
          password: pass,
          mobile: "072611188",
          email: email,
          user_id: 16,
        ),
      ).future,
    );
    print(result.apiResultState == APIResultState.error);

    navgtorContext?.pushNamed(AppRoute.home_page.toName);
    return 'Success';
  }
}

final accountContorlProvider = NotifierProvider.autoDispose<
  AccountContorlFormController,
  BondFormState<String, Error>
>(AccountContorlFormController.new);

@riverpod
Future<SignUpStateModel> checkSignUp(Ref ref, SignUpModel signUpModel) async {
  try {
    Map<String, dynamic> signUpData = {
      "params": {"data": signUpModel.toJson()},
    };

    final result = await ref
        .read(authRepositoryProvider)
        .updateUsers(signUpData);

    final signUpStateModel = SignUpStateModel(
      apiResultState: APIResultState.result,
      response: SignUpResponseModel(data: result['data']),
    );

    return signUpStateModel;
  } catch (e, trace) {
    // Handle errors and update the UI
    final signUpStateModel = SignUpStateModel(
      apiResultState: APIResultState.error,
      errorMessage: "An error occurred during sign-up: $e",
    );

    return signUpStateModel;
  }
}
