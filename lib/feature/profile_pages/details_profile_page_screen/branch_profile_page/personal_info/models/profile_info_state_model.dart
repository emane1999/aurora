import 'package:aurora/core/api_result_state.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_profile_page/personal_info/models/profile_info_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_info_state_model.freezed.dart';
part 'profile_info_state_model.g.dart';

@freezed
class ProfileInfoStateModel with _$ProfileInfoStateModel {
  const factory ProfileInfoStateModel({
    @Default(APIResultState.initial) APIResultState apiResultState,
    @Default("") String errorMessage,
    ProfileInfoResponseModel? response,
  }) = _ProfileInfoStateModel;

  factory ProfileInfoStateModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileInfoStateModelFromJson(json);
}
