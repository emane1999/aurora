// To parse this JSON data, do
//
//     final contractResponseModel = contractResponseModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'contract_response_model.freezed.dart';
part 'contract_response_model.g.dart';

ContractResponseModel contractResponseModelFromJson(String str) =>
    ContractResponseModel.fromJson(json.decode(str));

String contractResponseModelToJson(ContractResponseModel data) =>
    json.encode(data.toJson());

@freezed
class ContractResponseModel with _$ContractResponseModel {
  const factory ContractResponseModel({
    required Data data,
  }) = _ContractResponseModel;

  factory ContractResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ContractResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: 'Contract Time') required ContractTime contractTime,
    @JsonKey(name: 'Parties') required Parties parties,
    @JsonKey(name: 'Job Details') required JobDetails jobDetails,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class ContractTime with _$ContractTime {
  const factory ContractTime({
    @JsonKey(name: 'Start Date') required DateTime startDate,
    @JsonKey(name: 'End Date') required String endDate,
    @JsonKey(name: 'Contract Period') required String contractPeriod,
    @JsonKey(name: 'Status') required String status,
  }) = _ContractTime;

  factory ContractTime.fromJson(Map<String, dynamic> json) =>
      _$ContractTimeFromJson(json);
}

@freezed
class JobDetails with _$JobDetails {
  const factory JobDetails({
    @JsonKey(name: 'Position') required String position,
    @JsonKey(name: 'Duration') required String duration,
  }) = _JobDetails;

  factory JobDetails.fromJson(Map<String, dynamic> json) =>
      _$JobDetailsFromJson(json);
}

@freezed
class Parties with _$Parties {
  const factory Parties({
    @JsonKey(name: 'Employee') required String employee,
    @JsonKey(name: 'Organization') required String organization,
  }) = _Parties;

  factory Parties.fromJson(Map<String, dynamic> json) =>
      _$PartiesFromJson(json);
}
