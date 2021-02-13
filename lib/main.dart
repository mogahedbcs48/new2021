import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hexcolor/hexcolor.dart';

void main() => runApp(MaterialApp(
      title: 'Flutter Demo',
      home: loginScreen(),
    ));

class loginScreen extends StatefulWidget {
  @override
  _loginScreenState createState() => _loginScreenState();
}

// ignore: camel_case_types
class _loginScreenState extends State<loginScreen> {
  // Color color=new Color(hexToInt("FFB74093"));
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromARGB(30, 32, 0, 75),
          body: Column(
            children: [
              Padding(padding:,)
              Text('sdfgsdgssfs', style: TextStyle(color: HexColor('#2c2c3d')))
            ],
          )),
    );
  }
}
