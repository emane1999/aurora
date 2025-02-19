// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contract_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContractResponseModel _$ContractResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ContractResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ContractResponseModel {
  Data get data => throw _privateConstructorUsedError;

  /// Serializes this ContractResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContractResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContractResponseModelCopyWith<ContractResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractResponseModelCopyWith<$Res> {
  factory $ContractResponseModelCopyWith(ContractResponseModel value,
          $Res Function(ContractResponseModel) then) =
      _$ContractResponseModelCopyWithImpl<$Res, ContractResponseModel>;
  @useResult
  $Res call({Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$ContractResponseModelCopyWithImpl<$Res,
        $Val extends ContractResponseModel>
    implements $ContractResponseModelCopyWith<$Res> {
  _$ContractResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContractResponseModel
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

  /// Create a copy of ContractResponseModel
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
abstract class _$$ContractResponseModelImplCopyWith<$Res>
    implements $ContractResponseModelCopyWith<$Res> {
  factory _$$ContractResponseModelImplCopyWith(
          _$ContractResponseModelImpl value,
          $Res Function(_$ContractResponseModelImpl) then) =
      __$$ContractResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ContractResponseModelImplCopyWithImpl<$Res>
    extends _$ContractResponseModelCopyWithImpl<$Res,
        _$ContractResponseModelImpl>
    implements _$$ContractResponseModelImplCopyWith<$Res> {
  __$$ContractResponseModelImplCopyWithImpl(_$ContractResponseModelImpl _value,
      $Res Function(_$ContractResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContractResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ContractResponseModelImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractResponseModelImpl implements _ContractResponseModel {
  const _$ContractResponseModelImpl({required this.data});

  factory _$ContractResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractResponseModelImplFromJson(json);

  @override
  final Data data;

  @override
  String toString() {
    return 'ContractResponseModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractResponseModelImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of ContractResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractResponseModelImplCopyWith<_$ContractResponseModelImpl>
      get copyWith => __$$ContractResponseModelImplCopyWithImpl<
          _$ContractResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ContractResponseModel implements ContractResponseModel {
  const factory _ContractResponseModel({required final Data data}) =
      _$ContractResponseModelImpl;

  factory _ContractResponseModel.fromJson(Map<String, dynamic> json) =
      _$ContractResponseModelImpl.fromJson;

  @override
  Data get data;

  /// Create a copy of ContractResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContractResponseModelImplCopyWith<_$ContractResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: 'Contract Time')
  ContractTime get contractTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'Parties')
  Parties get parties => throw _privateConstructorUsedError;
  @JsonKey(name: 'Job Details')
  JobDetails get jobDetails => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'Contract Time') ContractTime contractTime,
      @JsonKey(name: 'Parties') Parties parties,
      @JsonKey(name: 'Job Details') JobDetails jobDetails});

  $ContractTimeCopyWith<$Res> get contractTime;
  $PartiesCopyWith<$Res> get parties;
  $JobDetailsCopyWith<$Res> get jobDetails;
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
    Object? contractTime = null,
    Object? parties = null,
    Object? jobDetails = null,
  }) {
    return _then(_value.copyWith(
      contractTime: null == contractTime
          ? _value.contractTime
          : contractTime // ignore: cast_nullable_to_non_nullable
              as ContractTime,
      parties: null == parties
          ? _value.parties
          : parties // ignore: cast_nullable_to_non_nullable
              as Parties,
      jobDetails: null == jobDetails
          ? _value.jobDetails
          : jobDetails // ignore: cast_nullable_to_non_nullable
              as JobDetails,
    ) as $Val);
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContractTimeCopyWith<$Res> get contractTime {
    return $ContractTimeCopyWith<$Res>(_value.contractTime, (value) {
      return _then(_value.copyWith(contractTime: value) as $Val);
    });
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PartiesCopyWith<$Res> get parties {
    return $PartiesCopyWith<$Res>(_value.parties, (value) {
      return _then(_value.copyWith(parties: value) as $Val);
    });
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JobDetailsCopyWith<$Res> get jobDetails {
    return $JobDetailsCopyWith<$Res>(_value.jobDetails, (value) {
      return _then(_value.copyWith(jobDetails: value) as $Val);
    });
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
      {@JsonKey(name: 'Contract Time') ContractTime contractTime,
      @JsonKey(name: 'Parties') Parties parties,
      @JsonKey(name: 'Job Details') JobDetails jobDetails});

  @override
  $ContractTimeCopyWith<$Res> get contractTime;
  @override
  $PartiesCopyWith<$Res> get parties;
  @override
  $JobDetailsCopyWith<$Res> get jobDetails;
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
    Object? contractTime = null,
    Object? parties = null,
    Object? jobDetails = null,
  }) {
    return _then(_$DataImpl(
      contractTime: null == contractTime
          ? _value.contractTime
          : contractTime // ignore: cast_nullable_to_non_nullable
              as ContractTime,
      parties: null == parties
          ? _value.parties
          : parties // ignore: cast_nullable_to_non_nullable
              as Parties,
      jobDetails: null == jobDetails
          ? _value.jobDetails
          : jobDetails // ignore: cast_nullable_to_non_nullable
              as JobDetails,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: 'Contract Time') required this.contractTime,
      @JsonKey(name: 'Parties') required this.parties,
      @JsonKey(name: 'Job Details') required this.jobDetails});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: 'Contract Time')
  final ContractTime contractTime;
  @override
  @JsonKey(name: 'Parties')
  final Parties parties;
  @override
  @JsonKey(name: 'Job Details')
  final JobDetails jobDetails;

  @override
  String toString() {
    return 'Data(contractTime: $contractTime, parties: $parties, jobDetails: $jobDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.contractTime, contractTime) ||
                other.contractTime == contractTime) &&
            (identical(other.parties, parties) || other.parties == parties) &&
            (identical(other.jobDetails, jobDetails) ||
                other.jobDetails == jobDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, contractTime, parties, jobDetails);

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
      {@JsonKey(name: 'Contract Time') required final ContractTime contractTime,
      @JsonKey(name: 'Parties') required final Parties parties,
      @JsonKey(name: 'Job Details')
      required final JobDetails jobDetails}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: 'Contract Time')
  ContractTime get contractTime;
  @override
  @JsonKey(name: 'Parties')
  Parties get parties;
  @override
  @JsonKey(name: 'Job Details')
  JobDetails get jobDetails;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContractTime _$ContractTimeFromJson(Map<String, dynamic> json) {
  return _ContractTime.fromJson(json);
}

/// @nodoc
mixin _$ContractTime {
  @JsonKey(name: 'Start Date')
  DateTime get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'End Date')
  String get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'Contract Period')
  String get contractPeriod => throw _privateConstructorUsedError;
  @JsonKey(name: 'Status')
  String get status => throw _privateConstructorUsedError;

  /// Serializes this ContractTime to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContractTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContractTimeCopyWith<ContractTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractTimeCopyWith<$Res> {
  factory $ContractTimeCopyWith(
          ContractTime value, $Res Function(ContractTime) then) =
      _$ContractTimeCopyWithImpl<$Res, ContractTime>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Start Date') DateTime startDate,
      @JsonKey(name: 'End Date') String endDate,
      @JsonKey(name: 'Contract Period') String contractPeriod,
      @JsonKey(name: 'Status') String status});
}

