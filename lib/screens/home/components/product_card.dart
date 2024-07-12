import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/providers/cart_provider.dart';

import '../../../models/product.dart';
class ProductCard extends ConsumerWidget {
  const ProductCard(this.product, {super.key});
  final Product product;

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final cartProducts = ref.watch(cartNotifierProvider);
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.blueGrey.withOpacity(0.05),
      child: Column(
        children: [
          Image.asset(product.image, width: 60, height: 60),
          Text(product.title),
          Text('£${product.price}'),
          cartProducts.contains(product)
              ? TextButton(
            onPressed: () {
              ref
                  .read(cartNotifierProvider.notifier)
                  .removeProduct(product);
            },
            child: const Text("remove"),
          )
              : TextButton(
            onPressed: () {
              ref
                  .read(cartNotifierProvider.notifier)
                  .addProduct(product);
            },
            child: const Text("add"),
          )
        ],
      ),
    );
  }
}
