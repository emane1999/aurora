// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_resposnse_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseModelImpl _$$LoginResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginResponseModelImpl(
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
      session_id: json['session_id'] as String,
    );

Map<String, dynamic> _$$LoginResponseModelImplToJson(
        _$LoginResponseModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'session_id': instance.session_id,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      user_id: (json['user_id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'user_id': instance.user_id,
      'name': instance.name,
      'email': instance.email,
    };
