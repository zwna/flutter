import 'package:flutter/material.dart';

class BottomSheetDemo extends StatefulWidget {
  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {

  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();
  
  _openBottomSheet(){
    debugPrint("出发了点击事件");
    _bottomSheetScaffoldKey.currentState.showBottomSheet((BuildContext context){
        return BottomAppBar(
            child: Container(
              height: 90.0,
              width: double.infinity,
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.pause_circle_outline),
                  SizedBox(width: 16.0),
                  Text('01:30 / 03:30'),
                  Expanded(child: Text('Fix Your Coldplay',textAlign: TextAlign.right))
                ],
              ),
            ),
        );
    });
    }

 Future<void> _openModalBottomSheet() async{
    final option = await showModalBottomSheet(context: context, builder: (BuildContext context){
       return Container(
         height: 200.0,
         child: Column(
           children: <Widget>[
             ListTile(
               title: Text('Option A'),
               onTap: (){
                 Navigator.pop(context,"Option A");
               },
             ),
             ListTile(
               title: Text('Option B'),
               onTap: (){
                 Navigator.pop(context,"Option B");
               },
             ),
             ListTile(
               title: Text('Option C'),
               onTap: (){
                 Navigator.pop(context,"Option C");
               },
             ),
           ],
         ),
       );
    });

    debugPrint(option);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: AppBar(
        title: Text(
          'BottomSheetDemo',
        ),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                 FlatButton(onPressed: _openBottomSheet, child: Text('Open Bottom Sheet')),
                 FlatButton(onPressed: _openModalBottomSheet, child: Text('Open Modal Bottom Sheet'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
