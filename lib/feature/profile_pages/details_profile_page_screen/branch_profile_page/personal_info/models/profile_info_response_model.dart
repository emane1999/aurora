// To parse this JSON data, do
//
//     final profileInfoResponseModel = profileInfoResponseModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'profile_info_response_model.freezed.dart';
part 'profile_info_response_model.g.dart';

ProfileInfoResponseModel profileInfoResponseModelFromJson(String str) =>
    ProfileInfoResponseModel.fromJson(json.decode(str));

String profileInfoResponseModelToJson(ProfileInfoResponseModel data) =>
    json.encode(data.toJson());

@freezed
class ProfileInfoResponseModel with _$ProfileInfoResponseModel {
  const factory ProfileInfoResponseModel({
    @JsonKey(name: 'full_name') required String fullName,
    required String position,
    @JsonKey(name: 'employee_number') required String employeeNumber,
    required String birthday,
    required String gender,
    @JsonKey(name: 'marital_status') required String maritalStatus,
    @JsonKey(name: 'mobile_number') required String mobileNumber,
    @JsonKey(name: 'id_number') required String idNumber,
    required String nationality,
    required String religion,
    @JsonKey(name: 'building_number') required String buildingNumber,
    @JsonKey(name: 'street_name') required String streetName,
    required String city,
    required String country,
  }) = _ProfileInfoResponseModel;

  factory ProfileInfoResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileInfoResponseModelFromJson(json);
}
