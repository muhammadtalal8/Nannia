import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_practice/pages/onboarding.dart';
class FirstPage extends StatefulWidget {
  const FirstPage({super.key});
  @override
  State<FirstPage> createState() => _FirstPageState();
}
class _FirstPageState extends State<FirstPage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    Future.delayed(const Duration(milliseconds: 5000), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) =>  const Onboarding()));
    });
  }
  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(104, 170, 255, 1),
              Color.fromRGBO(255, 151, 201, 1),
            ],
          ),
        ),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 177,
                  height: 36,
                  child: Text(
                    'Nanniea',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
