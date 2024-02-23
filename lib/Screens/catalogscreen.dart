import 'package:flutter/material.dart';
import '../Components/catalog_card.dart';
import '../Components/search.dart';
import '/Models/animal.dart';

// ignore: must_be_immutable
class PetCatalog extends StatelessWidget {
  PetCatalog({Key? key}) : super(key: key);

  final TextEditingController _textEditingController = TextEditingController();
  List<Animal> allAnimals = animalList;

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
            // onChanged: searchBook,
            hintText: 'Search for Pets ',
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
          // Search(),
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
                  // final pet = allAnimals[index];

                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        '/pet_details',
                        arguments: Animal(
                          animalName: animalList[index].animalName,
                          animalDescription:animalList[index].animalDescription,
                          animalColor: animalList[index].animalColor,
                          animalHeight: animalList[index].animalHeight,
                          animalPicture: animalList[index].animalPicture,
                          animalPrice: animalList[index].animalPrice,
                          animalWeight: animalList[index].animalWeight,
                          buyAnimal: animalList[index].buyAnimal,
                        ),
                      );
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

  // void searchBook(String query) {
  //   final suggestions = allAnimals.where((animal) {
  //     final animalName = animal.animalName.toLowerCase();
  //     final input = query.toLowerCase();
  //     return animalName.contains(input);
  //   }).toList();

  //   setState(()=> allAnimals = suggestions);
  // }
}
