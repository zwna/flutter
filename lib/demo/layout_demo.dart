import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
         SizedBox(
           width: 200.0,
           height: 300.0,
           child: Container(
             decoration: BoxDecoration(
               color: Colors.indigoAccent,
               borderRadius: BorderRadius.circular(15.0),
             ),
             child: Icon(
               Icons.ac_unit,
               color: Colors.white,
               size: 32.0,
             ),
           ),
         ),
         SizedBox(
           width: 50.0,
           height: 20.0,
         ),
         SizedBox(
           width: 100.0,
           height: 100.0,
           child: Container(
             decoration: BoxDecoration(
               color: Colors.indigoAccent,
               borderRadius: BorderRadius.circular(15.0),
             ),
             child: Icon(
               Icons.brightness_2,
               color: Colors.white,
               size: 32.0,
             ),
           ),
         ),
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget{

  final IconData iconData;

  final double size;

  IconBadge(this.iconData,{this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
          iconData,
        size: size,
        color: Colors.white,
      ),
      width: size + 60.0,
      height: size + 60.0,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}