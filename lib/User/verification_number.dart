import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task01/User/registration.dart';
import 'package:flutter_task01/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


class Verification extends StatefulWidget
{
  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
                'Check your email',
                style: GoogleFonts.getFont(
                  'Lato',
                  color: top_rated,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),),
            Center(
              child:Text(
                'We have sent the code to your email',
                style: GoogleFonts.getFont(
                  'Lato',
                  color: color_text_grey,
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),),
            Padding(padding: EdgeInsets.only(top: 40),
               child:Center(
              child:Container(
              width: 327,
              height: 58,
              child:PinCodeTextField(
          appContext: context,
          pastedTextStyle: TextStyle(
            color: Colors.green.shade600,
            fontWeight: FontWeight.bold,
          ),
          length: 4,
          obscureText: false,
          blinkWhenObscuring: false,
          animationType: AnimationType.fade,
          validator: (v) {
            if (v!.length < 3) {
              return "I'm from validator";
            } else {
              return null;
            }
          },
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(5),
            fieldHeight: 50,
            fieldWidth: 40,
            activeFillColor: Colors.white,
          ),
          cursorColor: Colors.black,
          animationDuration: Duration(milliseconds: 300),
          enableActiveFill: false,
          keyboardType: TextInputType.number,
          boxShadows: [
            BoxShadow(
              offset: Offset(0, 1),
              color: Colors.black12,
              blurRadius: 10,
            )
          ],
          onCompleted: (v) {
            print("Completed");
          },
              onChanged: (String value) {  },
          ),
            ),),),
            Padding(padding: EdgeInsets.only(top: 30),
              child:Center(
              child:Text(
                'code expires in: xx:xx',
                style: GoogleFonts.getFont(
                  'Lato',
                  color: color_text_grey,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),),),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child:Center(
                child:InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Register()));
                  },
                  child:Container(
                    height: 58,
                    width: 327,
                    decoration: BoxDecoration(
                        color:colorbg,
                        borderRadius: BorderRadius.all(Radius.circular(32))
                    ),
                    child:Center(
                      child:Text('Verify',
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
            Padding(
              padding: EdgeInsets.only(top: 20),
              child:Center(
                  child:Container(
                    height: 58,
                    width: 327,
                    decoration: BoxDecoration(
                        color:Colors.white,
                        border: Border.all(color:colorbg, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(32))
                    ),
                    child:Center(
                      child:Text('Send again',
                        style: GoogleFonts.getFont(
                          'Nunito',
                          color: colorbg,
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
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