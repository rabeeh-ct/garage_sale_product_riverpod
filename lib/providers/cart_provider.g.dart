// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$totalPriceHash() => r'389718725463e4a63ae89e89ae5a97148278e8fa';

/// See also [totalPrice].
@ProviderFor(totalPrice)
final totalPriceProvider = AutoDisposeProvider<int>.internal(
  totalPrice,
  name: r'totalPriceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$totalPriceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TotalPriceRef = AutoDisposeProviderRef<int>;
String _$cartNotifierHash() => r'7967970d1683ede1305c7adbe289dbbaafb5c509';

/// See also [CartNotifier].
@ProviderFor(CartNotifier)
final cartNotifierProvider =
    AutoDisposeNotifierProvider<CartNotifier, Set<Product>>.internal(
  CartNotifier.new,
  name: r'cartNotifierProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cartNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CartNotifier = AutoDisposeNotifier<Set<Product>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
