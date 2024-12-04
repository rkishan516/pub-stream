// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'packages_view_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$packagesNotifierHash() => r'169144a5ee02d1086a94b031e7907ea4f5b700af';

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

abstract class _$PackagesNotifier
    extends BuildlessAutoDisposeAsyncNotifier<PackagesViewState> {
  late final String? query;
  late final String? sort;

  FutureOr<PackagesViewState> build({
    String? query,
    String? sort,
  });
}

/// See also [PackagesNotifier].
@ProviderFor(PackagesNotifier)
const packagesNotifierProvider = PackagesNotifierFamily();

/// See also [PackagesNotifier].
class PackagesNotifierFamily extends Family<AsyncValue<PackagesViewState>> {
  /// See also [PackagesNotifier].
  const PackagesNotifierFamily();

  /// See also [PackagesNotifier].
  PackagesNotifierProvider call({
    String? query,
    String? sort,
  }) {
    return PackagesNotifierProvider(
      query: query,
      sort: sort,
    );
  }

  @override
  PackagesNotifierProvider getProviderOverride(
    covariant PackagesNotifierProvider provider,
  ) {
    return call(
      query: provider.query,
      sort: provider.sort,
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
  String? get name => r'packagesNotifierProvider';
}

/// See also [PackagesNotifier].
class PackagesNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    PackagesNotifier, PackagesViewState> {
  /// See also [PackagesNotifier].
  PackagesNotifierProvider({
    String? query,
    String? sort,
  }) : this._internal(
          () => PackagesNotifier()
            ..query = query
            ..sort = sort,
          from: packagesNotifierProvider,
          name: r'packagesNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$packagesNotifierHash,
          dependencies: PackagesNotifierFamily._dependencies,
          allTransitiveDependencies:
              PackagesNotifierFamily._allTransitiveDependencies,
          query: query,
          sort: sort,
        );

  PackagesNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
    required this.sort,
  }) : super.internal();

  final String? query;
  final String? sort;

  @override
  FutureOr<PackagesViewState> runNotifierBuild(
    covariant PackagesNotifier notifier,
  ) {
    return notifier.build(
      query: query,
      sort: sort,
    );
  }

  @override
  Override overrideWith(PackagesNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: PackagesNotifierProvider._internal(
        () => create()
          ..query = query
          ..sort = sort,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
        sort: sort,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PackagesNotifier, PackagesViewState>
      createElement() {
    return _PackagesNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PackagesNotifierProvider &&
        other.query == query &&
        other.sort == sort;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);
    hash = _SystemHash.combine(hash, sort.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PackagesNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<PackagesViewState> {
  /// The parameter `query` of this provider.
  String? get query;

  /// The parameter `sort` of this provider.
  String? get sort;
}

class _PackagesNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<PackagesNotifier,
        PackagesViewState> with PackagesNotifierRef {
  _PackagesNotifierProviderElement(super.provider);

  @override
  String? get query => (origin as PackagesNotifierProvider).query;
  @override
  String? get sort => (origin as PackagesNotifierProvider).sort;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
