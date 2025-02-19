// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'organizational_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrganizationalResponseModel _$OrganizationalResponseModelFromJson(
    Map<String, dynamic> json) {
  return _OrganizationalResponseModel.fromJson(json);
}

/// @nodoc
mixin _$OrganizationalResponseModel {
  @JsonKey(name: 'data')
  List<Datum> get data => throw _privateConstructorUsedError;

  /// Serializes this OrganizationalResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrganizationalResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrganizationalResponseModelCopyWith<OrganizationalResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationalResponseModelCopyWith<$Res> {
  factory $OrganizationalResponseModelCopyWith(
          OrganizationalResponseModel value,
          $Res Function(OrganizationalResponseModel) then) =
      _$OrganizationalResponseModelCopyWithImpl<$Res,
          OrganizationalResponseModel>;
  @useResult
  $Res call({@JsonKey(name: 'data') List<Datum> data});
}

/// @nodoc
class _$OrganizationalResponseModelCopyWithImpl<$Res,
        $Val extends OrganizationalResponseModel>
    implements $OrganizationalResponseModelCopyWith<$Res> {
  _$OrganizationalResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrganizationalResponseModel
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
              as List<Datum>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrganizationalResponseModelImplCopyWith<$Res>
    implements $OrganizationalResponseModelCopyWith<$Res> {
  factory _$$OrganizationalResponseModelImplCopyWith(
          _$OrganizationalResponseModelImpl value,
          $Res Function(_$OrganizationalResponseModelImpl) then) =
      __$$OrganizationalResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'data') List<Datum> data});
}

/// @nodoc
class __$$OrganizationalResponseModelImplCopyWithImpl<$Res>
    extends _$OrganizationalResponseModelCopyWithImpl<$Res,
        _$OrganizationalResponseModelImpl>
    implements _$$OrganizationalResponseModelImplCopyWith<$Res> {
  __$$OrganizationalResponseModelImplCopyWithImpl(
      _$OrganizationalResponseModelImpl _value,
      $Res Function(_$OrganizationalResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrganizationalResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$OrganizationalResponseModelImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrganizationalResponseModelImpl
    implements _OrganizationalResponseModel {
  const _$OrganizationalResponseModelImpl(
      {@JsonKey(name: 'data') required final List<Datum> data})
      : _data = data;

  factory _$OrganizationalResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OrganizationalResponseModelImplFromJson(json);

  final List<Datum> _data;
  @override
  @JsonKey(name: 'data')
  List<Datum> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'OrganizationalResponseModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizationalResponseModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of OrganizationalResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganizationalResponseModelImplCopyWith<_$OrganizationalResponseModelImpl>
      get copyWith => __$$OrganizationalResponseModelImplCopyWithImpl<
          _$OrganizationalResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrganizationalResponseModelImplToJson(
      this,
    );
  }
}

abstract class _OrganizationalResponseModel
    implements OrganizationalResponseModel {
  const factory _OrganizationalResponseModel(
          {@JsonKey(name: 'data') required final List<Datum> data}) =
      _$OrganizationalResponseModelImpl;

  factory _OrganizationalResponseModel.fromJson(Map<String, dynamic> json) =
      _$OrganizationalResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  List<Datum> get data;

  /// Create a copy of OrganizationalResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrganizationalResponseModelImplCopyWith<_$OrganizationalResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get position => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  /// Serializes this Datum to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call(
      {@JsonKey(name: 'image_url') String imageUrl,
      String name,
      String position,
      String phone,
      String email});
}

/// @nodoc
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? name = null,
    Object? position = null,
    Object? phone = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatumImplCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$DatumImplCopyWith(
          _$DatumImpl value, $Res Function(_$DatumImpl) then) =
      __$$DatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'image_url') String imageUrl,
      String name,
      String position,
      String phone,
      String email});
}

/// @nodoc
class __$$DatumImplCopyWithImpl<$Res>
    extends _$DatumCopyWithImpl<$Res, _$DatumImpl>
    implements _$$DatumImplCopyWith<$Res> {
  __$$DatumImplCopyWithImpl(
      _$DatumImpl _value, $Res Function(_$DatumImpl) _then)
      : super(_value, _then);

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? name = null,
    Object? position = null,
    Object? phone = null,
    Object? email = null,
  }) {
    return _then(_$DatumImpl(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
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
class _$DatumImpl implements _Datum {
  const _$DatumImpl(
      {@JsonKey(name: 'image_url') required this.imageUrl,
      required this.name,
      required this.position,
      required this.phone,
      required this.email});

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  final String name;
  @override
  final String position;
  @override
  final String phone;
  @override
  final String email;

  @override
  String toString() {
    return 'Datum(imageUrl: $imageUrl, name: $name, position: $position, phone: $phone, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, imageUrl, name, position, phone, email);

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      __$$DatumImplCopyWithImpl<_$DatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumImplToJson(
      this,
    );
  }
}

abstract class _Datum implements Datum {
  const factory _Datum(
      {@JsonKey(name: 'image_url') required final String imageUrl,
      required final String name,
      required final String position,
      required final String phone,
      required final String email}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  String get name;
  @override
  String get position;
  @override
  String get phone;
  @override
  String get email;

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
