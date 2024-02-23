import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../app_styles.dart';
import '/Models/animal.dart';
import '/Providers/cart_provider.dart';
import 'package:icon_checkbox/icon_checkbox.dart';


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
              child: ListView.separated(
                itemCount: provider.items.length,
                itemBuilder: (context, index) {
                  Animal item = provider.items[index];
                  return Container(
                    height: 90,
                    color: const Color.fromARGB(48, 235, 240, 146),
                    child: Row(
                      children: [
                        const SizedBox(width: 20,),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(3.0),
                          child: Image.asset(
                            'assets/${item.animalPicture}',
                            fit: BoxFit.cover,
                            width: 50,
                            height: 50,
                          ),
                        ),
                        const SizedBox(width: 20,),
                        SizedBox(
                          width: 240,
                          child: 
                            Column(
                              children: [
                                const SizedBox(height: 25,),
                                Align( alignment: Alignment.centerLeft, 
                                  child: 
                                    Text(
                                      item.animalName, 
                                      style: const TextStyle(
                                      color: kGrey,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                    )
                                  ),

                                  Align( alignment: Alignment.centerLeft, 
                                  child: 
                                    Text(
                                      item.animalPrice, 
                                      style: const TextStyle(
                                      color: kAmber,
                                      fontSize: 15),
                                    )
                                  ),
                              ],
                            )
                        ),
                        const SizedBox(width: 10,),
                        Align(
                          alignment: Alignment.centerRight,
                          child: IconCheckbox(
                            checkedIcon: Icons.delete_forever_rounded,
                            uncheckedIcon: Icons.delete_forever_rounded,
                            value: provider.items.contains(item),
                            checkColor: kAmber,
                            onChanged: (value) {
                                    if (value == false) {
                                      provider.remove(item);
                                    }
                                  }
                            ),
                        )
                      ],
                    ),
                    
                  );
                  
                }, separatorBuilder: (BuildContext context, int index) => const Divider(),
              ),
            ),
            const SizedBox(height: 20,),
            Text(
              "Cart Total: ₱${provider.getCartTotal()}",
              style: 
                const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Color.fromARGB(255, 91, 88, 82)
              ),
              )
          ],
        );
      },
    );
  }
}
