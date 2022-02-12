import 'package:flutter/material.dart';
import 'package:flutter_task01/OnBoard/landing_page.dart';
import 'package:flutter_task01/User/myaccount.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: '',
      ),
      debugShowCheckedModeBanner: false,
      home: MyAccount(),
    );
  }
}
