import 'dart:developer';

import 'package:aurora/core/api_result_state.dart';
import 'package:aurora/core/repository/auth_repo/auth_repository_provider.dart';
import 'package:aurora/feature/verification_ALL_Page/work_space/models/work_space_state_model.dart';
import 'package:aurora/feature/verification_ALL_Page/work_space/models/work_state_response_model.dart';
import 'package:aurora/router/app_router.dart';
import 'package:aurora/router/router_utils.dart';
import 'package:aurora/shared_prefs/app_shared_prefs.dart';
import 'package:bond_form/bond_form.dart';
import 'package:bond_form_riverpod/bond_form_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:retrofit/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'url_workspace.g.dart';

class UrlWorkspaceFormController
    extends AutoDisposeFormStateNotifier<bool, Error> {
  @override
  Map<String, FormFieldState> fields() => {
    'url': TextFieldState(
      null,
      label: "",
      validateOnUpdate: false,
      rules: [
        Rules.required(),
        // Rules.url(),
      ],
    ),
  };

  @override
  Future<bool> onSubmit() async {
    final url = state.get('url').value as String;
    log('email: ${url} ');

    WorkSpaceStateModel result = await ref.read(
      checkAvilabilityProvider(url).future,
    );
    log("${result}-->enssaf");
    if (result.apiResultState == APIResultState.error) {
      ref.read(workUrlProvider.notifier).setError('url', result.errorMessage);
      throw Error();
    }
    AppSharedPrefs().addWorkspaceUrl(url);

    navgtorContext?.pushNamed(AppRoute.login.toName);

    return true;
  }
}

final workUrlProvider = NotifierProvider.autoDispose<
  UrlWorkspaceFormController,
  BondFormState<bool, Error>
>(UrlWorkspaceFormController.new);

@riverpod
Future<WorkSpaceStateModel> checkAvilability(Ref ref, String dbName) async {
  try {
    HttpResponse<WorkStateResponseModel?> result = await ref
        .read(authRepositoryProvider)
        .checkAvilability(dbName);

    WorkSpaceStateModel workSpaseStateModel = WorkSpaceStateModel(
      apiResultState: APIResultState.result,
      response: WorkStateResponseModel(message: result.data?.message ?? ''),
    );

    return Future.value(workSpaseStateModel);
  } catch (e, trace) {
    final workSpaseStateModel = WorkSpaceStateModel(
      apiResultState: APIResultState.error,
      errorMessage: "Workspace not found",
    );

    return Future.value(workSpaseStateModel);
  }
}
