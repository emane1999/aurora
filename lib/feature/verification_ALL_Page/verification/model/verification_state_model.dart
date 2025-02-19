import 'package:aurora/core/api_result_state.dart';
import 'package:aurora/feature/verification_ALL_Page/verification/model/verification_state_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'verification_state_model.freezed.dart';
part 'verification_state_model.g.dart';

@freezed
class VerificationStateModel with _$VerificationStateModel {
  const factory VerificationStateModel({
    @Default(APIResultState.initial) APIResultState apiResultState,
    @Default("") String errorMessage,
    VerificationStateResponseModel? response,
  }) = _VerificationStateModel;

  factory VerificationStateModel.fromJson(Map<String, dynamic> json) =>
      _$VerificationStateModelFromJson(json);
}
