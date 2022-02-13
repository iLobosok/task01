import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class MyAccount extends StatefulWidget {
  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  final bool checkedvalue = false;
  late String name1;
  late String name2;
  late String name3;
  late String name4;
  late String name5;
  late String name6;
  late String name7;
  late String name8;
  List<String> namesList = <String>[];
  List<Column> buttonsList = <Column>[];

  @override
  void initState() {
    super.initState();
    name1 = 'Orders';
    name2 = 'My details';
    name3 = 'Saved Addresses';
    name4 = 'Payment Methods';
    name5 = 'Vouchers and Credit';
    name6 = 'Notifications';
    name7 = 'Help';
    name8 = 'About';
    namesList.add(name1);
    namesList.add(name2);
    namesList.add(name3);
    namesList.add(name4);
    namesList.add(name5);
    namesList.add(name6);
    namesList.add(name7);
    namesList.add(name8);
  }

  List<Widget> _0buildButtonsWithNames() {
    for (var counter = 0; counter < 1; counter++) {
      buttonsList.add(
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardUI(scorex: counter),
            const SizedBox(
              height: 30,
            ),
            /*Divider(
              color: color_text_grey, //color of divider
              height: 2, //height spacing of divider
              thickness: 3, //thickness of divier line
              indent: 15, //spacing at the start of divider
              endIndent: 15, //spacing at the end of divider
            )*/
          ],
        ),
      );
    }
    for (var counter = 1; counter < 4; counter++) {
      buttonsList.add(
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardUI(scorex: counter),
            const Divider(
              color: color_grey_bg,
              //color of divider
              height: 2,
              //height spacing of divider
              thickness: 3,
              //thickness of divier line
              indent: 15,
              //spacing at the start of divider
              endIndent: 15, //spacing at the end of divider
            ),
          ],
        ),
      );
    }
    for (var counter = 4; counter < 5; counter++) {
      buttonsList.add(
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            CardUI(scorex: counter),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      );
    }
    for (var counter = 5; counter < 8; counter++) {
      buttonsList.add(
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardUI(scorex: counter),
            const Divider(
              color: color_grey_bg,
              //color of divider
              height: 2,
              //height spacing of divider
              thickness: 3,
              //thickness of divier line
              indent: 15,
              //spacing at the start of divider
              endIndent: 15, //spacing at the end of divider
            ),
          ],
        ),
      );
    }
    return buttonsList;
  }

  Widget CardUI({
    var scorex,
  }) {
    return Container(
      color: Colors.white,
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Image.asset(
              'assets/others_icons/$scorex.png',
              height: 25,
              width: 25,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            namesList[scorex],
            style: GoogleFonts.getFont(
              'Nunito',
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              color: colorBg,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color_grey_bg,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                color: Colors.white,
                height: 130,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Image.asset(
                            'assets/delivery/user_pic.jpg',
                            height: 50,
                            width: 50,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(right: 55),
                                child: Text(
                                  'User Name',
                                  style: GoogleFonts.getFont(
                                    'Nunito',
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text(
                                'user.email@eatme.io',
                                style: GoogleFonts.getFont(
                                  'Nunito',
                                  color: color_text_grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Wrap(
                children: _0buildButtonsWithNames(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Center(
                  child: Container(
                    height: 58,
                    width: 327,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.red, width: 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(32))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Icon(
                          Icons.logout,
                          color: Colors.red,
                          size: 25,
                        ),
                        Text(
                          'Logout',
                          style: GoogleFonts.getFont(
                            'Nunito',
                            color: Colors.red,
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height:10),
            ],
          ),
        ),
      ),
    );
  }
}
