// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'organizational_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrganizationalStateModel _$OrganizationalStateModelFromJson(
    Map<String, dynamic> json) {
  return _OrganizationalStateModel.fromJson(json);
}

/// @nodoc
mixin _$OrganizationalStateModel {
  APIResultState get apiResultState => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  OrganizationalResponseModel? get response =>
      throw _privateConstructorUsedError;

  /// Serializes this OrganizationalStateModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrganizationalStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrganizationalStateModelCopyWith<OrganizationalStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationalStateModelCopyWith<$Res> {
  factory $OrganizationalStateModelCopyWith(OrganizationalStateModel value,
          $Res Function(OrganizationalStateModel) then) =
      _$OrganizationalStateModelCopyWithImpl<$Res, OrganizationalStateModel>;
  @useResult
  $Res call(
      {APIResultState apiResultState,
      String errorMessage,
      OrganizationalResponseModel? response});

  $OrganizationalResponseModelCopyWith<$Res>? get response;
}

/// @nodoc
class _$OrganizationalStateModelCopyWithImpl<$Res,
        $Val extends OrganizationalStateModel>
    implements $OrganizationalStateModelCopyWith<$Res> {
  _$OrganizationalStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrganizationalStateModel
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
              as OrganizationalResponseModel?,
    ) as $Val);
  }

  /// Create a copy of OrganizationalStateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrganizationalResponseModelCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $OrganizationalResponseModelCopyWith<$Res>(_value.response!,
        (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrganizationalStateModelImplCopyWith<$Res>
    implements $OrganizationalStateModelCopyWith<$Res> {
  factory _$$OrganizationalStateModelImplCopyWith(
          _$OrganizationalStateModelImpl value,
          $Res Function(_$OrganizationalStateModelImpl) then) =
      __$$OrganizationalStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {APIResultState apiResultState,
      String errorMessage,
      OrganizationalResponseModel? response});

  @override
  $OrganizationalResponseModelCopyWith<$Res>? get response;
}

/// @nodoc
class __$$OrganizationalStateModelImplCopyWithImpl<$Res>
    extends _$OrganizationalStateModelCopyWithImpl<$Res,
        _$OrganizationalStateModelImpl>
    implements _$$OrganizationalStateModelImplCopyWith<$Res> {
  __$$OrganizationalStateModelImplCopyWithImpl(
      _$OrganizationalStateModelImpl _value,
      $Res Function(_$OrganizationalStateModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrganizationalStateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiResultState = null,
    Object? errorMessage = null,
    Object? response = freezed,
  }) {
    return _then(_$OrganizationalStateModelImpl(
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
              as OrganizationalResponseModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrganizationalStateModelImpl implements _OrganizationalStateModel {
  const _$OrganizationalStateModelImpl(
      {this.apiResultState = APIResultState.initial,
      this.errorMessage = "",
      this.response});

  factory _$OrganizationalStateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrganizationalStateModelImplFromJson(json);

  @override
  @JsonKey()
  final APIResultState apiResultState;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  final OrganizationalResponseModel? response;

  @override
  String toString() {
    return 'OrganizationalStateModel(apiResultState: $apiResultState, errorMessage: $errorMessage, response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizationalStateModelImpl &&
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

  /// Create a copy of OrganizationalStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganizationalStateModelImplCopyWith<_$OrganizationalStateModelImpl>
      get copyWith => __$$OrganizationalStateModelImplCopyWithImpl<
          _$OrganizationalStateModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrganizationalStateModelImplToJson(
      this,
    );
  }
}

abstract class _OrganizationalStateModel implements OrganizationalStateModel {
  const factory _OrganizationalStateModel(
          {final APIResultState apiResultState,
          final String errorMessage,
          final OrganizationalResponseModel? response}) =
      _$OrganizationalStateModelImpl;

  factory _OrganizationalStateModel.fromJson(Map<String, dynamic> json) =
      _$OrganizationalStateModelImpl.fromJson;

  @override
  APIResultState get apiResultState;
  @override
  String get errorMessage;
  @override
  OrganizationalResponseModel? get response;

  /// Create a copy of OrganizationalStateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrganizationalStateModelImplCopyWith<_$OrganizationalStateModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
