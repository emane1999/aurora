// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_contorl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$checkSignUpHash() => r'a009403da407cce521ed9cfeaafd072f77e94167';

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

/// See also [checkSignUp].
@ProviderFor(checkSignUp)
const checkSignUpProvider = CheckSignUpFamily();

/// See also [checkSignUp].
class CheckSignUpFamily extends Family<AsyncValue<SignUpStateModel>> {
  /// See also [checkSignUp].
  const CheckSignUpFamily();

  /// See also [checkSignUp].
  CheckSignUpProvider call(
    SignUpModel signUpModel,
  ) {
    return CheckSignUpProvider(
      signUpModel,
    );
  }

  @override
  CheckSignUpProvider getProviderOverride(
    covariant CheckSignUpProvider provider,
  ) {
    return call(
      provider.signUpModel,
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
  String? get name => r'checkSignUpProvider';
}

/// See also [checkSignUp].
class CheckSignUpProvider extends AutoDisposeFutureProvider<SignUpStateModel> {
  /// See also [checkSignUp].
  CheckSignUpProvider(
    SignUpModel signUpModel,
  ) : this._internal(
          (ref) => checkSignUp(
            ref as CheckSignUpRef,
            signUpModel,
          ),
          from: checkSignUpProvider,
          name: r'checkSignUpProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$checkSignUpHash,
          dependencies: CheckSignUpFamily._dependencies,
          allTransitiveDependencies:
              CheckSignUpFamily._allTransitiveDependencies,
          signUpModel: signUpModel,
        );

  CheckSignUpProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.signUpModel,
  }) : super.internal();

  final SignUpModel signUpModel;

  @override
  Override overrideWith(
    FutureOr<SignUpStateModel> Function(CheckSignUpRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CheckSignUpProvider._internal(
        (ref) => create(ref as CheckSignUpRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        signUpModel: signUpModel,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<SignUpStateModel> createElement() {
    return _CheckSignUpProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CheckSignUpProvider && other.signUpModel == signUpModel;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, signUpModel.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CheckSignUpRef on AutoDisposeFutureProviderRef<SignUpStateModel> {
  /// The parameter `signUpModel` of this provider.
  SignUpModel get signUpModel;
}

class _CheckSignUpProviderElement
    extends AutoDisposeFutureProviderElement<SignUpStateModel>
    with CheckSignUpRef {
  _CheckSignUpProviderElement(super.provider);

  @override
  SignUpModel get signUpModel => (origin as CheckSignUpProvider).signUpModel;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
