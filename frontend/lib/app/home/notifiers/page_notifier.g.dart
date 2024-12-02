// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$packagesListHash() => r'0b8900ecd0dbb2a979eae296f49880b0c7aeb5a4';

/// See also [packagesList].
@ProviderFor(packagesList)
final packagesListProvider = AutoDisposeFutureProvider<ListApi>.internal(
  packagesList,
  name: r'packagesListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$packagesListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef PackagesListRef = AutoDisposeFutureProviderRef<ListApi>;
String _$homePageNotifierHash() => r'1bc044d6bc5007c255f95579f2b7c42d32f0273d';

/// See also [HomePageNotifier].
@ProviderFor(HomePageNotifier)
final homePageNotifierProvider =
    AutoDisposeNotifierProvider<HomePageNotifier, HomePageState>.internal(
  HomePageNotifier.new,
  name: r'homePageNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$homePageNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$HomePageNotifier = AutoDisposeNotifier<HomePageState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
