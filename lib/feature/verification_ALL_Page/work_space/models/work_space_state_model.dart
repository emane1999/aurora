import 'package:aurora/core/api_result_state.dart';
import 'package:aurora/feature/verification_ALL_Page/work_space/models/work_state_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'work_space_state_model.freezed.dart';
part 'work_space_state_model.g.dart';

@freezed
class WorkSpaceStateModel with _$WorkSpaceStateModel {
  const factory WorkSpaceStateModel({
    @Default(APIResultState.initial) APIResultState apiResultState,
    @Default("") String errorMessage,
    WorkStateResponseModel? response,
  }) = _WorkSpaceStateModel;

  factory WorkSpaceStateModel.fromJson(Map<String, dynamic> json) =>
      _$WorkSpaceStateModelFromJson(json);
}
