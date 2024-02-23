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

var animalList = [
  Animal(
      animalName: 'Shih Tzu',
      animalWeight: '3.5 kg',
      animalHeight: '20 cm',
      animalColor: 'Brown',
      animalDescription:
          'The Shih Tzu is a toy dog or pet dog breed originating from Tibet and believed to be bred from the Pekingese and the Lhasa Apso. They can adapt well to different situations. Due to their highly independent nature, they are not considered as a very obedient breed.',
      animalPicture: 'shih-tzu.jpg',
      buyAnimal: false),
  Animal(
      animalName: 'Persian Cat',
      animalWeight: '3.5 kg',
      animalHeight: '20 cm',
      animalColor: 'White',
      animalDescription:
          'The Persian cat, also known as the Persian Longhair, is a long-haired breed of cat characterised by a round face and short muzzle. The first documented ancestors of Persian cats might have been imported into Italy from Khorasan as early as around 1620, however, this has not been proven.',
      animalPicture: 'persian-cat.jpg',
      buyAnimal: false),
  Animal(
      animalName: 'Siamese',
      animalWeight: '3.5 kg',
      animalHeight: '20 cm',
      animalColor: 'Brown',
      animalDescription: '#',
      animalPicture: 'siamese.jpg',
      buyAnimal: false),
  Animal(
      animalName: 'Labrador',
      animalWeight: '3.5 kg',
      animalHeight: '20 cm',
      animalColor: 'Brown',
      animalDescription: '#',
      animalPicture: 'labrador.jpg',
      buyAnimal: false),
  Animal(
      animalName: 'Great Dane',
      animalWeight: '3.5 kg',
      animalHeight: '20 cm',
      animalColor: 'Brown',
      animalDescription: '#',
      animalPicture: 'greatdane.jpg',
      buyAnimal: false),
  Animal(
      animalName: 'Golden Retriever',
      animalWeight: '3.5 kg',
      animalHeight: '20 cm',
      animalColor: 'Brown',
      animalDescription: '#',
      animalPicture: 'golden-retriever.jpg',
      buyAnimal: false),
];

