// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_info_state_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileInfoStateModelImpl _$$ProfileInfoStateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileInfoStateModelImpl(
      apiResultState: $enumDecodeNullable(
              _$APIResultStateEnumMap, json['apiResultState']) ??
          APIResultState.initial,
      errorMessage: json['errorMessage'] as String? ?? "",
      response: json['response'] == null
          ? null
          : ProfileInfoResponseModel.fromJson(
              json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProfileInfoStateModelImplToJson(
        _$ProfileInfoStateModelImpl instance) =>
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
