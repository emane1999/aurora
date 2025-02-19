// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_state_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContractStateModelImpl _$$ContractStateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ContractStateModelImpl(
      apiResultState: $enumDecodeNullable(
              _$APIResultStateEnumMap, json['apiResultState']) ??
          APIResultState.initial,
      errorMessage: json['errorMessage'] as String? ?? "",
      response: json['response'] == null
          ? null
          : ContractResponseModel.fromJson(
              json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ContractStateModelImplToJson(
        _$ContractStateModelImpl instance) =>
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
