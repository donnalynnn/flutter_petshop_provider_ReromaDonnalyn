class OnBoarding {
  String title;
  String subtitle;
  String image;

  OnBoarding({
    required this.title,
    required this.subtitle,
    required this.image,
  });
}

List<OnBoarding> onboardingContents = [
  OnBoarding(
    title: 'Choose your pet',
    subtitle:
        'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium',
    image: 'assets/ob_1.jpg',
  ),
  OnBoarding(
    title: 'Pets delivered to you',
    subtitle:
        'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium',
    image: 'assets/ob_2.jpg',
  ),
  OnBoarding(
    title: 'We deliver right away!',
    subtitle:
        'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium',
    image: 'assets/ob_3.jpg',
  ),
  OnBoarding(
    title: 'Order now!',
    subtitle:
        'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium',
    image: 'assets/ob_4.jpg',
  ),
];