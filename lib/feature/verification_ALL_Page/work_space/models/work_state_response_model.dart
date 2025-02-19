import 'package:freezed_annotation/freezed_annotation.dart';
part 'work_state_response_model.freezed.dart';
part 'work_state_response_model.g.dart';

@freezed
class WorkStateResponseModel with _$WorkStateResponseModel {
  const factory WorkStateResponseModel({
    @JsonKey(name: 'message') required String message,
  }) = _WorkStateResponseModel;

  factory WorkStateResponseModel.fromJson(Map<String, dynamic> json) =>
      _$WorkStateResponseModelFromJson(json);
}
