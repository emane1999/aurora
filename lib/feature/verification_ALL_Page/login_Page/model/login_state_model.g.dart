// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_state_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginStateModelImpl _$$LoginStateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginStateModelImpl(
      apiResultState: $enumDecodeNullable(
              _$APIResultStateEnumMap, json['apiResultState']) ??
          APIResultState.initial,
      errorMessage: json['errorMessage'] as String? ?? "",
      response: json['response'] == null
          ? null
          : LoginResponseModel.fromJson(
              json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginStateModelImplToJson(
        _$LoginStateModelImpl instance) =>
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
