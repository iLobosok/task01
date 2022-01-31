import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyAccount extends StatefulWidget
{
  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  final bool checkedvalue = false;


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
    onPressed: () {
    Navigator.pop(context);
    },
    ),

      ],
    ),
        ),
    );
  }
}