import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 200.0,
              maxWidth: 400.0,
              minWidth: 200.0,
              maxHeight: 400.0,
            ),
            child: Container(
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}

class AspectRatioDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  AspectRatio(
      aspectRatio: 3.0/2.0,
      child: Container(
        color: Color.fromRGBO(3, 53, 255, 1.0),
      ),
    );
  }
}

class StackDemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return  Stack(
      alignment: Alignment(1.0, 0.0),
      children: <Widget>[
        SizedBox(
          width: 200.0,
          height: 300.0,
          child: Container(
//             alignment: Alignment(1.0, -0.5),
          child: Icon(
              Icons.ac_unit,
              color: Colors.white,
          ),
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
              color: Colors.indigoAccent,
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        SizedBox(
          width: 100.0,
          height: 100.0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.indigoAccent,
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  Colors.amber,
                  Colors.amber[100],
                ],
              ),
//                   borderRadius: BorderRadius.circular(15.0),
            ),
            child: Icon(
              Icons.brightness_2,
              color: Colors.white,
              size: 32.0,
            ),
          ),
        ),
//        Positioned(
//          top: 20.0,
//          right: 20.0,
//          child: Icon(
//            Icons.ac_unit,
//            color: Colors.white,
//            size: 32.0,
//          ),
//        ),
//        Positioned(
//          top: 55.0,
//          right: 67.0,
//          child: Icon(
//            Icons.ac_unit,
//            color: Colors.white,
//            size: 32.0,
//          ),
//        ),
//        Positioned(
//          top: 58.0,
//          right: 108.0,
//          child: Icon(
//            Icons.ac_unit,
//            color: Colors.white,
//            size: 32.0,
//          ),
//        ),
//        Positioned(
//          top: 100.0,
//          right: 86.0,
//          child: Icon(
//            Icons.ac_unit,
//            color: Colors.white,
//            size: 32.0,
//          ),
//        ),
      ],
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