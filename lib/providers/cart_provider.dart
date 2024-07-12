import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_files/models/product.dart';

part 'cart_provider.g.dart';

@riverpod
class CartNotifier extends _$CartNotifier {
  @override
  Set<Product> build() {
    return {};
  }

  addProduct(Product product) {
    state = {...state, product};
  }

  removeProduct(Product product) {
    state = state
        .where(
          (element) => element.id != product.id,
        )
        .toSet();
  }
}

// final cartNotifierProvider = NotifierProvider<CartNotifier, Set<Product>>(() {
//   return CartNotifier();
// });

@riverpod
int totalPrice(ref){
  final cartItems  =ref.read(cartNotifierProvider);
  int total=0;
  for(Product product in cartItems){
    total+=product.price;
  }
  return total;
}