// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'url_workspace.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$checkAvilabilityHash() => r'b5bfab3ada04b83efd575cc5f3fa68ce81a7366d';

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

/// See also [checkAvilability].
@ProviderFor(checkAvilability)
const checkAvilabilityProvider = CheckAvilabilityFamily();

/// See also [checkAvilability].
class CheckAvilabilityFamily extends Family<AsyncValue<WorkSpaceStateModel>> {
  /// See also [checkAvilability].
  const CheckAvilabilityFamily();

  /// See also [checkAvilability].
  CheckAvilabilityProvider call(
    String dbName,
  ) {
    return CheckAvilabilityProvider(
      dbName,
    );
  }

  @override
  CheckAvilabilityProvider getProviderOverride(
    covariant CheckAvilabilityProvider provider,
  ) {
    return call(
      provider.dbName,
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
  String? get name => r'checkAvilabilityProvider';
}

/// See also [checkAvilability].
class CheckAvilabilityProvider
    extends AutoDisposeFutureProvider<WorkSpaceStateModel> {
  /// See also [checkAvilability].
  CheckAvilabilityProvider(
    String dbName,
  ) : this._internal(
          (ref) => checkAvilability(
            ref as CheckAvilabilityRef,
            dbName,
          ),
          from: checkAvilabilityProvider,
          name: r'checkAvilabilityProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$checkAvilabilityHash,
          dependencies: CheckAvilabilityFamily._dependencies,
          allTransitiveDependencies:
              CheckAvilabilityFamily._allTransitiveDependencies,
          dbName: dbName,
        );

  CheckAvilabilityProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.dbName,
  }) : super.internal();

  final String dbName;

  @override
  Override overrideWith(
    FutureOr<WorkSpaceStateModel> Function(CheckAvilabilityRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CheckAvilabilityProvider._internal(
        (ref) => create(ref as CheckAvilabilityRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        dbName: dbName,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<WorkSpaceStateModel> createElement() {
    return _CheckAvilabilityProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CheckAvilabilityProvider && other.dbName == dbName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, dbName.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CheckAvilabilityRef on AutoDisposeFutureProviderRef<WorkSpaceStateModel> {
  /// The parameter `dbName` of this provider.
  String get dbName;
}

class _CheckAvilabilityProviderElement
    extends AutoDisposeFutureProviderElement<WorkSpaceStateModel>
    with CheckAvilabilityRef {
  _CheckAvilabilityProviderElement(super.provider);

  @override
  String get dbName => (origin as CheckAvilabilityProvider).dbName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
