import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      title: 'Flutter Demo',
      home: LoginScreen(),
    ));

class LoginScreen extends StatefulWidget {
  @override
  _loginScreenState createState() => _loginScreenState();
}

// ignore: camel_case_types
class _loginScreenState extends State<LoginScreen> {
  // Color color=new Color(hexToInt("FFB74093"));
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stack(
      alignment: Alignment.topCenter,
      //   backgroundColor: Color.fromRGBO(133, 36, 227, 1),
      children: [
        Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 00, left: 00, right: 00),
            height: 200,
            width: 900,
            decoration: BoxDecoration(
              color: Color.fromRGBO(133, 36, 227, 1),
              borderRadius: BorderRadius.circular(20), //border corner radius
              boxShadow: [
                BoxShadow(
                  color: Colors.black38.withOpacity(0.2), //color of shadow
                  spreadRadius: 5, //spread radius
                  blurRadius: 7, // blur radius
                  offset: Offset(0, 2), // changes position of shadow
                  //first paramerter of offset is left-right
                  //second parameter is top to down
                ),
                //you can set more BoxShadow() here
              ],
            ),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(left: 66, top: 66)),
                Center(
                    child: Column(
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(fontSize: 70, color: Colors.white),
                    ),
                    // Padding(padding: EdgeInsets.only(left: 66, top: 44)),
                  ],
                )),
              ],
            )),
        Padding(padding: EdgeInsets.only(left: 22, top: 00)),
        CircleAvatar(
          radius: 50,
          backgroundColor: Color.fromRGBO(133, 36, 227, 1),
          child: Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 00, left: 00, right: 00),
            // height: 200,
            //width: 900,
            decoration: BoxDecoration(
              color: Color.fromRGBO(133, 36, 227, 1),
              borderRadius: BorderRadius.circular(100), //border corner radius
              boxShadow: [
                BoxShadow(
                  color: Colors.black38.withOpacity(0.2), //color of shadow
                  spreadRadius: 5, //spread radius
                  blurRadius: 7, // blur radius
                  offset: Offset(0, 2), // changes position of shadow
                  //first paramerter of offset is left-right
                  //second parameter is top to down
                ),
                //you can set more BoxShadow() here
              ],
            ),
          ),
        )
      ],
    ));
  }
}
