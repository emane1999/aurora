// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpModelImpl _$$SignUpModelImplFromJson(Map<String, dynamic> json) =>
    _$SignUpModelImpl(
      user_id: (json['user_id'] as num).toInt(),
      db_name: json['db_name'] as String,
      name: json['name'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      mobile: json['mobile'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$SignUpModelImplToJson(_$SignUpModelImpl instance) =>
    <String, dynamic>{
      'user_id': instance.user_id,
      'db_name': instance.db_name,
      'name': instance.name,
      'username': instance.username,
      'password': instance.password,
      'mobile': instance.mobile,
      'email': instance.email,
    };
