import 'package:flutter/material.dart';
import '/Models/animal.dart';


class Search extends StatefulWidget {

  final List<Animal> allAnimals = animalList;
  Search({super.key});
  @override
  SearchWidget createState() => SearchWidget();
}

class SearchWidget extends State<Search> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SearchBar(
      onChanged: searchBook,
      hintText: 'Search for Dog or Cat breed',
      constraints: const BoxConstraints(
        maxWidth: 350,
        minHeight: 54.0,
      ),
      backgroundColor:
          MaterialStateProperty.all(const Color.fromRGBO(242, 242, 242, 1)),
      leading: const Icon(Icons.search),
      controller: _textEditingController,
      shape: MaterialStateProperty.all(const ContinuousRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      )),
    );
  }

  void searchBook(String query) {

    List<Animal> allAnimals = animalList;
        
    final suggestions = allAnimals.where((animal) {
      final animalName = animal.animalName.toLowerCase();
      final input = query.toLowerCase();
      return animalName.contains(input);
    }).toList();

    setState(()=> allAnimals = suggestions);
  }
}


