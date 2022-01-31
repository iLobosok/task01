import 'package:flutter/material.dart';
import 'package:flutter_task01/Delivery/home_delivery.dart';
import 'package:flutter_task01/OnBoard/OnBoardingScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: HomeDelivery(),
    );
  }
}
