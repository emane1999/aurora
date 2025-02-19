// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contract_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContractStateModel _$ContractStateModelFromJson(Map<String, dynamic> json) {
  return _ContractStateModel.fromJson(json);
}

/// @nodoc
mixin _$ContractStateModel {
  APIResultState get apiResultState => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  ContractResponseModel? get response => throw _privateConstructorUsedError;

  /// Serializes this ContractStateModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContractStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContractStateModelCopyWith<ContractStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractStateModelCopyWith<$Res> {
  factory $ContractStateModelCopyWith(
          ContractStateModel value, $Res Function(ContractStateModel) then) =
      _$ContractStateModelCopyWithImpl<$Res, ContractStateModel>;
  @useResult
  $Res call(
      {APIResultState apiResultState,
      String errorMessage,
      ContractResponseModel? response});

  $ContractResponseModelCopyWith<$Res>? get response;
}

/// @nodoc
class _$ContractStateModelCopyWithImpl<$Res, $Val extends ContractStateModel>
    implements $ContractStateModelCopyWith<$Res> {
  _$ContractStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContractStateModel
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
              as ContractResponseModel?,
    ) as $Val);
  }

  /// Create a copy of ContractStateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContractResponseModelCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $ContractResponseModelCopyWith<$Res>(_value.response!, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContractStateModelImplCopyWith<$Res>
    implements $ContractStateModelCopyWith<$Res> {
  factory _$$ContractStateModelImplCopyWith(_$ContractStateModelImpl value,
          $Res Function(_$ContractStateModelImpl) then) =
      __$$ContractStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {APIResultState apiResultState,
      String errorMessage,
      ContractResponseModel? response});

  @override
  $ContractResponseModelCopyWith<$Res>? get response;
}

/// @nodoc
class __$$ContractStateModelImplCopyWithImpl<$Res>
    extends _$ContractStateModelCopyWithImpl<$Res, _$ContractStateModelImpl>
    implements _$$ContractStateModelImplCopyWith<$Res> {
  __$$ContractStateModelImplCopyWithImpl(_$ContractStateModelImpl _value,
      $Res Function(_$ContractStateModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContractStateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiResultState = null,
    Object? errorMessage = null,
    Object? response = freezed,
  }) {
    return _then(_$ContractStateModelImpl(
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
              as ContractResponseModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractStateModelImpl implements _ContractStateModel {
  const _$ContractStateModelImpl(
      {this.apiResultState = APIResultState.initial,
      this.errorMessage = "",
      this.response});

  factory _$ContractStateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractStateModelImplFromJson(json);

  @override
  @JsonKey()
  final APIResultState apiResultState;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  final ContractResponseModel? response;

  @override
  String toString() {
    return 'ContractStateModel(apiResultState: $apiResultState, errorMessage: $errorMessage, response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractStateModelImpl &&
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

  /// Create a copy of ContractStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractStateModelImplCopyWith<_$ContractStateModelImpl> get copyWith =>
      __$$ContractStateModelImplCopyWithImpl<_$ContractStateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractStateModelImplToJson(
      this,
    );
  }
}

abstract class _ContractStateModel implements ContractStateModel {
  const factory _ContractStateModel(
      {final APIResultState apiResultState,
      final String errorMessage,
      final ContractResponseModel? response}) = _$ContractStateModelImpl;

  factory _ContractStateModel.fromJson(Map<String, dynamic> json) =
      _$ContractStateModelImpl.fromJson;

  @override
  APIResultState get apiResultState;
  @override
  String get errorMessage;
  @override
  ContractResponseModel? get response;

  /// Create a copy of ContractStateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContractStateModelImplCopyWith<_$ContractStateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
