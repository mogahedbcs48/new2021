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
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromARGB(30, 32, 0, 75),
          body: Column(
            children: [],
          )),
    );
  }
}
