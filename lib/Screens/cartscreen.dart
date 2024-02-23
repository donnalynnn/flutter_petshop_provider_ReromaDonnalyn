import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/Models/animal.dart';
import '/Providers/cart_provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _buildUI(),
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      title: const Text(
        "Shopping Cart",
      ),
    );
  }

  Widget _buildUI() {
    return Consumer<CartProvider>(
      builder: (context, provider, _) {
        return Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.70,
              child: ListView.builder(
                itemCount: provider.items.length,
                itemBuilder: (context, index) {
                  Animal item = provider.items[index];
                  return ListTile(
                    title: Text(
                      item.animalName,
                    ),
                    onLongPress: () {
                      provider.remove(item);
                    },
                  );
                },
              ),
            ),
            Text("Cart Total: ₱${provider.getCartTotal()}")
          ],
        );
      },
    );
  }
}
