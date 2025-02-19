// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_resposnse_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpResponseModelImpl _$$SignUpResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SignUpResponseModelImpl(
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SignUpResponseModelImplToJson(
        _$SignUpResponseModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      db_name: json['db_name'] as String,
      name: json['name'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      mobile: json['mobile'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'db_name': instance.db_name,
      'name': instance.name,
      'username': instance.username,
      'password': instance.password,
      'mobile': instance.mobile,
      'email': instance.email,
    };
