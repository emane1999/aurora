// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification_state_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerificationStateModelImpl _$$VerificationStateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VerificationStateModelImpl(
      apiResultState: $enumDecodeNullable(
              _$APIResultStateEnumMap, json['apiResultState']) ??
          APIResultState.initial,
      errorMessage: json['errorMessage'] as String? ?? "",
      response: json['response'] == null
          ? null
          : VerificationStateResponseModel.fromJson(
              json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VerificationStateModelImplToJson(
        _$VerificationStateModelImpl instance) =>
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
