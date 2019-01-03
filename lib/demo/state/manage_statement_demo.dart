import 'package:flutter/material.dart';

class ManageStatementDemo extends StatelessWidget {

  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ManageStatementDemo'),
        elevation: 0.0,
      ),
      body: Center(
        child: Chip(label: Text('$_count')),
      ),
      floatingActionButton: FloatingActionButton(child:Icon(Icons.add),onPressed: (){
        _count += 1;
        debugPrint("_count == $_count");
      }),
    );
  }
}
