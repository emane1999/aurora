// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContractResponseModelImpl _$$ContractResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ContractResponseModelImpl(
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ContractResponseModelImplToJson(
        _$ContractResponseModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      contractTime:
          ContractTime.fromJson(json['Contract Time'] as Map<String, dynamic>),
      parties: Parties.fromJson(json['Parties'] as Map<String, dynamic>),
      jobDetails:
          JobDetails.fromJson(json['Job Details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'Contract Time': instance.contractTime,
      'Parties': instance.parties,
      'Job Details': instance.jobDetails,
    };

_$ContractTimeImpl _$$ContractTimeImplFromJson(Map<String, dynamic> json) =>
    _$ContractTimeImpl(
      startDate: DateTime.parse(json['Start Date'] as String),
      endDate: json['End Date'] as String,
      contractPeriod: json['Contract Period'] as String,
      status: json['Status'] as String,
    );

Map<String, dynamic> _$$ContractTimeImplToJson(_$ContractTimeImpl instance) =>
    <String, dynamic>{
      'Start Date': instance.startDate.toIso8601String(),
      'End Date': instance.endDate,
      'Contract Period': instance.contractPeriod,
      'Status': instance.status,
    };

_$JobDetailsImpl _$$JobDetailsImplFromJson(Map<String, dynamic> json) =>
    _$JobDetailsImpl(
      position: json['Position'] as String,
      duration: json['Duration'] as String,
    );

Map<String, dynamic> _$$JobDetailsImplToJson(_$JobDetailsImpl instance) =>
    <String, dynamic>{
      'Position': instance.position,
      'Duration': instance.duration,
    };

_$PartiesImpl _$$PartiesImplFromJson(Map<String, dynamic> json) =>
    _$PartiesImpl(
      employee: json['Employee'] as String,
      organization: json['Organization'] as String,
    );

Map<String, dynamic> _$$PartiesImplToJson(_$PartiesImpl instance) =>
    <String, dynamic>{
      'Employee': instance.employee,
      'Organization': instance.organization,
    };
