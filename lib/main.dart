import 'package:flutter/material.dart';
import 'package:flutter_practice/pages/firstpage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nanniea',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const FirstPage(),
    );
  }
}
