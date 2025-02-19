// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_theme_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$globalThemDataHash() => r'62830541575e0bba5e51f9902992107989292e92';

/// See also [globalThemData].
@ProviderFor(globalThemData)
final globalThemDataProvider = AutoDisposeProvider<GlobalThemData>.internal(
  globalThemData,
  name: r'globalThemDataProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$globalThemDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GlobalThemDataRef = AutoDisposeProviderRef<GlobalThemData>;
String _$themeStateHash() => r'79fc2bc67fa779f87a0eb33ac462f771b8b304b2';

/// See also [ThemeState].
@ProviderFor(ThemeState)
final themeStateProvider =
    AutoDisposeNotifierProvider<ThemeState, ThemeMode>.internal(
      ThemeState.new,
      name: r'themeStateProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$themeStateHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$ThemeState = AutoDisposeNotifier<ThemeMode>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
