import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: View(),
    ));

class View extends StatefulWidget {
  ViewState createState() => ViewState();
}

class ViewState extends State {
  Color colorcode = Colors.lightBlue;
  Random random = Random();

  generateRandomColor() {
    Color tempColor = Color.fromARGB(random.nextInt(255), random.nextInt(255),
        random.nextInt(255), random.nextInt(255));
    setState(() {
      colorcode = tempColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorcode,
        body: Center(
          child: FlatButton(
            onPressed: () => generateRandomColor(),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Text(
              'Change!',
              style: TextStyle(
                fontSize: 20.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ));
  }
}
