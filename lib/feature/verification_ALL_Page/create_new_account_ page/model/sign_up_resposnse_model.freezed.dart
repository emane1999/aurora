// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_resposnse_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignUpResponseModel _$SignUpResponseModelFromJson(Map<String, dynamic> json) {
  return _SignUpResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SignUpResponseModel {
  Data get data => throw _privateConstructorUsedError;

  /// Serializes this SignUpResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignUpResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpResponseModelCopyWith<SignUpResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpResponseModelCopyWith<$Res> {
  factory $SignUpResponseModelCopyWith(
          SignUpResponseModel value, $Res Function(SignUpResponseModel) then) =
      _$SignUpResponseModelCopyWithImpl<$Res, SignUpResponseModel>;
  @useResult
  $Res call({Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$SignUpResponseModelCopyWithImpl<$Res, $Val extends SignUpResponseModel>
    implements $SignUpResponseModelCopyWith<$Res> {
  _$SignUpResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ) as $Val);
  }

  /// Create a copy of SignUpResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignUpResponseModelImplCopyWith<$Res>
    implements $SignUpResponseModelCopyWith<$Res> {
  factory _$$SignUpResponseModelImplCopyWith(_$SignUpResponseModelImpl value,
          $Res Function(_$SignUpResponseModelImpl) then) =
      __$$SignUpResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SignUpResponseModelImplCopyWithImpl<$Res>
    extends _$SignUpResponseModelCopyWithImpl<$Res, _$SignUpResponseModelImpl>
    implements _$$SignUpResponseModelImplCopyWith<$Res> {
  __$$SignUpResponseModelImplCopyWithImpl(_$SignUpResponseModelImpl _value,
      $Res Function(_$SignUpResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SignUpResponseModelImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpResponseModelImpl implements _SignUpResponseModel {
  const _$SignUpResponseModelImpl({required this.data});

  factory _$SignUpResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpResponseModelImplFromJson(json);

  @override
  final Data data;

  @override
  String toString() {
    return 'SignUpResponseModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpResponseModelImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of SignUpResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpResponseModelImplCopyWith<_$SignUpResponseModelImpl> get copyWith =>
      __$$SignUpResponseModelImplCopyWithImpl<_$SignUpResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpResponseModelImplToJson(
      this,
    );
  }
}

abstract class _SignUpResponseModel implements SignUpResponseModel {
  const factory _SignUpResponseModel({required final Data data}) =
      _$SignUpResponseModelImpl;

  factory _SignUpResponseModel.fromJson(Map<String, dynamic> json) =
      _$SignUpResponseModelImpl.fromJson;

  @override
  Data get data;

  /// Create a copy of SignUpResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpResponseModelImplCopyWith<_$SignUpResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String get db_name => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get mobile => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {String db_name,
      String name,
      String username,
      String password,
      String mobile,
      String email});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? db_name = null,
    Object? name = null,
    Object? username = null,
    Object? password = null,
    Object? mobile = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      db_name: null == db_name
          ? _value.db_name
          : db_name // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String db_name,
      String name,
      String username,
      String password,
      String mobile,
      String email});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? db_name = null,
    Object? name = null,
    Object? username = null,
    Object? password = null,
    Object? mobile = null,
    Object? email = null,
  }) {
    return _then(_$DataImpl(
      db_name: null == db_name
          ? _value.db_name
          : db_name // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {required this.db_name,
      required this.name,
      required this.username,
      required this.password,
      required this.mobile,
      required this.email});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final String db_name;
  @override
  final String name;
  @override
  final String username;
  @override
  final String password;
  @override
  final String mobile;
  @override
  final String email;

  @override
  String toString() {
    return 'Data(db_name: $db_name, name: $name, username: $username, password: $password, mobile: $mobile, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.db_name, db_name) || other.db_name == db_name) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, db_name, name, username, password, mobile, email);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {required final String db_name,
      required final String name,
      required final String username,
      required final String password,
      required final String mobile,
      required final String email}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  String get db_name;
  @override
  String get name;
  @override
  String get username;
  @override
  String get password;
  @override
  String get mobile;
  @override
  String get email;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
