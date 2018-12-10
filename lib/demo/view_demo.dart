import 'package:flutter/material.dart';

class ViewDemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        Container(
          alignment: Alignment(0.0, 0.0),
          color: Colors.brown[900],
          child: Text(
            'ONE',
            style: TextStyle(
              fontSize: 32.0,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          alignment: Alignment(0.0, 0.0),
          color: Colors.blue[900],
          child: Text(
            'TWO',
            style: TextStyle(
              fontSize: 32.0,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          alignment: Alignment(0.0, 0.0),
          color: Colors.green[900],
          child: Text(
            'THREE',
            style: TextStyle(
              fontSize: 32.0,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}