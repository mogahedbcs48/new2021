import 'package:flutter/material.dart';

class RegScreen extends StatefulWidget {
  @override
  _RegScreenState createState() => _RegScreenState();
}

// ignore: camel_case_types
class _RegScreenState extends State<RegScreen> {
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
                  // Padding(padding: EdgeInsets.all(00)),
                  //  Padding(padding: EdgeInsets.only(left: 22, top: 150)),

                  Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 100)),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 35, top: 200)),
                          cercel(),
                          Padding(padding: EdgeInsets.only(left: 200)),
                          cercel(),
                          //  Padding(padding: EdgeInsets.only(top: 00)),
                        ],
                      ),
                      // Padding(padding: EdgeInsets.only(right: 15)),
                      Container(
                          padding: EdgeInsets.only(left: 22, bottom: 10),
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Name',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                            ),
                          )),

                      //text
                      firstname(),
                      Padding(padding: EdgeInsets.only(left: 50, top: 20)),
                      Container(
                          padding: EdgeInsets.only(left: 22, bottom: 10),
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Email Adress',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                            ),
                          )),

                      secandtname(),

                      Container(
                          padding: EdgeInsets.only(left: 22, top: 20),
                          alignment: Alignment.topLeft,
                          child: Text(
                            ' Password',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                            ),
                          )),
                      password(),

                      Padding(padding: EdgeInsets.only(top: 20)),
                      ras(),
                      Container(
                          padding: EdgeInsets.only(right: 22, top: 20),
                          alignment: Alignment.center,
                          child: Text(
                            'Alrady have acount? Singin',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          )),
                      Row(
                        children: [
                          // Padding(padding: EdgeInsets.only(left: 35, top: 200)),
                          cercel(),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 80, right: 00, top: 44)),
                          cercel(),
                           padding: EdgeInsets.only(
                                  left: 80, right: 00, top: 44),
                          cercel(),
                          //  Padding(padding: EdgeInsets.only(top: 00)),
                        ],
                      ),
                    ],
                  ),

                  //insstesssssssssssssssssssssssssssssssssssssssssss
                ],
              ),
              // TextField()
            ],
          )),

      /* bottomNavigationBar: BottomNavigationBar(
        items: 
        
        const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        // currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        //  onTap: _onItemTapped,
      ),*/
    );
  }

  Widget cercel() {
    return CircleAvatar(
      radius: 30,
      backgroundColor: Color.fromRGBO(133, 36, 227, 1),
      child: Container(
        //  alignment: Alignment.bottomRight,
        //  margin: EdgeInsets.only(top: 00, left: 00, right: 00),
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
              offset: Offset(0, -8), // changes position of shadow
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
          "Sing Up",
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
              Icons.email,
              color: Colors.white,
            ),
            // prefix: CircularProgressIndicator(),//دائرة بتلف شكل ايكون
            //
            // border: InputBorder.none,
            // helperText: "Hello", //same as lable
            labelText: "First Name",
            labelStyle:
                TextStyle(fontWeight: FontWeight.w300, color: Colors.white),
            // hintText: "Demo Text",
            /*hintStyle: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w300,
                  color: Colors.white)*/
          ),
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
              // Icons.remove_red_eye,
              Icons.vpn_key,
              color: Colors.white,
            ),
            // prefix: CircularProgressIndicator(),//دائرة بتلف شكل ايكون
            //
            // border: InputBorder.none,
            // helperText: "Hello", //same as lable
            labelText: "last Name",
            labelStyle:
                TextStyle(fontWeight: FontWeight.w300, color: Colors.white),
            /* hintText: "Demo Text",
              hintStyle: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w300,
                  color: Colors.white)*/
          ),
          // controller: controller,
        ));
  }

  Widget password() {
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
              // Icons.remove_red_eye,
              Icons.vpn_key,
              color: Colors.white,
            ),
            // prefix: CircularProgressIndicator(),//دائرة بتلف شكل ايكون
            //
            // border: InputBorder.none,
            // helperText: "Hello", //same as lable
            labelText: "last Name",
            labelStyle:
                TextStyle(fontWeight: FontWeight.w300, color: Colors.white),
            /* hintText: "Demo Text",
              hintStyle: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w300,
                  color: Colors.white)*/
          ),
          // controller: controller,
        ));
  }

  Widget ras() {
    return

        /*
    Material(
      //inkwell change colors inside button
      child: InkWell(
        splashColor: Colors.red, // inkwell color
        child: SizedBox(
          width: 150,
          height: 56,
          child: Text(
            "Login",
            style:
                TextStyle(color: Color.fromRGBO(133, 36, 227, 1), fontSize: 40),
          ),
        ),
        onTap: () {},
      ),

      /* FloatingActionButton.extended(
        onPressed: () {},
        //  icon: Icon(Icons.save),
        label: Text(
          "Login",
          style:
              TextStyle(color: Color.fromRGBO(133, 36, 227, 1), fontSize: 40),
        ),
        backgroundColor: Colors.white70,
        shape: CircleBorder(),


      ),
     */
    );*/

        // elevation: 0,
        //  hoverElevation: 0,
        //   focusElevation: 0,
        //   highlightElevation: 0,

        RaisedButton(
      child: Text(
        'Sing Up',
        style: TextStyle(color: Color.fromRGBO(133, 36, 227, 1), fontSize: 30),
      ),
      color: Colors.white70,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      onPressed: () {},
      padding:
          const EdgeInsets.only(right: 30.0, left: 30, top: 10, bottom: 10),
    );

    //      decoration: const BoxDecoration(gradient: LinearGradient())));
  }
}