/// @nodoc
class _$ContractTimeCopyWithImpl<$Res, $Val extends ContractTime>
    implements $ContractTimeCopyWith<$Res> {
  _$ContractTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContractTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
    Object? contractPeriod = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      contractPeriod: null == contractPeriod
          ? _value.contractPeriod
          : contractPeriod // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContractTimeImplCopyWith<$Res>
    implements $ContractTimeCopyWith<$Res> {
  factory _$$ContractTimeImplCopyWith(
          _$ContractTimeImpl value, $Res Function(_$ContractTimeImpl) then) =
      __$$ContractTimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Start Date') DateTime startDate,
      @JsonKey(name: 'End Date') String endDate,
      @JsonKey(name: 'Contract Period') String contractPeriod,
      @JsonKey(name: 'Status') String status});
}

/// @nodoc
class __$$ContractTimeImplCopyWithImpl<$Res>
    extends _$ContractTimeCopyWithImpl<$Res, _$ContractTimeImpl>
    implements _$$ContractTimeImplCopyWith<$Res> {
  __$$ContractTimeImplCopyWithImpl(
      _$ContractTimeImpl _value, $Res Function(_$ContractTimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContractTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
    Object? contractPeriod = null,
    Object? status = null,
  }) {
    return _then(_$ContractTimeImpl(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      contractPeriod: null == contractPeriod
          ? _value.contractPeriod
          : contractPeriod // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractTimeImpl implements _ContractTime {
  const _$ContractTimeImpl(
      {@JsonKey(name: 'Start Date') required this.startDate,
      @JsonKey(name: 'End Date') required this.endDate,
      @JsonKey(name: 'Contract Period') required this.contractPeriod,
      @JsonKey(name: 'Status') required this.status});

  factory _$ContractTimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractTimeImplFromJson(json);

  @override
  @JsonKey(name: 'Start Date')
  final DateTime startDate;
  @override
  @JsonKey(name: 'End Date')
  final String endDate;
  @override
  @JsonKey(name: 'Contract Period')
  final String contractPeriod;
  @override
  @JsonKey(name: 'Status')
  final String status;

  @override
  String toString() {
    return 'ContractTime(startDate: $startDate, endDate: $endDate, contractPeriod: $contractPeriod, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractTimeImpl &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.contractPeriod, contractPeriod) ||
                other.contractPeriod == contractPeriod) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, startDate, endDate, contractPeriod, status);

  /// Create a copy of ContractTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractTimeImplCopyWith<_$ContractTimeImpl> get copyWith =>
      __$$ContractTimeImplCopyWithImpl<_$ContractTimeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractTimeImplToJson(
      this,
    );
  }
}

abstract class _ContractTime implements ContractTime {
  const factory _ContractTime(
      {@JsonKey(name: 'Start Date') required final DateTime startDate,
      @JsonKey(name: 'End Date') required final String endDate,
      @JsonKey(name: 'Contract Period') required final String contractPeriod,
      @JsonKey(name: 'Status')
      required final String status}) = _$ContractTimeImpl;

  factory _ContractTime.fromJson(Map<String, dynamic> json) =
      _$ContractTimeImpl.fromJson;

  @override
  @JsonKey(name: 'Start Date')
  DateTime get startDate;
  @override
  @JsonKey(name: 'End Date')
  String get endDate;
  @override
  @JsonKey(name: 'Contract Period')
  String get contractPeriod;
  @override
  @JsonKey(name: 'Status')
  String get status;

  /// Create a copy of ContractTime
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContractTimeImplCopyWith<_$ContractTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JobDetails _$JobDetailsFromJson(Map<String, dynamic> json) {
  return _JobDetails.fromJson(json);
}

/// @nodoc
mixin _$JobDetails {
  @JsonKey(name: 'Position')
  String get position => throw _privateConstructorUsedError;
  @JsonKey(name: 'Duration')
  String get duration => throw _privateConstructorUsedError;

  /// Serializes this JobDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JobDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobDetailsCopyWith<JobDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobDetailsCopyWith<$Res> {
  factory $JobDetailsCopyWith(
          JobDetails value, $Res Function(JobDetails) then) =
      _$JobDetailsCopyWithImpl<$Res, JobDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Position') String position,
      @JsonKey(name: 'Duration') String duration});
}

