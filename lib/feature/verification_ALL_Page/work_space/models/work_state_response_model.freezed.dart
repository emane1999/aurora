// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_state_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkStateResponseModel _$WorkStateResponseModelFromJson(
    Map<String, dynamic> json) {
  return _WorkStateResponseModel.fromJson(json);
}

/// @nodoc
mixin _$WorkStateResponseModel {
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;

  /// Serializes this WorkStateResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkStateResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkStateResponseModelCopyWith<WorkStateResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkStateResponseModelCopyWith<$Res> {
  factory $WorkStateResponseModelCopyWith(WorkStateResponseModel value,
          $Res Function(WorkStateResponseModel) then) =
      _$WorkStateResponseModelCopyWithImpl<$Res, WorkStateResponseModel>;
  @useResult
  $Res call({@JsonKey(name: 'message') String message});
}

/// @nodoc
class _$WorkStateResponseModelCopyWithImpl<$Res,
        $Val extends WorkStateResponseModel>
    implements $WorkStateResponseModelCopyWith<$Res> {
  _$WorkStateResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkStateResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkStateResponseModelImplCopyWith<$Res>
    implements $WorkStateResponseModelCopyWith<$Res> {
  factory _$$WorkStateResponseModelImplCopyWith(
          _$WorkStateResponseModelImpl value,
          $Res Function(_$WorkStateResponseModelImpl) then) =
      __$$WorkStateResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'message') String message});
}

/// @nodoc
class __$$WorkStateResponseModelImplCopyWithImpl<$Res>
    extends _$WorkStateResponseModelCopyWithImpl<$Res,
        _$WorkStateResponseModelImpl>
    implements _$$WorkStateResponseModelImplCopyWith<$Res> {
  __$$WorkStateResponseModelImplCopyWithImpl(
      _$WorkStateResponseModelImpl _value,
      $Res Function(_$WorkStateResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkStateResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$WorkStateResponseModelImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkStateResponseModelImpl implements _WorkStateResponseModel {
  const _$WorkStateResponseModelImpl(
      {@JsonKey(name: 'message') required this.message});

  factory _$WorkStateResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkStateResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String message;

  @override
  String toString() {
    return 'WorkStateResponseModel(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkStateResponseModelImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of WorkStateResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkStateResponseModelImplCopyWith<_$WorkStateResponseModelImpl>
      get copyWith => __$$WorkStateResponseModelImplCopyWithImpl<
          _$WorkStateResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkStateResponseModelImplToJson(
      this,
    );
  }
}

abstract class _WorkStateResponseModel implements WorkStateResponseModel {
  const factory _WorkStateResponseModel(
          {@JsonKey(name: 'message') required final String message}) =
      _$WorkStateResponseModelImpl;

  factory _WorkStateResponseModel.fromJson(Map<String, dynamic> json) =
      _$WorkStateResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String get message;

  /// Create a copy of WorkStateResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkStateResponseModelImplCopyWith<_$WorkStateResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
