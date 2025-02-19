// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerificationStateModel _$VerificationStateModelFromJson(
    Map<String, dynamic> json) {
  return _VerificationStateModel.fromJson(json);
}

/// @nodoc
mixin _$VerificationStateModel {
  APIResultState get apiResultState => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  VerificationStateResponseModel? get response =>
      throw _privateConstructorUsedError;

  /// Serializes this VerificationStateModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerificationStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerificationStateModelCopyWith<VerificationStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationStateModelCopyWith<$Res> {
  factory $VerificationStateModelCopyWith(VerificationStateModel value,
          $Res Function(VerificationStateModel) then) =
      _$VerificationStateModelCopyWithImpl<$Res, VerificationStateModel>;
  @useResult
  $Res call(
      {APIResultState apiResultState,
      String errorMessage,
      VerificationStateResponseModel? response});

  $VerificationStateResponseModelCopyWith<$Res>? get response;
}

/// @nodoc
class _$VerificationStateModelCopyWithImpl<$Res,
        $Val extends VerificationStateModel>
    implements $VerificationStateModelCopyWith<$Res> {
  _$VerificationStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerificationStateModel
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
              as VerificationStateResponseModel?,
    ) as $Val);
  }

  /// Create a copy of VerificationStateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VerificationStateResponseModelCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $VerificationStateResponseModelCopyWith<$Res>(_value.response!,
        (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VerificationStateModelImplCopyWith<$Res>
    implements $VerificationStateModelCopyWith<$Res> {
  factory _$$VerificationStateModelImplCopyWith(
          _$VerificationStateModelImpl value,
          $Res Function(_$VerificationStateModelImpl) then) =
      __$$VerificationStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {APIResultState apiResultState,
      String errorMessage,
      VerificationStateResponseModel? response});

  @override
  $VerificationStateResponseModelCopyWith<$Res>? get response;
}

/// @nodoc
class __$$VerificationStateModelImplCopyWithImpl<$Res>
    extends _$VerificationStateModelCopyWithImpl<$Res,
        _$VerificationStateModelImpl>
    implements _$$VerificationStateModelImplCopyWith<$Res> {
  __$$VerificationStateModelImplCopyWithImpl(
      _$VerificationStateModelImpl _value,
      $Res Function(_$VerificationStateModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationStateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiResultState = null,
    Object? errorMessage = null,
    Object? response = freezed,
  }) {
    return _then(_$VerificationStateModelImpl(
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
              as VerificationStateResponseModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerificationStateModelImpl implements _VerificationStateModel {
  const _$VerificationStateModelImpl(
      {this.apiResultState = APIResultState.initial,
      this.errorMessage = "",
      this.response});

  factory _$VerificationStateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerificationStateModelImplFromJson(json);

  @override
  @JsonKey()
  final APIResultState apiResultState;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  final VerificationStateResponseModel? response;

  @override
  String toString() {
    return 'VerificationStateModel(apiResultState: $apiResultState, errorMessage: $errorMessage, response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationStateModelImpl &&
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

  /// Create a copy of VerificationStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationStateModelImplCopyWith<_$VerificationStateModelImpl>
      get copyWith => __$$VerificationStateModelImplCopyWithImpl<
          _$VerificationStateModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerificationStateModelImplToJson(
      this,
    );
  }
}

abstract class _VerificationStateModel implements VerificationStateModel {
  const factory _VerificationStateModel(
          {final APIResultState apiResultState,
          final String errorMessage,
          final VerificationStateResponseModel? response}) =
      _$VerificationStateModelImpl;

  factory _VerificationStateModel.fromJson(Map<String, dynamic> json) =
      _$VerificationStateModelImpl.fromJson;

  @override
  APIResultState get apiResultState;
  @override
  String get errorMessage;
  @override
  VerificationStateResponseModel? get response;

  /// Create a copy of VerificationStateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerificationStateModelImplCopyWith<_$VerificationStateModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
