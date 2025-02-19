// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginStateModel _$LoginStateModelFromJson(Map<String, dynamic> json) {
  return _LoginStateModel.fromJson(json);
}

/// @nodoc
mixin _$LoginStateModel {
  APIResultState get apiResultState => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  LoginResponseModel? get response => throw _privateConstructorUsedError;

  /// Serializes this LoginStateModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginStateModelCopyWith<LoginStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateModelCopyWith<$Res> {
  factory $LoginStateModelCopyWith(
          LoginStateModel value, $Res Function(LoginStateModel) then) =
      _$LoginStateModelCopyWithImpl<$Res, LoginStateModel>;
  @useResult
  $Res call(
      {APIResultState apiResultState,
      String errorMessage,
      LoginResponseModel? response});

  $LoginResponseModelCopyWith<$Res>? get response;
}

/// @nodoc
class _$LoginStateModelCopyWithImpl<$Res, $Val extends LoginStateModel>
    implements $LoginStateModelCopyWith<$Res> {
  _$LoginStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginStateModel
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
              as LoginResponseModel?,
    ) as $Val);
  }

  /// Create a copy of LoginStateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginResponseModelCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $LoginResponseModelCopyWith<$Res>(_value.response!, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginStateModelImplCopyWith<$Res>
    implements $LoginStateModelCopyWith<$Res> {
  factory _$$LoginStateModelImplCopyWith(_$LoginStateModelImpl value,
          $Res Function(_$LoginStateModelImpl) then) =
      __$$LoginStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {APIResultState apiResultState,
      String errorMessage,
      LoginResponseModel? response});

  @override
  $LoginResponseModelCopyWith<$Res>? get response;
}

/// @nodoc
class __$$LoginStateModelImplCopyWithImpl<$Res>
    extends _$LoginStateModelCopyWithImpl<$Res, _$LoginStateModelImpl>
    implements _$$LoginStateModelImplCopyWith<$Res> {
  __$$LoginStateModelImplCopyWithImpl(
      _$LoginStateModelImpl _value, $Res Function(_$LoginStateModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginStateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiResultState = null,
    Object? errorMessage = null,
    Object? response = freezed,
  }) {
    return _then(_$LoginStateModelImpl(
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
              as LoginResponseModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginStateModelImpl implements _LoginStateModel {
  const _$LoginStateModelImpl(
      {this.apiResultState = APIResultState.initial,
      this.errorMessage = "",
      this.response});

  factory _$LoginStateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginStateModelImplFromJson(json);

  @override
  @JsonKey()
  final APIResultState apiResultState;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  final LoginResponseModel? response;

  @override
  String toString() {
    return 'LoginStateModel(apiResultState: $apiResultState, errorMessage: $errorMessage, response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateModelImpl &&
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

  /// Create a copy of LoginStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateModelImplCopyWith<_$LoginStateModelImpl> get copyWith =>
      __$$LoginStateModelImplCopyWithImpl<_$LoginStateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginStateModelImplToJson(
      this,
    );
  }
}

abstract class _LoginStateModel implements LoginStateModel {
  const factory _LoginStateModel(
      {final APIResultState apiResultState,
      final String errorMessage,
      final LoginResponseModel? response}) = _$LoginStateModelImpl;

  factory _LoginStateModel.fromJson(Map<String, dynamic> json) =
      _$LoginStateModelImpl.fromJson;

  @override
  APIResultState get apiResultState;
  @override
  String get errorMessage;
  @override
  LoginResponseModel? get response;

  /// Create a copy of LoginStateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginStateModelImplCopyWith<_$LoginStateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
