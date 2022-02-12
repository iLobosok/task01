import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
import 'card_view.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  final bool checkedvalue = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: [
                  Container(
                    height: 280,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      'assets/list_categories/pancakes.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 35),
                        child: RawMaterialButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          elevation: 2.0,
                          fillColor: Colors.white,
                          shape: const CircleBorder(),
                          child: const Icon(
                            Icons.arrow_back,
                            size: 25.0,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 35,
                        ),
                        child: RawMaterialButton(
                          onPressed: () {},
                          elevation: 2.0,
                          fillColor: Colors.white,
                          shape: const CircleBorder(),
                          child: const Icon(
                            Icons.file_download,
                            size: 25.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 35,
                        ),
                        child: RawMaterialButton(
                          onPressed: () {},
                          elevation: 2.0,
                          fillColor: Colors.white,
                          shape: const CircleBorder(),
                          child: const Icon(
                            Icons.search,
                            size: 25.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  top: 10,
                ),
                child: Text(
                  'Banana Tree Pancakes',
                  style: GoogleFonts.getFont(
                    'Lato',
                    color: top_rated,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  top: 5,
                ),
                child: Row(
                  children: <Widget>[
                    const Icon(
                      Icons.star,
                      color: Colors.greenAccent,
                    ),
                    Text(
                      '4.7 Excellent',
                      style: GoogleFonts.getFont(
                        'Nunito',
                        color: Colors.greenAccent,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        '(50+) Pancakes, Desserts',
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
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                ),
                child: Row(
                  children: <Widget>[
                    const Icon(
                      Icons.location_on_outlined,
                      color: color_text_grey,
                    ),
                    Text(
                      '1.7 km away, 149 North End Road, L...',
                      style: GoogleFonts.getFont(
                        'Nunito',
                        color: color_text_grey,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'View map',
                        style: GoogleFonts.getFont(
                          'Nunito',
                          color: Colors.greenAccent,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                ),
                child: Text(
                  'Free delivery',
                  style: GoogleFonts.getFont(
                    'Nunito',
                    color: color_text_grey,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Center(
                  child: Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width * 0.9,
                      color: Colors.grey),
                ),
              ), //grey line
              Row(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(left: 30, top: 20),
                      child: Image.asset(
                        'assets/others_icons/delivery.png',
                        color: color_text_grey,
                        height: 20,
                        width: 20,
                      )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 70,
                          top: 20,
                        ),
                        child: Text(
                          'Restaurant info',
                          style: GoogleFonts.getFont(
                            'Nunito',
                            color: top_rated,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          'Map, allergens and hygiene rating',
                          style: GoogleFonts.getFont(
                            'Nunito',
                            color: color_text_grey,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(
                      right: 20,
                      top: 20,
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: colorBg,
                      size: 18,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Center(
                  child: Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width * 0.9,
                      color: Colors.grey),
                ),
              ),
              Row(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(left: 30, top: 20),
                      child: Image.asset(
                        'assets/others_icons/delivery_hands.png',
                        color: color_text_grey,
                        height: 20,
                        width: 20,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      top: 20,
                    ),
                    child: Text(
                      'Deliver in around 10 min',
                      style: GoogleFonts.getFont(
                        'Nunito',
                        color: top_rated,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 20,
                      top: 20,
                    ),
                    child: Text(
                      'Change',
                      style: GoogleFonts.getFont(
                        'Nunito',
                        color: colorBg,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 20,
              ),
              Container(
                height: 58,
                width: MediaQuery.of(context).size.width,
                color: button_pickup,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 20,
                  ),
                  child: Text(
                    'Special Offers',
                    style: GoogleFonts.getFont(
                      'Nunito',
                      color: top_rated,
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Mama\'s Special',
                      style: GoogleFonts.getFont(
                        'Nunito',
                        color: top_rated,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '1 mega pizza, 4 pieces plain garlic bread, portion of\n chicken wings',
                      style: GoogleFonts.getFont(
                        'Nunito',
                        color: color_text_grey,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '\$29,99',
                      style: GoogleFonts.getFont(
                        'Nunito',
                        color: top_rated,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              ListView.builder(
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 3,
                itemBuilder: (context, index) => Container(
                  height: 100,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              Pancakes.getUser()[index].title,
                              style: GoogleFonts.getFont(
                                'Nunito',
                                color: top_rated,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              Pancakes.getUser()[index].description,
                              style: GoogleFonts.getFont(
                                'Nunito',
                                color: color_text_grey,
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '\$2,99',
                              style: GoogleFonts.getFont(
                                'Nunito',
                                color: top_rated,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, bottom: 20),
                        child: Container(
                          height: 82,
                          width: 82,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                          ),
                          child: Image.asset(
                            Pancakes.getUser()[index].image,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
