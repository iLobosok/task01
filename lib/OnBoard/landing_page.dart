import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task01/OnBoard/slider_layout.dart';

class LandingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: onBordingBody(),
    );
  }

  Widget onBordingBody() => Container(
    child: SliderLayoutView(),
  );
}