import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

void main() => runApp(MaterialApp(
      home: ProgressButton(),
    ));

class ProgressButton extends StatefulWidget {
  @override
  _ProgressButtonState createState() => _ProgressButtonState();
}

class _ProgressButtonState extends State<ProgressButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: GradientButton(
              increaseWidthBy: MediaQuery.of(context).size.width / 1.2,
              increaseHeightBy: 50.0,
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
        ],
      ),
    );
  }
}
