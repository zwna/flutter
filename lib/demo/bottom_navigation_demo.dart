import 'package:flutter/material.dart';
class BottomNavigationDemo extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBarDemoState();
  }
}

class _BottomNavigationBarDemoState extends State<BottomNavigationDemo>{

  int _currentIndex = 0;

  void _onTabHandler(int index){
    setState((){
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.blue,
      currentIndex: _currentIndex,
      onTap: _onTabHandler,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          title: Text(
            'explore',
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          title: Text(
            'history',
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          title: Text(
            'list',
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text(
            'my',
          ),
        ),
      ],
    );
  }
}