import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget buildPage(
      {required double width,
      required double height,
      required Alignment alignment,
      required Widget child,
      required String subtitle,
      required Text title}) {
    return Container(
      width: width,
      height: height,
      alignment: alignment,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.only(bottom: 80),
        child: PageView(
          controller: controller,
          children: [
            buildPage(
              width: 375,
              height: 427,
              alignment: Alignment.topRight,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      'assets/pages/kid1.png',
                    ),
                  ),
                  const Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: ImageIcon(
                      AssetImage(
                          'assets/icons/icon1.png'), // Provide the path to your icon image
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              title: const Text('Discover'),
              subtitle:
                  'Find the perfect nannies in your own neighborhood for your beloved child quickly and easily',
            ),
            Container(
              width: 375,
              height: 427,
              alignment: Alignment.topRight,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      'assets/pages/kid2.png',
                    ),
                  ),
                  const Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: ImageIcon(
                      AssetImage(
                          'assets/icons/icon2.png'), // Provide the path to your icon image
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 375,
              height: 427,
              alignment: Alignment.topRight,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      'assets/pages/kid3.png',
                    ),
                  ),
                  const Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: ImageIcon(
                      AssetImage(
                          'assets/icons/icon3.png'), // Provide the path to your icon image
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        height: 80,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          TextButton(
              onPressed: () => controller.jumpToPage(2),
              child: const Text(
                'SKIP',
              )),
          Center(
            child: SmoothPageIndicator(
              controller: controller,
              count: 3,
              onDotClicked: (index) => controller.animateToPage(index,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn),
            ),
          ),
          TextButton(
              onPressed: () {
                controller.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut);
              },
              child: const Text(
                'NEXT',
              ))
        ]),
      ),
    );
  }
}
