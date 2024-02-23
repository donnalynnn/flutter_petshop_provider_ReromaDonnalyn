import 'package:flutter/material.dart';
import 'package:petshop/Models/animal.dart';
// import 'package:petshop/app_styles.dart';
// import '/models/animal.dart';
// import '/size_config.dart';
// // import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_svg/svg.dart';

class PetCatalog extends StatelessWidget {
  PetCatalog({Key? key}) : super(key: key);

  final List<Map> myProducts =
      List.generate(8, (index) => {"id": index, "name": "Product $index"})
          .toList();
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {

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
            backgroundColor:MaterialStateProperty.all( const Color.fromRGBO(242,242,242, 1)),
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
                itemCount: myProducts.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [

                        Image.asset(
                          'assets/${animalList[index].animalPicture}',
                          fit: BoxFit.cover,
                          width:180,
                          height: 120,
                        ),
                        Text(
                          animalList[index].animalName,
                          style: const TextStyle(color: Colors.white, fontSize: 20),
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
