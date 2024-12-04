// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_home_view_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$packageHomeNotifierHash() =>
    r'767fe6cd49466f0321217aff3dffbbb84f1574b0';

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

abstract class _$PackageHomeNotifier
    extends BuildlessAutoDisposeAsyncNotifier<PackageHomeViewState> {
  late final String packageName;
  late final String version;

  FutureOr<PackageHomeViewState> build({
    required String packageName,
    String version = 'latest',
  });
}

/// See also [PackageHomeNotifier].
@ProviderFor(PackageHomeNotifier)
const packageHomeNotifierProvider = PackageHomeNotifierFamily();

/// See also [PackageHomeNotifier].
class PackageHomeNotifierFamily
    extends Family<AsyncValue<PackageHomeViewState>> {
  /// See also [PackageHomeNotifier].
  const PackageHomeNotifierFamily();

  /// See also [PackageHomeNotifier].
  PackageHomeNotifierProvider call({
    required String packageName,
    String version = 'latest',
  }) {
    return PackageHomeNotifierProvider(
      packageName: packageName,
      version: version,
    );
  }

  @override
  PackageHomeNotifierProvider getProviderOverride(
    covariant PackageHomeNotifierProvider provider,
  ) {
    return call(
      packageName: provider.packageName,
      version: provider.version,
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
  String? get name => r'packageHomeNotifierProvider';
}

/// See also [PackageHomeNotifier].
class PackageHomeNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    PackageHomeNotifier, PackageHomeViewState> {
  /// See also [PackageHomeNotifier].
  PackageHomeNotifierProvider({
    required String packageName,
    String version = 'latest',
  }) : this._internal(
          () => PackageHomeNotifier()
            ..packageName = packageName
            ..version = version,
          from: packageHomeNotifierProvider,
          name: r'packageHomeNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$packageHomeNotifierHash,
          dependencies: PackageHomeNotifierFamily._dependencies,
          allTransitiveDependencies:
              PackageHomeNotifierFamily._allTransitiveDependencies,
          packageName: packageName,
          version: version,
        );

  PackageHomeNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.packageName,
    required this.version,
  }) : super.internal();

  final String packageName;
  final String version;

  @override
  FutureOr<PackageHomeViewState> runNotifierBuild(
    covariant PackageHomeNotifier notifier,
  ) {
    return notifier.build(
      packageName: packageName,
      version: version,
    );
  }

  @override
  Override overrideWith(PackageHomeNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: PackageHomeNotifierProvider._internal(
        () => create()
          ..packageName = packageName
          ..version = version,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        packageName: packageName,
        version: version,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PackageHomeNotifier,
      PackageHomeViewState> createElement() {
    return _PackageHomeNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PackageHomeNotifierProvider &&
        other.packageName == packageName &&
        other.version == version;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, packageName.hashCode);
    hash = _SystemHash.combine(hash, version.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PackageHomeNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<PackageHomeViewState> {
  /// The parameter `packageName` of this provider.
  String get packageName;

  /// The parameter `version` of this provider.
  String get version;
}

class _PackageHomeNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<PackageHomeNotifier,
        PackageHomeViewState> with PackageHomeNotifierRef {
  _PackageHomeNotifierProviderElement(super.provider);

  @override
  String get packageName => (origin as PackageHomeNotifierProvider).packageName;
  @override
  String get version => (origin as PackageHomeNotifierProvider).version;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
