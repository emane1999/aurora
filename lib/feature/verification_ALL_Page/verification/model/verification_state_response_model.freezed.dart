// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_state_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerificationStateResponseModel _$VerificationStateResponseModelFromJson(
    Map<String, dynamic> json) {
  return _VerificationStateResponseModel.fromJson(json);
}

/// @nodoc
mixin _$VerificationStateResponseModel {
  Employee get employees => throw _privateConstructorUsedError;
  String get statues => throw _privateConstructorUsedError;

  /// Serializes this VerificationStateResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerificationStateResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerificationStateResponseModelCopyWith<VerificationStateResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationStateResponseModelCopyWith<$Res> {
  factory $VerificationStateResponseModelCopyWith(
          VerificationStateResponseModel value,
          $Res Function(VerificationStateResponseModel) then) =
      _$VerificationStateResponseModelCopyWithImpl<$Res,
          VerificationStateResponseModel>;
  @useResult
  $Res call({Employee employees, String statues});

  $EmployeeCopyWith<$Res> get employees;
}

/// @nodoc
class _$VerificationStateResponseModelCopyWithImpl<$Res,
        $Val extends VerificationStateResponseModel>
    implements $VerificationStateResponseModelCopyWith<$Res> {
  _$VerificationStateResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerificationStateResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employees = null,
    Object? statues = null,
  }) {
    return _then(_value.copyWith(
      employees: null == employees
          ? _value.employees
          : employees // ignore: cast_nullable_to_non_nullable
              as Employee,
      statues: null == statues
          ? _value.statues
          : statues // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of VerificationStateResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmployeeCopyWith<$Res> get employees {
    return $EmployeeCopyWith<$Res>(_value.employees, (value) {
      return _then(_value.copyWith(employees: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VerificationStateResponseModelImplCopyWith<$Res>
    implements $VerificationStateResponseModelCopyWith<$Res> {
  factory _$$VerificationStateResponseModelImplCopyWith(
          _$VerificationStateResponseModelImpl value,
          $Res Function(_$VerificationStateResponseModelImpl) then) =
      __$$VerificationStateResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Employee employees, String statues});

  @override
  $EmployeeCopyWith<$Res> get employees;
}

/// @nodoc
class __$$VerificationStateResponseModelImplCopyWithImpl<$Res>
    extends _$VerificationStateResponseModelCopyWithImpl<$Res,
        _$VerificationStateResponseModelImpl>
    implements _$$VerificationStateResponseModelImplCopyWith<$Res> {
  __$$VerificationStateResponseModelImplCopyWithImpl(
      _$VerificationStateResponseModelImpl _value,
      $Res Function(_$VerificationStateResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationStateResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employees = null,
    Object? statues = null,
  }) {
    return _then(_$VerificationStateResponseModelImpl(
      employees: null == employees
          ? _value.employees
          : employees // ignore: cast_nullable_to_non_nullable
              as Employee,
      statues: null == statues
          ? _value.statues
          : statues // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerificationStateResponseModelImpl
    implements _VerificationStateResponseModel {
  const _$VerificationStateResponseModelImpl(
      {required this.employees, required this.statues});

  factory _$VerificationStateResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VerificationStateResponseModelImplFromJson(json);

  @override
  final Employee employees;
  @override
  final String statues;

  @override
  String toString() {
    return 'VerificationStateResponseModel(employees: $employees, statues: $statues)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationStateResponseModelImpl &&
            (identical(other.employees, employees) ||
                other.employees == employees) &&
            (identical(other.statues, statues) || other.statues == statues));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, employees, statues);

  /// Create a copy of VerificationStateResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationStateResponseModelImplCopyWith<
          _$VerificationStateResponseModelImpl>
      get copyWith => __$$VerificationStateResponseModelImplCopyWithImpl<
          _$VerificationStateResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerificationStateResponseModelImplToJson(
      this,
    );
  }
}

abstract class _VerificationStateResponseModel
    implements VerificationStateResponseModel {
  const factory _VerificationStateResponseModel(
      {required final Employee employees,
      required final String statues}) = _$VerificationStateResponseModelImpl;

  factory _VerificationStateResponseModel.fromJson(Map<String, dynamic> json) =
      _$VerificationStateResponseModelImpl.fromJson;

  @override
  Employee get employees;
  @override
  String get statues;

  /// Create a copy of VerificationStateResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerificationStateResponseModelImplCopyWith<
          _$VerificationStateResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Employee _$EmployeeFromJson(Map<String, dynamic> json) {
  return _Employee.fromJson(json);
}

/// @nodoc
mixin _$Employee {
  int get employee_id => throw _privateConstructorUsedError;
  String get name_ar => throw _privateConstructorUsedError;
  String get name_en => throw _privateConstructorUsedError;

  /// Serializes this Employee to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Employee
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmployeeCopyWith<Employee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeCopyWith<$Res> {
  factory $EmployeeCopyWith(Employee value, $Res Function(Employee) then) =
      _$EmployeeCopyWithImpl<$Res, Employee>;
  @useResult
  $Res call({int employee_id, String name_ar, String name_en});
}

/// @nodoc
class _$EmployeeCopyWithImpl<$Res, $Val extends Employee>
    implements $EmployeeCopyWith<$Res> {
  _$EmployeeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Employee
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee_id = null,
    Object? name_ar = null,
    Object? name_en = null,
  }) {
    return _then(_value.copyWith(
      employee_id: null == employee_id
          ? _value.employee_id
          : employee_id // ignore: cast_nullable_to_non_nullable
              as int,
      name_ar: null == name_ar
          ? _value.name_ar
          : name_ar // ignore: cast_nullable_to_non_nullable
              as String,
      name_en: null == name_en
          ? _value.name_en
          : name_en // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmployeeImplCopyWith<$Res>
    implements $EmployeeCopyWith<$Res> {
  factory _$$EmployeeImplCopyWith(
          _$EmployeeImpl value, $Res Function(_$EmployeeImpl) then) =
      __$$EmployeeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int employee_id, String name_ar, String name_en});
}

/// @nodoc
class __$$EmployeeImplCopyWithImpl<$Res>
    extends _$EmployeeCopyWithImpl<$Res, _$EmployeeImpl>
    implements _$$EmployeeImplCopyWith<$Res> {
  __$$EmployeeImplCopyWithImpl(
      _$EmployeeImpl _value, $Res Function(_$EmployeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Employee
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee_id = null,
    Object? name_ar = null,
    Object? name_en = null,
  }) {
    return _then(_$EmployeeImpl(
      employee_id: null == employee_id
          ? _value.employee_id
          : employee_id // ignore: cast_nullable_to_non_nullable
              as int,
      name_ar: null == name_ar
          ? _value.name_ar
          : name_ar // ignore: cast_nullable_to_non_nullable
              as String,
      name_en: null == name_en
          ? _value.name_en
          : name_en // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmployeeImpl implements _Employee {
  const _$EmployeeImpl(
      {required this.employee_id,
      required this.name_ar,
      required this.name_en});

  factory _$EmployeeImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeImplFromJson(json);

  @override
  final int employee_id;
  @override
  final String name_ar;
  @override
  final String name_en;

  @override
  String toString() {
    return 'Employee(employee_id: $employee_id, name_ar: $name_ar, name_en: $name_en)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeImpl &&
            (identical(other.employee_id, employee_id) ||
                other.employee_id == employee_id) &&
            (identical(other.name_ar, name_ar) || other.name_ar == name_ar) &&
            (identical(other.name_en, name_en) || other.name_en == name_en));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, employee_id, name_ar, name_en);

  /// Create a copy of Employee
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeImplCopyWith<_$EmployeeImpl> get copyWith =>
      __$$EmployeeImplCopyWithImpl<_$EmployeeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeImplToJson(
      this,
    );
  }
}

abstract class _Employee implements Employee {
  const factory _Employee(
      {required final int employee_id,
      required final String name_ar,
      required final String name_en}) = _$EmployeeImpl;

  factory _Employee.fromJson(Map<String, dynamic> json) =
      _$EmployeeImpl.fromJson;

  @override
  int get employee_id;
  @override
  String get name_ar;
  @override
  String get name_en;

  /// Create a copy of Employee
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmployeeImplCopyWith<_$EmployeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
