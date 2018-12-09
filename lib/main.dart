import 'package:flutter/material.dart';
import 'package:flutter_app/demo/hello-demo.dart';


main() =>
  runApp(
//    Center(
//          child: Text(
//            'Hello',
//            textDirection: TextDirection.ltr,
//          ),
//    )

  CustomWidget()
  );


///需要修改数据继承StatefulWidget
///不需要修改数据继承StatelessWidget

class CustomWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70
      ),
    );
  }

}

class Hello extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text(
        'Hello',
        textDirection: TextDirection.rtl,
        style: TextStyle(
          fontSize: 35.0,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
    );
  }

}