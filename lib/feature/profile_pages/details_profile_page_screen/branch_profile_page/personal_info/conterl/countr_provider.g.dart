// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countr_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getProfileDataHash() => r'560989ce1b7e0a504a5ea0273c6ce6e0f727a8ca';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [getProfileData].
@ProviderFor(getProfileData)
const getProfileDataProvider = GetProfileDataFamily();

/// See also [getProfileData].
class GetProfileDataFamily
    extends Family<AsyncValue<ProfileInfoResponseModel?>> {
  /// See also [getProfileData].
  const GetProfileDataFamily();

  /// See also [getProfileData].
  GetProfileDataProvider call(
    String employeeID,
  ) {
    return GetProfileDataProvider(
      employeeID,
    );
  }

  @override
  GetProfileDataProvider getProviderOverride(
    covariant GetProfileDataProvider provider,
  ) {
    return call(
      provider.employeeID,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getProfileDataProvider';
}

/// See also [getProfileData].
class GetProfileDataProvider
    extends AutoDisposeFutureProvider<ProfileInfoResponseModel?> {
  /// See also [getProfileData].
  GetProfileDataProvider(
    String employeeID,
  ) : this._internal(
          (ref) => getProfileData(
            ref as GetProfileDataRef,
            employeeID,
          ),
          from: getProfileDataProvider,
          name: r'getProfileDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getProfileDataHash,
          dependencies: GetProfileDataFamily._dependencies,
          allTransitiveDependencies:
              GetProfileDataFamily._allTransitiveDependencies,
          employeeID: employeeID,
        );

  GetProfileDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.employeeID,
  }) : super.internal();

  final String employeeID;

  @override
  Override overrideWith(
    FutureOr<ProfileInfoResponseModel?> Function(GetProfileDataRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetProfileDataProvider._internal(
        (ref) => create(ref as GetProfileDataRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        employeeID: employeeID,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ProfileInfoResponseModel?> createElement() {
    return _GetProfileDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetProfileDataProvider && other.employeeID == employeeID;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, employeeID.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetProfileDataRef
    on AutoDisposeFutureProviderRef<ProfileInfoResponseModel?> {
  /// The parameter `employeeID` of this provider.
  String get employeeID;
}

class _GetProfileDataProviderElement
    extends AutoDisposeFutureProviderElement<ProfileInfoResponseModel?>
    with GetProfileDataRef {
  _GetProfileDataProviderElement(super.provider);

  @override
  String get employeeID => (origin as GetProfileDataProvider).employeeID;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
