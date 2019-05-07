import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main.dart';
import 'dart:async';
import 'fadeIN.dart';

void main() => runApp(MaterialApp(
      title: 'Login Page',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: MySplach(),
      routes: <String, WidgetBuilder>{
        '/screen1': (BuildContext context) => new MySplach(),
        '/screen2': (BuildContext context) => new MyFadeIn(child: LoginPage()),
      },
    ));

class MySplach extends StatefulWidget {
  @override
  _MySplachState createState() => _MySplachState();
}

class _MySplachState extends State<MySplach> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushNamedAndRemoveUntil('/screen2', (Route<dynamic> route) => false);

      /*   Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MyFadeIn(
                    child: LoginPage(),
                  )));*/
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [const Color(0xFFC02425), const Color(0xFFF0CB35)])),
        child: MyFadeIn(
            child: Center(
          child: Icon(
            Icons.account_circle,
            size: 200,
            color: Colors.white,
          ),
        )),
      ),
    );
  }
}
