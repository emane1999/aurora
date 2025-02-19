import 'package:aurora/core/api_result_state.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_organizational_page/organizational_onfo/model/organizational_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'organizational_state_model.freezed.dart';
part 'organizational_state_model.g.dart';

@freezed
class OrganizationalStateModel with _$OrganizationalStateModel {
  const factory OrganizationalStateModel({
    @Default(APIResultState.initial) APIResultState apiResultState,
    @Default("") String errorMessage,
    OrganizationalResponseModel? response,
  }) = _OrganizationalStateModel;

  factory OrganizationalStateModel.fromJson(Map<String, dynamic> json) =>
      _$OrganizationalStateModelFromJson(json);
}
