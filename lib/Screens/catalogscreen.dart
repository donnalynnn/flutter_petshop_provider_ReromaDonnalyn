import 'package:flutter/material.dart';
import '/Models/animal.dart';
import '/app_styles.dart';
import 'package:provider/provider.dart';
import '/Providers/cart_provider.dart';

class PetCatalog extends StatelessWidget {
  PetCatalog({Key? key}) : super(key: key);

  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);
    // final item = ModalRoute.of(context)!.settings.arguments as Animal;
    // ignore: avoid_print
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Store'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          //SEARCH BAR
          SearchBar(
            hintText: 'Search for Dog or Cat breed',
            constraints: const BoxConstraints(
              maxWidth: 350,
              minHeight: 54.0,
            ),
            backgroundColor: MaterialStateProperty.all(
                const Color.fromRGBO(242, 242, 242, 1)),
            leading: const Icon(Icons.search),
            controller: _textEditingController,
            shape: MaterialStateProperty.all(const ContinuousRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
            )),
          ),
          const SizedBox(
            height: 10,
          ),

          Expanded(
            child: GridView.builder(
                padding: const EdgeInsets.all(15),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 180,
                    childAspectRatio: 1,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: animalList.length,
                itemBuilder: (BuildContext ctx, index) {
                  Animal animal = animalList[index];
                  return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white, //color of grid boxes
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/${animalList[index].animalPicture}',
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
                            animalList[index].animalName,
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
                                animalList[index].animalPrice,
                                style: const TextStyle(
                                    color: kAmber, fontSize: 14),
                              ),
                            ),
                            const SizedBox(
                              width: 91,
                            ),
                            // IconButton(
                            //   visualDensity: VisualDensity.compact,
                            //     onPressed: () {
                            //       debugPrint('Tapped');
                            //     },
                            //     icon: const Icon(
                            //       Icons.shopping_cart_checkout_outlined,
                            //       color: Color(0xffe8be13),
                            //     ),
                            //     selectedIcon: const Icon(
                            //       Icons.shopping_cart,
                            //       color: Color(0xffe8be13),
                            //     ),
                            //     iconSize: 18,
                            // ),
                            Checkbox(
                                value: cartProvider.items.contains(animal),
                                onChanged: (value) {
                                  if (value == true) {
                                    cartProvider.add(animal);
                                  } else {
                                    cartProvider.remove(animal);
                                  }
                                }),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
