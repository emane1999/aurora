// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organizational_state_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrganizationalStateModelImpl _$$OrganizationalStateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrganizationalStateModelImpl(
      apiResultState: $enumDecodeNullable(
              _$APIResultStateEnumMap, json['apiResultState']) ??
          APIResultState.initial,
      errorMessage: json['errorMessage'] as String? ?? "",
      response: json['response'] == null
          ? null
          : OrganizationalResponseModel.fromJson(
              json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrganizationalStateModelImplToJson(
        _$OrganizationalStateModelImpl instance) =>
    <String, dynamic>{
      'apiResultState': _$APIResultStateEnumMap[instance.apiResultState]!,
      'errorMessage': instance.errorMessage,
      'response': instance.response,
    };

const _$APIResultStateEnumMap = {
  APIResultState.initial: 'initial',
  APIResultState.loading: 'loading',
  APIResultState.result: 'result',
  APIResultState.error: 'error',
};
