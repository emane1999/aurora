// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_state_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpStateModelImpl _$$SignUpStateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SignUpStateModelImpl(
      apiResultState: $enumDecodeNullable(
              _$APIResultStateEnumMap, json['apiResultState']) ??
          APIResultState.initial,
      errorMessage: json['errorMessage'] as String? ?? "",
      response: json['response'] == null
          ? null
          : SignUpResponseModel.fromJson(
              json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SignUpStateModelImplToJson(
        _$SignUpStateModelImpl instance) =>
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
