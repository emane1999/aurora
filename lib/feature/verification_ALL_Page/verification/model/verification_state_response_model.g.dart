// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification_state_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerificationStateResponseModelImpl
    _$$VerificationStateResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$VerificationStateResponseModelImpl(
          employees:
              Employee.fromJson(json['employees'] as Map<String, dynamic>),
          statues: json['statues'] as String,
        );

Map<String, dynamic> _$$VerificationStateResponseModelImplToJson(
        _$VerificationStateResponseModelImpl instance) =>
    <String, dynamic>{
      'employees': instance.employees,
      'statues': instance.statues,
    };

_$EmployeeImpl _$$EmployeeImplFromJson(Map<String, dynamic> json) =>
    _$EmployeeImpl(
      employee_id: (json['employee_id'] as num).toInt(),
      name_ar: json['name_ar'] as String,
      name_en: json['name_en'] as String,
    );

Map<String, dynamic> _$$EmployeeImplToJson(_$EmployeeImpl instance) =>
    <String, dynamic>{
      'employee_id': instance.employee_id,
      'name_ar': instance.name_ar,
      'name_en': instance.name_en,
    };
