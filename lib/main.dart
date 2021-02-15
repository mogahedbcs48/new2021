import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
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
    return Scaffold(

        // alignment: Alignment.topCenter,
        //   backgroundColor: Color.fromRGBO(133, 36, 227, 1),
        body: Container(
            color: Color.fromRGBO(133, 36, 227, 1),
            child: ListView(
              children: [
                Stack(
                  children: [
                    shadoe(),
                    Padding(padding: EdgeInsets.all(00)),
                    Padding(padding: EdgeInsets.only(left: 22, top: 150)),
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 22)),
                            cercel(),
                            Padding(
                                padding: EdgeInsets.only(left: 22, top: 400)),
                            cercel(),
                            Padding(padding: EdgeInsets.only(left: 22)),
                            cercel(),
                          ],
                        ),

                        Padding(padding: EdgeInsets.only(left: 50, top: 00)),

                        //text
                        firstname(),
                        Padding(padding: EdgeInsets.only(left: 50, top: 20)),
                        secandtname(),
                      ],
                    ),
                  ],
                ),
                // TextField()
              ],
            )));
  }

  Widget cercel() {
    return CircleAvatar(
      radius: 50,
      backgroundColor: Color.fromRGBO(133, 36, 227, 1),
      child: Container(
        //  alignment: Alignment.bottomRight,
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
    );
  }

  Widget shadoe() {
    return Container(
      // alignment: Alignment.center,
      // margin: EdgeInsets.only(top: 00, left: 00, right: 00),
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

      // Padding(padding: EdgeInsets.only(left: 66, top: 44)),
      child: Center(
        child: Text(
          "Login",
          style: TextStyle(fontSize: 70, color: Colors.white),
        ),
      ),
    );
  }

  Widget firstname() {
    return Container(
        // color: Colors.white12,
        width: 350,
        height: 50,
        child: TextFormField(
          validator: (val) {
            if (val.contains('@')) {
              return "Email have";
            } else {
              return ("Email must have");
            }
          },
          keyboardType: TextInputType.emailAddress,
          // textInputAction: TextInputAction.continueAction,

          autofocus: true,
          //sdssscursorWidth: 55,
          cursorColor: Colors.white,
          cursorRadius: Radius.circular(1.0),
          // cursorWidth: 1.0,
          textAlign: TextAlign.left,
          //maxLength: 4,//number of char
          //maxLines: 3, // number of line
          // obscureText: true, //password

          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
          decoration: InputDecoration(
              fillColor: Colors.white24,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: new BorderRadius.circular(10.0),
                borderSide: new BorderSide(
                  color: Colors.white,
                ),
              ),

              //icon: Icon(Icons.print),
              prefixIcon: Icon(
                Icons.print,
                color: Colors.white,
              ),
              // prefix: CircularProgressIndicator(),//دائرة بتلف شكل ايكون
              //
              // border: InputBorder.none,
              // helperText: "Hello", //same as lable
              labelText: "First Name",
              labelStyle:
                  TextStyle(fontWeight: FontWeight.w300, color: Colors.white),
              hintText: "Demo Text",
              hintStyle: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w300,
                  color: Colors.white)),
          // controller: controller,
        ));
  }

  Widget secandtname() {
    return Container(
        // color: Colors.white12,
        width: 350,
        height: 50,
        child: TextFormField(
          validator: (val) {
            if (val.contains('@')) {
              return "Email have";
            } else {
              return ("Email must have");
            }
          },
          keyboardType: TextInputType.emailAddress,
          // textInputAction: TextInputAction.continueAction,

          autofocus: true,
          //sdssscursorWidth: 55,
          cursorColor: Colors.white,
          cursorRadius: Radius.circular(1.0),
          // cursorWidth: 1.0,
          textAlign: TextAlign.left,
          //maxLength: 4,//number of char
          //maxLines: 3, // number of line
          // obscureText: true, //password

          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
          decoration: InputDecoration(
              fillColor: Colors.white24,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: new BorderRadius.circular(10.0),
                borderSide: new BorderSide(
                  color: Colors.white,
                ),
              ),

              //icon: Icon(Icons.print),
              prefixIcon: Icon(
                Icons.print,
                color: Colors.white,
              ),
              // prefix: CircularProgressIndicator(),//دائرة بتلف شكل ايكون
              //
              // border: InputBorder.none,
              // helperText: "Hello", //same as lable
              labelText: "last Name",
              labelStyle:
                  TextStyle(fontWeight: FontWeight.w300, color: Colors.white),
              hintText: "Demo Text",
              hintStyle: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w300,
                  color: Colors.white)),
          // controller: controller,
        ));
  }
}
