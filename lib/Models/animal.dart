// import 'dart:convert';

// Pets petsFromJson(String str) => Pets.fromJson(json.decode(str));

// String petsToJson(Pets data) => json.encode(data.toJson());
// class Pets {
//   Pets({
//     required this.data,
//   });

//   final List<Animal> data;

//   factory Pets.fromJson(Map<String, dynamic> json) => Pets(
//         data: List<Animal>.from(json["data"].map((x) => Animal.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "data": List<dynamic>.from(data.map((x) => x.toJson())),
//       };
// }
class Animal {
  Animal(
      {this.animalName = '',
      this.animalWeight = '',
      this.animalHeight = '',
      this.animalColor = '',
      this.animalDescription = '',
      this.animalPicture = '',
      this.animalPrice = '',
      this.price = 0,
      this.buyAnimal = false});

  String animalName;
  String animalWeight;
  String animalHeight;
  String animalColor;
  String animalDescription;
  String animalPicture;
  String animalPrice;
  double price;
  bool buyAnimal;

  factory Animal.fromJson(Map<String, dynamic> json) => Animal(
        animalName: json["animalName"],
        animalWeight: json["animalWeight"],
        animalHeight: json["animalHeight"],
        animalColor: json["animalColor"],
        animalDescription: json["animalDescription"],
        animalPicture: json["animalPicture"],
        animalPrice: json["animalPrice"],
        price: json["price"],
        buyAnimal: json["buyAnimal"],
      );

  Map<String, dynamic> toJson() => {
        "animalName": animalName,
        "animalWeight": animalWeight,
        "animalHeight": animalHeight,
        "animalColor": animalColor,
        "animalDescription": animalDescription,
        "animalPicture": animalPicture,
        "animalPrice": animalPrice,
        "price": price,
        "buyAnimal": buyAnimal,
      };
}

var animalList = [
  Animal(
      animalName: 'Shih Tzu',
      animalWeight: '3.5 kg',
      animalHeight: '20 cm',
      animalColor: 'Brown',
      animalDescription:
          'The Shih Tzu is a toy dog or pet dog breed originating from Tibet and believed to be bred from the Pekingese and the Lhasa Apso. They can adapt well to different situations. Due to their highly independent nature, they are not considered as a very obedient breed.',
      animalPicture: 'shih-tzu.jpg',
      animalPrice: '₱1,600',
      price: 1600,
      buyAnimal: false),
  Animal(
      animalName: 'Persian Cat',
      animalWeight: '3.5 kg',
      animalHeight: '20 cm',
      animalColor: 'White',
      animalDescription:
          'The Persian cat, also known as the Persian Longhair, is a long-haired breed of cat characterised by a round face and short muzzle. The first documented ancestors of Persian cats might have been imported into Italy from Khorasan as early as around 1620, however, this has not been proven.',
      animalPicture: 'persian-cat.jpg',
      animalPrice: '₱3,000',
      price: 3000,
      buyAnimal: false),
  Animal(
      animalName: 'Siamese',
      animalWeight: '3.5 kg',
      animalHeight: '20 cm',
      animalColor: 'Brown',
      animalDescription: '#',
      animalPicture: 'siamese.jpg',
      animalPrice: '₱2,600',
      price: 2600,
      buyAnimal: false),
  Animal(
      animalName: 'Labrador',
      animalWeight: '3.5 kg',
      animalHeight: '20 cm',
      animalColor: 'Brown',
      animalDescription: '#',
      animalPicture: 'labrador.jpg',
      animalPrice: '₱4,000',
      price: 4000,
      buyAnimal: false),
  Animal(
      animalName: 'Great Dane',
      animalWeight: '3.5 kg',
      animalHeight: '20 cm',
      animalColor: 'Brown',
      animalDescription: '#',
      animalPicture: 'greatdane.jpg',
      animalPrice: '₱9,500',
      price: 9500,
      buyAnimal: false),
  Animal(
      animalName: 'Golden Retriever',
      animalWeight: '3.5 kg',
      animalHeight: '20 cm',
      animalColor: 'Brown',
      animalDescription: '#',
      animalPicture: 'golden-retriever.jpg',
      animalPrice: '₱8,600',
      price: 8600,
      buyAnimal: false),

  //repeat data
  Animal(
      animalName: 'Shih Tzu',
      animalWeight: '3.5 kg',
      animalHeight: '20 cm',
      animalColor: 'Brown',
      animalDescription:
          'The Shih Tzu is a toy dog or pet dog breed originating from Tibet and believed to be bred from the Pekingese and the Lhasa Apso. They can adapt well to different situations. Due to their highly independent nature, they are not considered as a very obedient breed.',
      animalPicture: 'shih-tzu.jpg',
      animalPrice: '₱1,600',
      price: 1600,
      buyAnimal: false),
  Animal(
      animalName: 'Persian Cat',
      animalWeight: '3.5 kg',
      animalHeight: '20 cm',
      animalColor: 'White',
      animalDescription:
          'The Persian cat, also known as the Persian Longhair, is a long-haired breed of cat characterised by a round face and short muzzle. The first documented ancestors of Persian cats might have been imported into Italy from Khorasan as early as around 1620, however, this has not been proven.',
      animalPicture: 'persian-cat.jpg',
      animalPrice: '₱3,000',
      price: 3000,
      buyAnimal: false),
  Animal(
      animalName: 'Siamese',
      animalWeight: '3.5 kg',
      animalHeight: '20 cm',
      animalColor: 'Brown',
      animalDescription: '#',
      animalPicture: 'siamese.jpg',
      animalPrice: '₱2,600',
      price: 2600,
      buyAnimal: false),
  Animal(
      animalName: 'Labrador',
      animalWeight: '3.5 kg',
      animalHeight: '20 cm',
      animalColor: 'Brown',
      animalDescription: '#',
      animalPicture: 'labrador.jpg',
      animalPrice: '₱4,000',
      price: 4000,
      buyAnimal: false),
  Animal(
      animalName: 'Great Dane',
      animalWeight: '3.5 kg',
      animalHeight: '20 cm',
      animalColor: 'Brown',
      animalDescription: '#',
      animalPicture: 'greatdane.jpg',
      animalPrice: '₱9,500',
      price: 9500,
      buyAnimal: false),
  Animal(
      animalName: 'Golden Retriever',
      animalWeight: '3.5 kg',
      animalHeight: '20 cm',
      animalColor: 'Brown',
      animalDescription: '#',
      animalPicture: 'golden-retriever.jpg',
      animalPrice: '₱8,600',
      price: 8600,
      buyAnimal: false),
];
