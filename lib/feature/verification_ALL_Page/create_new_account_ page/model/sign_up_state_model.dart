import 'package:aurora/core/api_result_state.dart';
import 'package:aurora/feature/verification_ALL_Page/create_new_account_%20page/model/sign_up_resposnse_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_state_model.freezed.dart';
part 'sign_up_state_model.g.dart';

@freezed
class SignUpStateModel with _$SignUpStateModel {
  const factory SignUpStateModel({
    @Default(APIResultState.initial) APIResultState apiResultState,
    @Default("") String errorMessage,
    SignUpResponseModel? response,
  }) = _SignUpStateModel;
  factory SignUpStateModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpStateModelFromJson(json);
}
