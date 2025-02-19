// To parse this JSON data, do
//
//     final organizationalResponseModel = organizationalResponseModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'organizational_response_model.freezed.dart';
part 'organizational_response_model.g.dart';

OrganizationalResponseModel organizationalResponseModelFromJson(String str) =>
    OrganizationalResponseModel.fromJson(json.decode(str));

String organizationalResponseModelToJson(OrganizationalResponseModel data) =>
    json.encode(data.toJson());

@freezed
class OrganizationalResponseModel with _$OrganizationalResponseModel {
  const factory OrganizationalResponseModel({
    @JsonKey(name: 'data') required List<Datum> data,
  }) = _OrganizationalResponseModel;

  factory OrganizationalResponseModel.fromJson(Map<String, dynamic> json) =>
      _$OrganizationalResponseModelFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    @JsonKey(name: 'image_url') required String imageUrl,
    required String name,
    required String position,
    required String phone,
    required String email,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
