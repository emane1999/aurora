// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$checkuserAvilabilityHash() =>
    r'869134e513919ea1ce4d6223c0a99612509b1cbf';

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

/// See also [checkuserAvilability].
@ProviderFor(checkuserAvilability)
const checkuserAvilabilityProvider = CheckuserAvilabilityFamily();

/// See also [checkuserAvilability].
class CheckuserAvilabilityFamily
    extends Family<AsyncValue<VerificationStateModel>> {
  /// See also [checkuserAvilability].
  const CheckuserAvilabilityFamily();

  /// See also [checkuserAvilability].
  CheckuserAvilabilityProvider call(
    String iduser,
  ) {
    return CheckuserAvilabilityProvider(
      iduser,
    );
  }

  @override
  CheckuserAvilabilityProvider getProviderOverride(
    covariant CheckuserAvilabilityProvider provider,
  ) {
    return call(
      provider.iduser,
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
  String? get name => r'checkuserAvilabilityProvider';
}

/// See also [checkuserAvilability].
class CheckuserAvilabilityProvider
    extends AutoDisposeFutureProvider<VerificationStateModel> {
  /// See also [checkuserAvilability].
  CheckuserAvilabilityProvider(
    String iduser,
  ) : this._internal(
          (ref) => checkuserAvilability(
            ref as CheckuserAvilabilityRef,
            iduser,
          ),
          from: checkuserAvilabilityProvider,
          name: r'checkuserAvilabilityProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$checkuserAvilabilityHash,
          dependencies: CheckuserAvilabilityFamily._dependencies,
          allTransitiveDependencies:
              CheckuserAvilabilityFamily._allTransitiveDependencies,
          iduser: iduser,
        );

  CheckuserAvilabilityProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.iduser,
  }) : super.internal();

  final String iduser;

  @override
  Override overrideWith(
    FutureOr<VerificationStateModel> Function(CheckuserAvilabilityRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CheckuserAvilabilityProvider._internal(
        (ref) => create(ref as CheckuserAvilabilityRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        iduser: iduser,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<VerificationStateModel> createElement() {
    return _CheckuserAvilabilityProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CheckuserAvilabilityProvider && other.iduser == iduser;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, iduser.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CheckuserAvilabilityRef
    on AutoDisposeFutureProviderRef<VerificationStateModel> {
  /// The parameter `iduser` of this provider.
  String get iduser;
}

class _CheckuserAvilabilityProviderElement
    extends AutoDisposeFutureProviderElement<VerificationStateModel>
    with CheckuserAvilabilityRef {
  _CheckuserAvilabilityProviderElement(super.provider);

  @override
  String get iduser => (origin as CheckuserAvilabilityProvider).iduser;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
