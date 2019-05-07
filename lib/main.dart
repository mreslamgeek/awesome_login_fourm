import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

/*
void main() => runApp(MaterialApp(
      title: 'Login Page',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: LoginPage(),
    ));
*/

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Spacer(),
                    Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.person,
                        size: 80.0,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(right: 32.0, bottom: 32.0),
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    )
                  ],
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(90.0)),
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          const Color(0xFFC02425),
                          const Color(0xFFF0CB35)
                        ])),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                padding: EdgeInsets.only(top: 64),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                          top: 4.0, bottom: 4.0, left: 16.0, right: 16.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.black12, blurRadius: 8.0)
                          ]),
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: 50.0,
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                            prefixIcon: Icon(
                              Icons.email,
                            )),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 22.0),
                      padding: EdgeInsets.only(
                          top: 4.0, bottom: 4.0, left: 16.0, right: 16.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.black12, blurRadius: 8.0)
                          ]),
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: 50.0,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                            prefixIcon: Icon(
                              Icons.vpn_key,
                            )),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16.0, right: 32.0),
                        child: Text(
                          'Forget Password ?',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: 50.0,
                      child: Center(
                        child: GradientButton(
                          elevation: 0.0,
                          shapeRadius: BorderRadius.circular(50.0),
                          increaseHeightBy: MediaQuery.of(context).size.height,
                          increaseWidthBy: MediaQuery.of(context).size.width,
                          child: Text(
                            'Login'.toUpperCase(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                          callback: () {},
                          gradient: Gradients.backToFuture,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
