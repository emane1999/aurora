import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_resposnse_model.freezed.dart';
part 'sign_up_resposnse_model.g.dart';

SignUpResponseModel signUpResponseModelFromJson(String str) =>
    SignUpResponseModel.fromJson(json.decode(str));

String signUpResponseModelToJson(SignUpResponseModel data) =>
    json.encode(data.toJson());

@freezed
class SignUpResponseModel with _$SignUpResponseModel {
  const factory SignUpResponseModel({
    required Data data,
  }) = _SignUpResponseModel;

  factory SignUpResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required String db_name,
    required String name,
    required String username,
    required String password,
    required String mobile,
    required String email,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  factory Data.toJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
