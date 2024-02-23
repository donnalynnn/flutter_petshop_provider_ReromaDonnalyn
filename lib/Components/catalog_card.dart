import 'package:flutter/material.dart';
import '/Models/animal.dart';
import '/app_styles.dart';
import 'package:provider/provider.dart';
import '/Providers/cart_provider.dart';
import 'package:icon_checkbox/icon_checkbox.dart';

class CatalogCard extends StatelessWidget {
  const CatalogCard({Key? key, this.animal}) : super(key: key);

  final Animal? animal;

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);
    return Container(alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white, //color of grid boxes
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/${animal!.animalPicture}',
                            fit: BoxFit.cover,
                            width: 180,
                            height: 100,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            animal!.animalName,
                            style: const TextStyle(
                                color: kGrey,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Row(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                animal!.animalPrice,
                                style: const TextStyle(
                                    color: kAmber, fontSize: 14),
                              ),
                            ),
                            const SizedBox(
                              width: 100,
                            ),

                            IconCheckbox(
                                checkedIcon: Icons.shopping_cart,
                                uncheckedIcon: Icons.shopping_cart_checkout_outlined,
                                value: cartProvider.items.contains(animal),
                                iconSize: 18,
                                checkColor: kAmber,
                                unCheckColor: kAmber,
                                onChanged: (value) {
                                  if (value == true) {
                                    cartProvider.add(animal!);
                                  } else {
                                    cartProvider.remove(animal!);
                                  }
                                }
                            ),
                          ],
                        ),
                      ],
                    ),
    );
  }
}
