import 'package:flutter/material.dart';
import 'package:flutter_app/demo/hello-demo.dart';
import 'package:flutter_app/demo/sliver_demo.dart';
import 'package:flutter_app/demo/navigator_demo.dart';


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
//      home: Home(),
//      home: NavigatorDemo(),
      initialRoute: "/",
      routes: {
        "/":(context) => Home(),
        "/about":(context) => Page(title: 'About')
      },
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        highlightColor: Colors.green,
        splashColor: Colors.blue
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