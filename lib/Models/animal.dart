class Animal {
  Animal(
      {this.animalName = '',
      this.animalWeight = '',
      this.animalHeight = '',
      this.animalColor = '',
      this.animalDescription = '',
      this.animalPicture = '',
      this.buyAnimal = false});

  String animalName;
  String animalWeight;
  String animalHeight;
  String animalColor;
  String animalDescription;
  String animalPicture;
  bool buyAnimal;
}

var animals = [
  Animal(
    animalName: 'Shih Tzu',
    animalWeight: '3.5 kg',
    animalHeight: '20 cm',
    animalColor: 'Brown',
    animalDescription: 'The Shih Tzu is a toy dog or pet dog breed originating from Tibet and believed to be bred from the Pekingese and the Lhasa Apso. They can adapt well to different situations. Due to their highly independent nature, they are not considered as a very obedient breed.',
    animalPicture: 'img-men-01.png',
    buyAnimal: false
  ),
  Animal(
    animalName: 'Persian Cat',
    animalWeight: '3.5 kg',
    animalHeight: '20 cm',
    animalColor: 'White',
    animalDescription: 'The Persian cat, also known as the Persian Longhair, is a long-haired breed of cat characterised by a round face and short muzzle. The first documented ancestors of Persian cats might have been imported into Italy from Khorasan as early as around 1620, however, this has not been proven.',
    animalPicture: 'img-men-01.png',
    buyAnimal: false
  ),
  Animal(
    animalName: 'Shih Tzu',
    animalWeight: '3.5 kg',
    animalHeight: '20 cm',
    animalColor: 'Brown',
    animalDescription: '#',
    animalPicture: 'img-men-01.png',
    buyAnimal: false
  ),
  Animal(
    animalName: 'Shih Tzu',
    animalWeight: '3.5 kg',
    animalHeight: '20 cm',
    animalColor: 'Brown',
    animalDescription: '#',
    animalPicture: 'img-men-01.png',
    buyAnimal: false
  ),
  Animal(
    animalName: 'Shih Tzu',
    animalWeight: '3.5 kg',
    animalHeight: '20 cm',
    animalColor: 'Brown',
    animalDescription: '#',
    animalPicture: 'img-men-01.png',
    buyAnimal: false
  ),
  Animal(
    animalName: 'Shih Tzu',
    animalWeight: '3.5 kg',
    animalHeight: '20 cm',
    animalColor: 'Brown',
    animalDescription: '#',
    animalPicture: 'img-men-01.png',
    buyAnimal: false
  ),
  Animal(
    animalName: 'Shih Tzu',
    animalWeight: '3.5 kg',
    animalHeight: '20 cm',
    animalColor: 'Brown',
    animalDescription: '#',
    animalPicture: 'img-men-01.png',
    buyAnimal: false
  ),
];

class PetMenu {
  String name;
  String image;

  PetMenu({this.name = '', this.image = ''});
}