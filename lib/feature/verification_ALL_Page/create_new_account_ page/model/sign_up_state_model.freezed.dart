// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignUpStateModel _$SignUpStateModelFromJson(Map<String, dynamic> json) {
  return _SignUpStateModel.fromJson(json);
}

/// @nodoc
mixin _$SignUpStateModel {
  APIResultState get apiResultState => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  SignUpResponseModel? get response => throw _privateConstructorUsedError;

  /// Serializes this SignUpStateModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignUpStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpStateModelCopyWith<SignUpStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateModelCopyWith<$Res> {
  factory $SignUpStateModelCopyWith(
          SignUpStateModel value, $Res Function(SignUpStateModel) then) =
      _$SignUpStateModelCopyWithImpl<$Res, SignUpStateModel>;
  @useResult
  $Res call(
      {APIResultState apiResultState,
      String errorMessage,
      SignUpResponseModel? response});

  $SignUpResponseModelCopyWith<$Res>? get response;
}

/// @nodoc
class _$SignUpStateModelCopyWithImpl<$Res, $Val extends SignUpStateModel>
    implements $SignUpStateModelCopyWith<$Res> {
  _$SignUpStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpStateModel
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
              as SignUpResponseModel?,
    ) as $Val);
  }

  /// Create a copy of SignUpStateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SignUpResponseModelCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $SignUpResponseModelCopyWith<$Res>(_value.response!, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignUpStateModelImplCopyWith<$Res>
    implements $SignUpStateModelCopyWith<$Res> {
  factory _$$SignUpStateModelImplCopyWith(_$SignUpStateModelImpl value,
          $Res Function(_$SignUpStateModelImpl) then) =
      __$$SignUpStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {APIResultState apiResultState,
      String errorMessage,
      SignUpResponseModel? response});

  @override
  $SignUpResponseModelCopyWith<$Res>? get response;
}

/// @nodoc
class __$$SignUpStateModelImplCopyWithImpl<$Res>
    extends _$SignUpStateModelCopyWithImpl<$Res, _$SignUpStateModelImpl>
    implements _$$SignUpStateModelImplCopyWith<$Res> {
  __$$SignUpStateModelImplCopyWithImpl(_$SignUpStateModelImpl _value,
      $Res Function(_$SignUpStateModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpStateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiResultState = null,
    Object? errorMessage = null,
    Object? response = freezed,
  }) {
    return _then(_$SignUpStateModelImpl(
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
              as SignUpResponseModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpStateModelImpl
    with DiagnosticableTreeMixin
    implements _SignUpStateModel {
  const _$SignUpStateModelImpl(
      {this.apiResultState = APIResultState.initial,
      this.errorMessage = "",
      this.response});

  factory _$SignUpStateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpStateModelImplFromJson(json);

  @override
  @JsonKey()
  final APIResultState apiResultState;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  final SignUpResponseModel? response;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpStateModel(apiResultState: $apiResultState, errorMessage: $errorMessage, response: $response)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpStateModel'))
      ..add(DiagnosticsProperty('apiResultState', apiResultState))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(DiagnosticsProperty('response', response));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateModelImpl &&
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

  /// Create a copy of SignUpStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateModelImplCopyWith<_$SignUpStateModelImpl> get copyWith =>
      __$$SignUpStateModelImplCopyWithImpl<_$SignUpStateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpStateModelImplToJson(
      this,
    );
  }
}

abstract class _SignUpStateModel implements SignUpStateModel {
  const factory _SignUpStateModel(
      {final APIResultState apiResultState,
      final String errorMessage,
      final SignUpResponseModel? response}) = _$SignUpStateModelImpl;

  factory _SignUpStateModel.fromJson(Map<String, dynamic> json) =
      _$SignUpStateModelImpl.fromJson;

  @override
  APIResultState get apiResultState;
  @override
  String get errorMessage;
  @override
  SignUpResponseModel? get response;

  /// Create a copy of SignUpStateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpStateModelImplCopyWith<_$SignUpStateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
