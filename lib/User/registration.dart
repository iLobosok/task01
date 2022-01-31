import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task01/User/myaccount.dart';
import 'package:flutter_task01/constants.dart';
import 'package:google_fonts/google_fonts.dart';


class Register extends StatefulWidget
{
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final bool checkedvalue = false;


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool check = false;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Padding(padding: EdgeInsets.only(left: 102,top: 60),
              child:Text(
                'Create Account',
                style: GoogleFonts.getFont(
                  'Lato',
                  color: top_rated,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child:Center(
                child:Container(
                  width: 327,
                  height: 56,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(244, 243, 243, 1),
                      borderRadius: BorderRadius.circular(8)),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "First Name",

                      hintStyle: GoogleFonts.getFont(
                        'Nunito',
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child:Center(
                child:Container(
                  width: 327,
                  height: 56,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(244, 243, 243, 1),
                      borderRadius: BorderRadius.circular(8)),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Last Name",

                      hintStyle: GoogleFonts.getFont(
                        'Nunito',
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child:Center(
                child:Container(
                  width: 327,
                  height: 56,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(244, 243, 243, 1),
                      borderRadius: BorderRadius.circular(8)),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email Address",

                      hintStyle: GoogleFonts.getFont(
                        'Nunito',
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child:Center(
                child:Container(
                  width: 327,
                  height: 56,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(244, 243, 243, 1),
                      borderRadius: BorderRadius.circular(8)),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",

                      hintStyle: GoogleFonts.getFont(
                        'Nunito',
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10, left: 30),
                child:Text(
                  'Password must be at least 8 characters long',
                  style: GoogleFonts.getFont(
                    'Lato',
                    color: color_text_grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),),
            Padding(padding: EdgeInsets.only(top: 10),
              child:CheckboxListTile(
                title: Text("Tick this box if you would not like to receive Eat Me marketing offers and promotions via email",
                  style: GoogleFonts.getFont(
                    'Nunito',
                    color: color_text_grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                value: check,
                onChanged: (newValue) {
                  CheckboxListTile(

                    value: check,
                    onChanged: (newValue) {
                      setState(() {
                        check = true;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                  );
                },
                controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
              ),),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child:Center(
                child:InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyAccount()));
                  },
                  child:Container(
                    height: 58,
                    width: 327,
                    decoration: BoxDecoration(
                        color:colorbg,
                        borderRadius: BorderRadius.all(Radius.circular(32))
                    ),
                    child:Center(
                      child:Text('Continue',
                        style: GoogleFonts.getFont(
                          'Nunito',
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}