import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task01/constants.dart';
import 'package:google_fonts/google_fonts.dart';

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
  var namesList = <String>[];
  var buttonsList = <Column>[];

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
  int counter = 1;
  int count = counter+=1;
  List<Widget> _0buildButtonsWithNames() {
    for (counter = 0; counter < count; counter++) {
      buttonsList.add(new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.white,
            height: 50,
            width: MediaQuery
                .of(context)
                .size
                .width,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Image.asset(
                    'assets/others_icons/$counter.png',
                    height: 25,
                    width: 25,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  namesList[counter],
                  style: GoogleFonts.getFont(
                    'Nunito',
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: colorBg,
                    size: 18,
                  ),
                ),
              ],
            ),
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
    return buttonsList;
  }
  int count2 = counter+3;
  List<Widget> _1buildButtonsWithNames() {

    for (counter; counter < count2; counter++) {
      buttonsList.add(new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.white,
            height: 50,
            width: MediaQuery
                .of(context)
                .size
                .width,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Image.asset(
                    'assets/others_icons/$counter.png',
                    height: 25,
                    width: 25,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  namesList[counter],
                  style: GoogleFonts.getFont(
                    'Nunito',
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: colorBg,
                    size: 18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      );
    }
    print('counter = $counter');
    return buttonsList;
  }

 /* List<Widget> _2buildButtonsWithNames() {
    for (counter; counter < (counter+=3); counter++) {
      counter +=3;
      buttonsList.add(Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              height: 30,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Image.asset(
                      'assets/others_icons/$counter.png',
                      height: 25,
                      width: 25,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    namesList[counter],
                    style: GoogleFonts.getFont(
                      'Nunito',
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: colorBg,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
    return buttonsList;
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color_grey_bg,
      body:SafeArea(
      child:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                color: Colors.white,
                height: 200,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Image.asset(
                        'assets/delivery/user_pic.jpg',
                        height: 50,
                        width: 50,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 55),
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
                ],),
              ),
              const SizedBox(
                height: 30,
              ),
              Wrap(children: _0buildButtonsWithNames(),),
              SizedBox(height: 20,),
              Wrap(children: _1buildButtonsWithNames(),),
               Padding(
                padding: EdgeInsets.only(top: 100),
                child: Center(
                  child: Container(
                    height: 58,
                    width: 327,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.red, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(32))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
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
            ],
          ),
          ),
      ),
        );
  }
}
