import 'package:flutter/material.dart';
import '../Components/catalog_card.dart';
import '/Models/animal.dart';

class PetCatalog extends StatelessWidget {
  PetCatalog({Key? key}) : super(key: key);

  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    
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
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/pet_details', arguments: Animal(
                        animalName: animalList[index].animalName,
                        animalDescription: animalList[index].animalDescription,
                        animalColor: animalList[index].animalColor,
                        animalHeight: animalList[index].animalHeight,
                        animalPicture: animalList[index].animalPicture,
                        animalPrice: animalList[index].animalPrice,
                        animalWeight: animalList[index].animalWeight,
                        buyAnimal: animalList[index].buyAnimal,
                      ),);
                    },
                    child: CatalogCard(
                      animal: animalList[index],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
