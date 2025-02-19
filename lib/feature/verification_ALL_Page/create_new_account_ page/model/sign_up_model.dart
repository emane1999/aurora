import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_model.freezed.dart';
part 'sign_up_model.g.dart';

@freezed
class SignUpModel with _$SignUpModel {
  const factory SignUpModel({
    required int user_id,
    required String db_name,
    required String name,
    required String username,
    required String password,
    required String mobile,
    required String email,
  }) = _SignUpModel;

  factory SignUpModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpModelFromJson(json);
}
