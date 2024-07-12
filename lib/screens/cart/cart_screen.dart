import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/cart_provider.dart';

class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({super.key});

  @override
  ConsumerState<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {
  bool showCoupon = true;

  @override
  Widget build(BuildContext context) {
    final cartProducts = ref.watch(cartNotifierProvider);
    final totalPrice = ref.watch(totalPriceProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
        centerTitle: true,
        // actions: [],
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: cartProducts.isNotEmpty
            ? Column(
                children: [
                  Expanded(
                    child: ListView(
                      children: cartProducts.map((product) {
                        return Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              Image.asset(product.image, width: 60, height: 60),
                              const SizedBox(width: 10),
                              Text('${product.title}...'),
                              const Spacer(),
                              Text('£${product.price}'),
                            ],
                          ),
                        );
                      }).toList(), // output cart products here
                    ),
                  ),

                  // output totals here
                  Text(
                    "Total Price is \$$totalPrice",
                    style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                ],
              )
            : const Center(
                child: Text("Cart is Empty"),
              ),
      ),
    );
  }
}
