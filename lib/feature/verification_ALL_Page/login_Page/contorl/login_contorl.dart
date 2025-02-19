import 'dart:developer';
import 'package:aurora/core/api_result_state.dart';
import 'package:aurora/core/repository/auth_repo/auth_repository_provider.dart';
import 'package:aurora/feature/verification_ALL_Page/login_Page/model/login_resposnse_model.dart';
import 'package:aurora/feature/verification_ALL_Page/login_Page/model/login_state_model.dart';
import 'package:aurora/router/app_router.dart';
import 'package:aurora/router/router_utils.dart';
import 'package:aurora/shared_prefs/app_shared_prefs.dart';
import 'package:bond_form/bond_form.dart';
import 'package:bond_form_riverpod/bond_form_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'login_contorl.g.dart';

class LoginContorlFormController
    extends AutoDisposeFormStateNotifier<String, Error> {
  @override
  Map<String, FormFieldState> fields() => {
    'email': TextFieldState(
      null,
      label: "",
      rules: [Rules.required(), Rules.email()],
    ),
    'password': TextFieldState(
      null,
      label: "",
      rules: [Rules.required(), Rules.minLength(6), Rules.alphaNum()],
    ),
  };

  @override
  Future<String> onSubmit() async {
    final email = state.get('email').value as String;
    final password = state.get('password').value as String;
    print('press');
    LoginStateModel result = await ref.read(
      checkAvilabilityLoginProvider(password, email).future,
    );
    // log(result as String);
    if (result.apiResultState == APIResultState.error) {
      ref
          .read(loginContorlProvider.notifier)
          .setError('email', result.errorMessage);

      throw Error();
    }

    if (result.apiResultState == APIResultState.error) {
      ref
          .read(loginContorlProvider.notifier)
          .setError('password', result.errorMessage);

      throw Error();
    }

    navgtorContext?.pushNamed(AppRoute.home_page.toName);

    return 'Success';
  }
}

final loginContorlProvider = NotifierProvider.autoDispose<
  LoginContorlFormController,
  BondFormState<String, Error>
>(LoginContorlFormController.new);

@riverpod
Future<LoginStateModel> checkAvilabilityLogin(
  Ref ref,
  String userName,
  String password,
) async {
  try {
    String? database = await AppSharedPrefs().UrlWorkspaceGet();
    log(database as String);
    var result = await ref
        .read(authRepositoryProvider)
        .login(database, password, userName);
    // var result2 = await ref
    //     .read(authRepositoryProvider)
    //     .login(database, userName, password);

    var loginStateModel = LoginStateModel(
      apiResultState: APIResultState.result,
      response: LoginResponseModel(
        data: result.data!.data,
        session_id: result.data?.session_id ?? '',
      ),
    );

    return Future.value(loginStateModel);
  } catch (e, trace) {
    print("${e.toString() + trace.toString()}-->rrrr");
    final loginStateModel = LoginStateModel(
      apiResultState: APIResultState.error,
      errorMessage: "Login failed. Please try again.",
    );
    return Future.value(loginStateModel);
  }
}
