// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_space_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkSpaceStateModel _$WorkSpaceStateModelFromJson(Map<String, dynamic> json) {
  return _WorkSpaceStateModel.fromJson(json);
}

/// @nodoc
mixin _$WorkSpaceStateModel {
  APIResultState get apiResultState => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  WorkStateResponseModel? get response => throw _privateConstructorUsedError;

  /// Serializes this WorkSpaceStateModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkSpaceStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkSpaceStateModelCopyWith<WorkSpaceStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkSpaceStateModelCopyWith<$Res> {
  factory $WorkSpaceStateModelCopyWith(
          WorkSpaceStateModel value, $Res Function(WorkSpaceStateModel) then) =
      _$WorkSpaceStateModelCopyWithImpl<$Res, WorkSpaceStateModel>;
  @useResult
  $Res call(
      {APIResultState apiResultState,
      String errorMessage,
      WorkStateResponseModel? response});

  $WorkStateResponseModelCopyWith<$Res>? get response;
}

/// @nodoc
class _$WorkSpaceStateModelCopyWithImpl<$Res, $Val extends WorkSpaceStateModel>
    implements $WorkSpaceStateModelCopyWith<$Res> {
  _$WorkSpaceStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkSpaceStateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiResultState = null,
    Object? errorMessage = null,
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      apiResultState: null == apiResultState
          ? _value.apiResultState
          : apiResultState // ignore: cast_nullable_to_non_nullable
              as APIResultState,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as WorkStateResponseModel?,
    ) as $Val);
  }

  /// Create a copy of WorkSpaceStateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WorkStateResponseModelCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $WorkStateResponseModelCopyWith<$Res>(_value.response!, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WorkSpaceStateModelImplCopyWith<$Res>
    implements $WorkSpaceStateModelCopyWith<$Res> {
  factory _$$WorkSpaceStateModelImplCopyWith(_$WorkSpaceStateModelImpl value,
          $Res Function(_$WorkSpaceStateModelImpl) then) =
      __$$WorkSpaceStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {APIResultState apiResultState,
      String errorMessage,
      WorkStateResponseModel? response});

  @override
  $WorkStateResponseModelCopyWith<$Res>? get response;
}

/// @nodoc
class __$$WorkSpaceStateModelImplCopyWithImpl<$Res>
    extends _$WorkSpaceStateModelCopyWithImpl<$Res, _$WorkSpaceStateModelImpl>
    implements _$$WorkSpaceStateModelImplCopyWith<$Res> {
  __$$WorkSpaceStateModelImplCopyWithImpl(_$WorkSpaceStateModelImpl _value,
      $Res Function(_$WorkSpaceStateModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkSpaceStateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiResultState = null,
    Object? errorMessage = null,
    Object? response = freezed,
  }) {
    return _then(_$WorkSpaceStateModelImpl(
      apiResultState: null == apiResultState
          ? _value.apiResultState
          : apiResultState // ignore: cast_nullable_to_non_nullable
              as APIResultState,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as WorkStateResponseModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkSpaceStateModelImpl implements _WorkSpaceStateModel {
  const _$WorkSpaceStateModelImpl(
      {this.apiResultState = APIResultState.initial,
      this.errorMessage = "",
      this.response});

  factory _$WorkSpaceStateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkSpaceStateModelImplFromJson(json);

  @override
  @JsonKey()
  final APIResultState apiResultState;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  final WorkStateResponseModel? response;

  @override
  String toString() {
    return 'WorkSpaceStateModel(apiResultState: $apiResultState, errorMessage: $errorMessage, response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkSpaceStateModelImpl &&
            (identical(other.apiResultState, apiResultState) ||
                other.apiResultState == apiResultState) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, apiResultState, errorMessage, response);

  /// Create a copy of WorkSpaceStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkSpaceStateModelImplCopyWith<_$WorkSpaceStateModelImpl> get copyWith =>
      __$$WorkSpaceStateModelImplCopyWithImpl<_$WorkSpaceStateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkSpaceStateModelImplToJson(
      this,
    );
  }
}

abstract class _WorkSpaceStateModel implements WorkSpaceStateModel {
  const factory _WorkSpaceStateModel(
      {final APIResultState apiResultState,
      final String errorMessage,
      final WorkStateResponseModel? response}) = _$WorkSpaceStateModelImpl;

  factory _WorkSpaceStateModel.fromJson(Map<String, dynamic> json) =
      _$WorkSpaceStateModelImpl.fromJson;

  @override
  APIResultState get apiResultState;
  @override
  String get errorMessage;
  @override
  WorkStateResponseModel? get response;

  /// Create a copy of WorkSpaceStateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkSpaceStateModelImplCopyWith<_$WorkSpaceStateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
