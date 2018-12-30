import 'package:flutter/material.dart';
import 'dart:async';

enum Option{
  A,B,C
}

enum Action{
  Sure,Cancel
}


class SimpleDialogDemo extends StatefulWidget {
  @override
  _SimpleDialogDemoState createState() => _SimpleDialogDemoState();
}

class _SimpleDialogDemoState extends State<SimpleDialogDemo> {

  String _choice = "Nothing";

  _openSimpleDialog() async {
     final option = await showDialog(context: context,builder: (BuildContext context){
        return SimpleDialog(
          title: Text("SimpleDialog"),
          children: <Widget>[
            SimpleDialogOption(
              child: Text("你确定关闭吗？"),
              onPressed: (){
                Navigator.pop(context,Option.A);
              },
            ),
            SimpleDialogOption(
              child: Text("你确定关闭吗？"),
              onPressed: (){
                Navigator.pop(context,Option.B);
              },
            ),
            SimpleDialogOption(
              child: Text("你确定关闭吗？"),
              onPressed: (){
                Navigator.pop(context,Option.C);
              },
            ),
          ],
        );
      });

     switch(option){
       case Option.A:
         setState(() {
           _choice = 'Option.A';
         });
         break;
       case Option.B:
         setState(() {
           _choice = 'Option.B';
         });
         break;
       case Option.C:
         setState(() {
           _choice = 'Option.C';
         });
         break;
     }
  }

  _openAlertDialog() async {
    final action = await showDialog(context: context,barrierDismissible:false,builder: (BuildContext context){
       return AlertDialog(
         title: Text("AlertDialog"),
         content: Text("Are You Sure About This?"),
         actions: <Widget>[
           FlatButton(onPressed: (){
               Navigator.pop(context,Action.Cancel);
           }, child: Text('Cancel')),
           FlatButton(onPressed: (){
             Navigator.pop(context,Action.Sure);
           }, child: Text('Sure')),
         ],
       );
    });

    switch(action){
      case Action.Sure:
        setState(() {
          _choice = 'Action.Sure';
        });
        break;
      case Action.Cancel:
        setState(() {
          _choice = 'Action.Cancel ';
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SimpleDialogDemo',
        ),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
               _choice,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(onPressed: _openAlertDialog,child: Text('打开提示对话框')),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _openSimpleDialog,child: Icon(Icons.format_list_numbered)),
    );
  }
}
