// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_info_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileInfoStateModel _$ProfileInfoStateModelFromJson(
    Map<String, dynamic> json) {
  return _ProfileInfoStateModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileInfoStateModel {
  APIResultState get apiResultState => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  ProfileInfoResponseModel? get response => throw _privateConstructorUsedError;

  /// Serializes this ProfileInfoStateModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileInfoStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileInfoStateModelCopyWith<ProfileInfoStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileInfoStateModelCopyWith<$Res> {
  factory $ProfileInfoStateModelCopyWith(ProfileInfoStateModel value,
          $Res Function(ProfileInfoStateModel) then) =
      _$ProfileInfoStateModelCopyWithImpl<$Res, ProfileInfoStateModel>;
  @useResult
  $Res call(
      {APIResultState apiResultState,
      String errorMessage,
      ProfileInfoResponseModel? response});

  $ProfileInfoResponseModelCopyWith<$Res>? get response;
}

/// @nodoc
class _$ProfileInfoStateModelCopyWithImpl<$Res,
        $Val extends ProfileInfoStateModel>
    implements $ProfileInfoStateModelCopyWith<$Res> {
  _$ProfileInfoStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileInfoStateModel
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
              as ProfileInfoResponseModel?,
    ) as $Val);
  }

  /// Create a copy of ProfileInfoStateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileInfoResponseModelCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $ProfileInfoResponseModelCopyWith<$Res>(_value.response!, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileInfoStateModelImplCopyWith<$Res>
    implements $ProfileInfoStateModelCopyWith<$Res> {
  factory _$$ProfileInfoStateModelImplCopyWith(
          _$ProfileInfoStateModelImpl value,
          $Res Function(_$ProfileInfoStateModelImpl) then) =
      __$$ProfileInfoStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {APIResultState apiResultState,
      String errorMessage,
      ProfileInfoResponseModel? response});

  @override
  $ProfileInfoResponseModelCopyWith<$Res>? get response;
}

/// @nodoc
class __$$ProfileInfoStateModelImplCopyWithImpl<$Res>
    extends _$ProfileInfoStateModelCopyWithImpl<$Res,
        _$ProfileInfoStateModelImpl>
    implements _$$ProfileInfoStateModelImplCopyWith<$Res> {
  __$$ProfileInfoStateModelImplCopyWithImpl(_$ProfileInfoStateModelImpl _value,
      $Res Function(_$ProfileInfoStateModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileInfoStateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiResultState = null,
    Object? errorMessage = null,
    Object? response = freezed,
  }) {
    return _then(_$ProfileInfoStateModelImpl(
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
              as ProfileInfoResponseModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileInfoStateModelImpl implements _ProfileInfoStateModel {
  const _$ProfileInfoStateModelImpl(
      {this.apiResultState = APIResultState.initial,
      this.errorMessage = "",
      this.response});

  factory _$ProfileInfoStateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileInfoStateModelImplFromJson(json);

  @override
  @JsonKey()
  final APIResultState apiResultState;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  final ProfileInfoResponseModel? response;

  @override
  String toString() {
    return 'ProfileInfoStateModel(apiResultState: $apiResultState, errorMessage: $errorMessage, response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileInfoStateModelImpl &&
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

  /// Create a copy of ProfileInfoStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileInfoStateModelImplCopyWith<_$ProfileInfoStateModelImpl>
      get copyWith => __$$ProfileInfoStateModelImplCopyWithImpl<
          _$ProfileInfoStateModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileInfoStateModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileInfoStateModel implements ProfileInfoStateModel {
  const factory _ProfileInfoStateModel(
      {final APIResultState apiResultState,
      final String errorMessage,
      final ProfileInfoResponseModel? response}) = _$ProfileInfoStateModelImpl;

  factory _ProfileInfoStateModel.fromJson(Map<String, dynamic> json) =
      _$ProfileInfoStateModelImpl.fromJson;

  @override
  APIResultState get apiResultState;
  @override
  String get errorMessage;
  @override
  ProfileInfoResponseModel? get response;

  /// Create a copy of ProfileInfoStateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileInfoStateModelImplCopyWith<_$ProfileInfoStateModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
