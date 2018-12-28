import 'package:flutter/material.dart';

class MaterialComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text(
              '原生组件',
            ),
            elevation: 0.0,
          ),
          body: ListView(
            children: <Widget>[
              ListItemWidget(title: 'FloatingActionButton',page: FloatingActionButtonDemo())
            ],
          ),
        );
  }
}

class ListItemWidget extends StatelessWidget {

  final String title;

  final Widget page;

  ListItemWidget({this.title,this.page});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
      ),
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(
              builder:
              (context) => page,
          )
        );
      },
    );
  }
}

class FloatingActionButtonDemo extends StatelessWidget {

  final Widget _floatingActionButton = FloatingActionButton(onPressed:(){

  },
  child: Icon(Icons.add),
   elevation: 0.0,
   backgroundColor: Colors.purpleAccent,
//   shape: BeveledRectangleBorder(
//     borderRadius: BorderRadius.circular(30.0),
//   ),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
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


