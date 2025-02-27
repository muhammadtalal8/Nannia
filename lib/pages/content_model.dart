class UnbordingContent {
  String image;
  String title;
  String discription;
  String? subtitle;
  UnbordingContent(
      {required this.image,
      required this.title,
      required this.discription,
      this.subtitle});
}
List<UnbordingContent> contents = [
  UnbordingContent(
      image: 'assets/pages/kid1.png',
      subtitle: 'geolocation',
      title: 'Discover',
      discription:
          'Find the perfect nannies in your own neighborhood for your beloved child quickly and easily'),
  UnbordingContent(
      image: 'assets/pages/kid2.png',
      subtitle: 'Availability',
      title: 'Schedule',
      discription:
          'Determine the right time between you and the nannies with choices you cannot imagine before'),
  UnbordingContent(
      image: 'assets/pages/kid3.png',
      subtitle: 'Always',
      title: 'Connected',
      discription:
          'Stay update your child\'s activity wherever and whenever in real time with messages or video calls'),
];


