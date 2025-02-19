// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organizational_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrganizationalResponseModelImpl _$$OrganizationalResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrganizationalResponseModelImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrganizationalResponseModelImplToJson(
        _$OrganizationalResponseModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      imageUrl: json['image_url'] as String,
      name: json['name'] as String,
      position: json['position'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'image_url': instance.imageUrl,
      'name': instance.name,
      'position': instance.position,
      'phone': instance.phone,
      'email': instance.email,
    };
