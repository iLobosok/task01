import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task01/User/verification_number.dart';
import 'package:flutter_task01/constants.dart';
import 'package:google_fonts/google_fonts.dart';


class Login extends StatefulWidget
{
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          Padding(padding: EdgeInsets.only(left: 102,top: 70),
            child:Text(
            'Sign up or Login',
            style: GoogleFonts.getFont(
              'Lato',
              color: top_rated,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),),
          Padding(
              padding: EdgeInsets.only(top: 45),
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
              child:InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Verification()));
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
          Padding(padding: EdgeInsets.only(top:20),
          child:Center(
            child:Text('or continue with',
            style: GoogleFonts.getFont(
              'Nunito',
              color: color_text_grey,
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          ),
          ),),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child:Center(
              child:Container(
                  height: 58,
                  width: 327,
                  decoration: BoxDecoration(
                      color:color_apple,
                      borderRadius: BorderRadius.all(Radius.circular(32))
                  ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    SizedBox(
                      height: 22,
                    width: 22,
                    child:Image.asset('assets/others_icons/apple.png', height: 22, width: 22,),),
                      SizedBox(width: 12,),
                    Text('Apple',
                      style: GoogleFonts.getFont(
                        'Nunito',
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    ],
                    ),
                    ),
                  ),
            ),
          Padding(
            padding: EdgeInsets.only(top: 16),
            child:Center(
              child:Container(
                height: 58,
                width: 327,
                decoration: BoxDecoration(
                    color:color_facebook,
                    borderRadius: BorderRadius.all(Radius.circular(32))
                ),
               child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 22,
                        width: 22,
                        child:Image.asset('assets/others_icons/facebook.png', height: 22, width: 22,),),
                      SizedBox(width: 12,),
                      Text('Facebook',
                        style: GoogleFonts.getFont(
                          'Nunito',
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16),
            child:Center(
              child:Container(
                height: 58,
                width: 327,
                decoration: BoxDecoration(
                    color:Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(32))
                ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 22,
                      width: 22,
                      child:Image.asset('assets/others_icons/google.png', height: 22, width: 22,),),
                    SizedBox(width: 12,),
                    Text('Google',
                      style: GoogleFonts.getFont(
                        'Nunito',
                        color: Colors.black,
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
    );
  }
}