/// @nodoc
class _$JobDetailsCopyWithImpl<$Res, $Val extends JobDetails>
    implements $JobDetailsCopyWith<$Res> {
  _$JobDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobDetailsImplCopyWith<$Res>
    implements $JobDetailsCopyWith<$Res> {
  factory _$$JobDetailsImplCopyWith(
          _$JobDetailsImpl value, $Res Function(_$JobDetailsImpl) then) =
      __$$JobDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Position') String position,
      @JsonKey(name: 'Duration') String duration});
}

/// @nodoc
class __$$JobDetailsImplCopyWithImpl<$Res>
    extends _$JobDetailsCopyWithImpl<$Res, _$JobDetailsImpl>
    implements _$$JobDetailsImplCopyWith<$Res> {
  __$$JobDetailsImplCopyWithImpl(
      _$JobDetailsImpl _value, $Res Function(_$JobDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? duration = null,
  }) {
    return _then(_$JobDetailsImpl(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobDetailsImpl implements _JobDetails {
  const _$JobDetailsImpl(
      {@JsonKey(name: 'Position') required this.position,
      @JsonKey(name: 'Duration') required this.duration});

  factory _$JobDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobDetailsImplFromJson(json);

  @override
  @JsonKey(name: 'Position')
  final String position;
  @override
  @JsonKey(name: 'Duration')
  final String duration;

  @override
  String toString() {
    return 'JobDetails(position: $position, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobDetailsImpl &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, position, duration);

  /// Create a copy of JobDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobDetailsImplCopyWith<_$JobDetailsImpl> get copyWith =>
      __$$JobDetailsImplCopyWithImpl<_$JobDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobDetailsImplToJson(
      this,
    );
  }
}

abstract class _JobDetails implements JobDetails {
  const factory _JobDetails(
          {@JsonKey(name: 'Position') required final String position,
          @JsonKey(name: 'Duration') required final String duration}) =
      _$JobDetailsImpl;

  factory _JobDetails.fromJson(Map<String, dynamic> json) =
      _$JobDetailsImpl.fromJson;

  @override
  @JsonKey(name: 'Position')
  String get position;
  @override
  @JsonKey(name: 'Duration')
  String get duration;

  /// Create a copy of JobDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobDetailsImplCopyWith<_$JobDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Parties _$PartiesFromJson(Map<String, dynamic> json) {
  return _Parties.fromJson(json);
}

/// @nodoc
mixin _$Parties {
  @JsonKey(name: 'Employee')
  String get employee => throw _privateConstructorUsedError;
  @JsonKey(name: 'Organization')
  String get organization => throw _privateConstructorUsedError;

  /// Serializes this Parties to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Parties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PartiesCopyWith<Parties> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartiesCopyWith<$Res> {
  factory $PartiesCopyWith(Parties value, $Res Function(Parties) then) =
      _$PartiesCopyWithImpl<$Res, Parties>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Employee') String employee,
      @JsonKey(name: 'Organization') String organization});
}

/// @nodoc
class _$PartiesCopyWithImpl<$Res, $Val extends Parties>
    implements $PartiesCopyWith<$Res> {
  _$PartiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Parties
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee = null,
    Object? organization = null,
  }) {
    return _then(_value.copyWith(
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as String,
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PartiesImplCopyWith<$Res> implements $PartiesCopyWith<$Res> {
  factory _$$PartiesImplCopyWith(
          _$PartiesImpl value, $Res Function(_$PartiesImpl) then) =
      __$$PartiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Employee') String employee,
      @JsonKey(name: 'Organization') String organization});
}

/// @nodoc
class __$$PartiesImplCopyWithImpl<$Res>
    extends _$PartiesCopyWithImpl<$Res, _$PartiesImpl>
    implements _$$PartiesImplCopyWith<$Res> {
  __$$PartiesImplCopyWithImpl(
      _$PartiesImpl _value, $Res Function(_$PartiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Parties
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee = null,
    Object? organization = null,
  }) {
    return _then(_$PartiesImpl(
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as String,
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PartiesImpl implements _Parties {
  const _$PartiesImpl(
      {@JsonKey(name: 'Employee') required this.employee,
      @JsonKey(name: 'Organization') required this.organization});

  factory _$PartiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartiesImplFromJson(json);

  @override
  @JsonKey(name: 'Employee')
  final String employee;
  @override
  @JsonKey(name: 'Organization')
  final String organization;

  @override
  String toString() {
    return 'Parties(employee: $employee, organization: $organization)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartiesImpl &&
            (identical(other.employee, employee) ||
                other.employee == employee) &&
            (identical(other.organization, organization) ||
                other.organization == organization));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, employee, organization);

  /// Create a copy of Parties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PartiesImplCopyWith<_$PartiesImpl> get copyWith =>
      __$$PartiesImplCopyWithImpl<_$PartiesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartiesImplToJson(
      this,
    );
  }
}

abstract class _Parties implements Parties {
  const factory _Parties(
          {@JsonKey(name: 'Employee') required final String employee,
          @JsonKey(name: 'Organization') required final String organization}) =
      _$PartiesImpl;

  factory _Parties.fromJson(Map<String, dynamic> json) = _$PartiesImpl.fromJson;

  @override
  @JsonKey(name: 'Employee')
  String get employee;
  @override
  @JsonKey(name: 'Organization')
  String get organization;

  /// Create a copy of Parties
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PartiesImplCopyWith<_$PartiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
