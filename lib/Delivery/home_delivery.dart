import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../User/login.dart';
import '../constants.dart';
import 'card_view.dart';
import 'detail_page.dart';

//Sizes

class HomeDelivery extends StatefulWidget {
  @override
  _HomeDeliveryState createState() => _HomeDeliveryState();
}

class _HomeDeliveryState extends State<HomeDelivery> {
  @override
  void initState() {
    super.initState();
  }

  SliverAppBar createSilverAppBar1() {
    return SliverAppBar(
      backgroundColor: Colors.white,
      expandedHeight: 160,
      floating: false,
      elevation: 0,
      flexibleSpace: LayoutBuilder(
          builder: (context, constraints) {
        return FlexibleSpaceBar(
          collapseMode: CollapseMode.parallax,
          background: Column(
            children: <Widget>[
              Wrap(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 20, 0, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Your location',
                          style: GoogleFonts.getFont(
                            'Nunito',
                            fontSize: 17,
                            height: 1.3,
                            color: Colors.grey,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'New York City',
                              style: GoogleFonts.getFont(
                                'Nunito',
                                fontSize: 18,
                                height: 1.3,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.black,
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) => Login()));
                                },
                                child: Image.asset(
                                  'assets/delivery/user_pic.jpg',
                                  height: 30,
                                  width: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 36,
                              width: 105,
                              child: TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          colorBg),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0),
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  'Delivery',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              height: 36,
                              width: 105,
                              child: TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.grey),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0),
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  'Pickup',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.40,
                  ),
                ],
              ),
              SizedBox(
                width: 575,
                height: 8,
                child: Container(
                  color: spacebg,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  SliverAppBar createSilverAppBar2() {
    return SliverAppBar(
      backgroundColor: Colors.white,
      pinned: true,
      title: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 297,
              height: 46,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(244, 243, 243, 1),
                  borderRadius: BorderRadius.circular(15)),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.black87,
                  ),
                  hintText: 'Dishes, restaurants or cusines',
                  hintStyle: GoogleFonts.getFont(
                    'Nunito',
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 13, left: 20),
              child: Image.asset(
                'assets/delivery/settings_filter.png',
                width: 18,
                height: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxScrolled) {
            return <Widget>[createSilverAppBar1(), createSilverAppBar2()];
          },
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                /* Wrap(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 20, 0, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Your location',
                          style: GoogleFonts.getFont(
                            'Nunito',
                            fontSize: 17,
                            height: 1.3,
                            color: Colors.grey,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'New York City',
                              style: GoogleFonts.getFont(
                                'Nunito',
                                fontSize: 18,
                                height: 1.3,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.black,
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Login()));
                                },
                                child: Image.asset(
                                  'assets/delivery/user_pic.jpg',
                                  height: 30,
                                  width: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 36,
                              width: 105,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Delivery',
                                  style: TextStyle(color: Colors.white),
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                  MaterialStateProperty.all<Color>(colorbg),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              height: 36,
                              width: 105,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Pickup',
                                  style: TextStyle(color: Colors.white),
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                  MaterialStateProperty.all<Color>(
                                      Colors.grey),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.40,
                  ),
                ],
              ),
              SizedBox(
                width: 575,
                height: 8,
                child: Container(
                  color: spacebg,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 35),
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 297,
                        height: 46,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(244, 243, 243, 1),
                            borderRadius: BorderRadius.circular(15)),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black87,
                            ),
                            hintText: "Dishes, restaurants or cusines",
                            hintStyle: GoogleFonts.getFont(
                              'Nunito',
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 13, left: 20),
                        child: Image.asset(
                          'assets/delivery/settings_filter.png',
                          width: 18,
                          height: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),*/
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 80.0,
                  child: ListView.builder(
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: CardInfoCarousel.getUser().length,
                    itemBuilder: (context, index) => Card(
                      margin: const EdgeInsets.only(
                        left: 7.0,
                        right: 7.0,
                      ),
                      child: Stack(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            child: Image.asset(
                              CardInfoCarousel.getUser()[index].image,
                              width: 80,
                              height: 80,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 56,
                              left: 10,
                            ),
                            child: Text(
                              CardInfoCarousel.getUser()[index].title,
                              style: GoogleFonts.getFont(
                                'Nunito',
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    'Top Rated',
                    style: GoogleFonts.getFont(
                      'Lato',
                      color: top_rated,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 260,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: CardTopRated.getUser().length,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Details()));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(
                          left: 7.0,
                          right: 7.0,
                        ),
                        child: Stack(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 110),
                              child: Container(
                                height: 260,
                                width: 260,
                                child: Image.asset(
                                  CardTopRated.getUser()[index].image,
                                  width: 260,
                                  height: 260,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 145,
                              ),
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 60),
                                    child: Text(
                                      CardTopRated.getUser()[index].title,
                                      style: GoogleFonts.getFont(
                                        'Nunito',
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      const Icon(
                                        Icons.star,
                                        color: Colors.greenAccent,
                                      ),
                                      Text(
                                        CardTopRated.getUser()[index].rate_text,
                                        style: GoogleFonts.getFont(
                                          'Nunito',
                                          color: Colors.greenAccent,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 35),
                                        child: Text(
                                          '(50+)',
                                          style: GoogleFonts.getFont(
                                            'Nunito',
                                            color: color_text_grey,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    CardTopRated.getUser()[index].more,
                                    style: GoogleFonts.getFont(
                                      'Nunito',
                                      fontSize: 13,
                                      color: color_text_grey,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    '1.7 km away Free delivery',
                                    style: GoogleFonts.getFont(
                                      'Nunito',
                                      fontSize: 13,
                                      color: color_text_grey,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(top: 10, left: 12),
                                child: Container(
                                  height: 30,
                                  width: 103,
                                  decoration: const BoxDecoration(
                                      color: color_red_button,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  child: Center(
                                    child: Text(
                                      'Free delivery',
                                      style: GoogleFonts.getFont(
                                        'Nunito',
                                        fontSize: 12,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                )),
                            Padding(
                                padding: const EdgeInsets.only(top: 130, left: 176),
                                child: Container(
                                  height: 33,
                                  width: 66,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  child: Center(
                                    child: Text(
                                      '${CardTopRated.getUser()[index].delivery_time}\n mins',
                                      style: GoogleFonts.getFont(
                                        'Nunito',
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 260,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: CardTopRated.getUser().length,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Details()));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(
                          left: 7.0,
                          right: 7.0,
                        ),
                        child: Stack(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 110),
                              child: Container(
                                height: 260,
                                width: 260,
                                child: Image.asset(
                                  CardTopRated.getUser()[index].image,
                                  width: 260,
                                  height: 260,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 145,
                              ),
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 60),
                                    child: Text(
                                      CardTopRated.getUser()[index].title,
                                      style: GoogleFonts.getFont(
                                        'Nunito',
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      const Icon(
                                        Icons.star,
                                        color: Colors.greenAccent,
                                      ),
                                      Text(
                                        CardTopRated.getUser()[index].rate_text,
                                        style: GoogleFonts.getFont(
                                          'Nunito',
                                          color: Colors.greenAccent,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 35),
                                        child: Text(
                                          '(50+)',
                                          style: GoogleFonts.getFont(
                                            'Nunito',
                                            color: color_text_grey,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    CardTopRated.getUser()[index].more,
                                    style: GoogleFonts.getFont(
                                      'Nunito',
                                      fontSize: 13,
                                      color: color_text_grey,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    '1.7 km away Free delivery',
                                    style: GoogleFonts.getFont(
                                      'Nunito',
                                      fontSize: 13,
                                      color: color_text_grey,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(top: 10, left: 12),
                                child: Container(
                                  height: 30,
                                  width: 103,
                                  decoration: const BoxDecoration(
                                      color: color_red_button,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  child: Center(
                                    child: Text(
                                      'Free delivery',
                                      style: GoogleFonts.getFont(
                                        'Nunito',
                                        fontSize: 12,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                )),
                            Padding(
                                padding: const EdgeInsets.only(top: 130, left: 176),
                                child: Container(
                                  height: 33,
                                  width: 66,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  child: Center(
                                    child: Text(
                                      '${CardTopRated.getUser()[index].delivery_time}\n mins',
                                      style: GoogleFonts.getFont(
                                        'Nunito',
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 260,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: CardTopRated.getUser().length,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Details()));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(
                          left: 7.0,
                          right: 7.0,
                        ),
                        child: Stack(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 110),
                              child: Container(
                                height: 260,
                                width: 260,
                                child: Image.asset(
                                  CardTopRated.getUser()[index].image,
                                  width: 260,
                                  height: 260,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 145,
                              ),
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 60),
                                    child: Text(
                                      CardTopRated.getUser()[index].title,
                                      style: GoogleFonts.getFont(
                                        'Nunito',
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      const Icon(
                                        Icons.star,
                                        color: Colors.greenAccent,
                                      ),
                                      Text(
                                        CardTopRated.getUser()[index].rate_text,
                                        style: GoogleFonts.getFont(
                                          'Nunito',
                                          color: Colors.greenAccent,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 35),
                                        child: Text(
                                          '(50+)',
                                          style: GoogleFonts.getFont(
                                            'Nunito',
                                            color: color_text_grey,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    CardTopRated.getUser()[index].more,
                                    style: GoogleFonts.getFont(
                                      'Nunito',
                                      fontSize: 13,
                                      color: color_text_grey,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    '1.7 km away Free delivery',
                                    style: GoogleFonts.getFont(
                                      'Nunito',
                                      fontSize: 13,
                                      color: color_text_grey,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(top: 10, left: 12),
                                child: Container(
                                  height: 30,
                                  width: 103,
                                  decoration: const BoxDecoration(
                                      color: color_red_button,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  child: Center(
                                    child: Text(
                                      'Free delivery',
                                      style: GoogleFonts.getFont(
                                        'Nunito',
                                        fontSize: 12,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                )),
                            Padding(
                                padding: const EdgeInsets.only(top: 130, left: 176),
                                child: Container(
                                  height: 33,
                                  width: 66,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  child: Center(
                                    child: Text(
                                      '${CardTopRated.getUser()[index].delivery_time}\n mins',
                                      style: GoogleFonts.getFont(
                                        'Nunito',
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
