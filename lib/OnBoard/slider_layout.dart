import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task01/Delivery/home_delivery.dart';
import 'package:flutter_task01/OnBoard/slide_item.dart';
import 'package:flutter_task01/OnBoard/slider.dart';
import 'package:flutter_task01/OnBoard/slider_page_count.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class SliderLayoutView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SliderLayoutViewState();
}

class _SliderLayoutViewState extends State<SliderLayoutView> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) => topSliderLayout();

  Widget topSliderLayout() => Container(
    color: colorbg,
    child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: _pageController,
              onPageChanged: _onPageChanged,
              itemCount: sliderArrayList.length,
              itemBuilder: (ctx, i) => SlideItem(i),
            ),
            Stack(
              alignment: AlignmentDirectional.topStart,
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(right: 15.0, bottom: 55.0),
                    child: InkWell(
                      onTap: () {
                        //closed screen and go to Delivery
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => HomeDelivery()),
                              (Route<dynamic> route) => false,
                        );
                        },
                      child:Container(
                        height: 58,
                        width: 327,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(32))
                        ),
                        child:Center(
                          child:Text('Login',
                            style: GoogleFonts.getFont(
                              'Nunito',
                              color: colorbg,
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),),
                  ),
                ),
                Container(
                  alignment: AlignmentDirectional.bottomCenter,
                  margin: EdgeInsets.only(bottom: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      for (int i = 0; i < sliderArrayList.length; i++)
                        if (i == _currentPage)
                          SlideDots(true)
                        else
                          SlideDots(false)
                    ],
                  ),
                ),
              ],
            )
          ],
        )),
  );
}