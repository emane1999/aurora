import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'verification_state_response_model.freezed.dart';
part 'verification_state_response_model.g.dart';

VerificationStateResponseModel loginResponseModelFromJson(String str) =>
    VerificationStateResponseModel.fromJson(json.decode(str));

String VerificationStateResponseModelToJson(
        VerificationStateResponseModel data) =>
    json.encode(data.toJson());

@freezed
class VerificationStateResponseModel with _$VerificationStateResponseModel {
  const factory VerificationStateResponseModel({
    required Employee employees,
    required String statues,
  }) = _VerificationStateResponseModel;

  factory VerificationStateResponseModel.fromJson(Map<String, dynamic> json) =>
      _$VerificationStateResponseModelFromJson(json);
}

@freezed
class Employee with _$Employee {
  const factory Employee({
    required int employee_id,
    required String name_ar,
    required String name_en,
  }) = _Employee;

  factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);
}
