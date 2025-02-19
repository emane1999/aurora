// To parse this JSON data, do
//
//     final loginResponseModel = loginResponseModelFromJson(jsonString);
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
part 'login_resposnse_model.freezed.dart';
part 'login_resposnse_model.g.dart';

LoginResponseModel loginResponseModelFromJson(String str) =>
    LoginResponseModel.fromJson(json.decode(str));

String loginResponseModelToJson(LoginResponseModel data) =>
    json.encode(data.toJson());

@freezed
class LoginResponseModel with _$LoginResponseModel {
  const factory LoginResponseModel({
    required Data data,
    required String session_id,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required int user_id,
    required String name,
    required String email,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
