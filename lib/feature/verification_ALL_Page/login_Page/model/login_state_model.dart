import 'package:aurora/core/api_result_state.dart';
import 'package:aurora/feature/verification_ALL_Page/login_Page/model/login_resposnse_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state_model.freezed.dart';
part 'login_state_model.g.dart';

@freezed
class LoginStateModel with _$LoginStateModel {
  const factory LoginStateModel({
    @Default(APIResultState.initial) APIResultState apiResultState,
    @Default("") String errorMessage,
    LoginResponseModel? response,
  }) = _LoginStateModel;

  factory LoginStateModel.fromJson(Map<String, dynamic> json) =>
      _$LoginStateModelFromJson(json);
}
