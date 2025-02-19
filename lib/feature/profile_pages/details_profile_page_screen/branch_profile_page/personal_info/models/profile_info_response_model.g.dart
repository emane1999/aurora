// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_info_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileInfoResponseModelImpl _$$ProfileInfoResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileInfoResponseModelImpl(
      fullName: json['full_name'] as String,
      position: json['position'] as String,
      employeeNumber: json['employee_number'] as String,
      birthday: json['birthday'] as String,
      gender: json['gender'] as String,
      maritalStatus: json['marital_status'] as String,
      mobileNumber: json['mobile_number'] as String,
      idNumber: json['id_number'] as String,
      nationality: json['nationality'] as String,
      religion: json['religion'] as String,
      buildingNumber: json['building_number'] as String,
      streetName: json['street_name'] as String,
      city: json['city'] as String,
      country: json['country'] as String,
    );

Map<String, dynamic> _$$ProfileInfoResponseModelImplToJson(
        _$ProfileInfoResponseModelImpl instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
      'position': instance.position,
      'employee_number': instance.employeeNumber,
      'birthday': instance.birthday,
      'gender': instance.gender,
      'marital_status': instance.maritalStatus,
      'mobile_number': instance.mobileNumber,
      'id_number': instance.idNumber,
      'nationality': instance.nationality,
      'religion': instance.religion,
      'building_number': instance.buildingNumber,
      'street_name': instance.streetName,
      'city': instance.city,
      'country': instance.country,
    };
