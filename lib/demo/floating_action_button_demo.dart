import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatelessWidget {

  final Widget _floatingActionButton = FloatingActionButton(onPressed:(){

  },
    child: Icon(Icons.add),
    elevation: 0.0,
    backgroundColor: Colors.purpleAccent,
    shape: BeveledRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
  );

  final Widget _floatingActionButtonExtend = FloatingActionButton.extended(
      onPressed:(){},
      icon: Icon(Icons.add),
      backgroundColor: Colors.amber,
      label: Text('Add'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FloatingActionButtonDemo',
        ),
        elevation: 0.0,
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
//      floatingActionButton: _floatingActionButtonExtend,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80.0,
          color: Colors.blueAccent,
        ),
      ),
    );
  }
}

