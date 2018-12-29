import 'package:flutter/material.dart';

class PopupMenuButtonDemo extends StatefulWidget {
  @override
  _PopupMenuButtonDemoState createState() => _PopupMenuButtonDemoState();
}

class _PopupMenuButtonDemoState extends State<PopupMenuButtonDemo> {

  String _currentMenuValue = "sort";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PopupMenuButtonDemo',
        ),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_currentMenuValue),
                PopupMenuButton(
                  onSelected: (value){
                    print(value);
                    setState(() {
                      _currentMenuValue = value;
                    });
                  },
                    itemBuilder:(BuildContext context) => [
                      PopupMenuItem(
                          value: "sort",
                          child:
                          Text('排序')
                      ),
                      PopupMenuItem(
                          value: "clear",
                          child:
                          Text('清理页面')
                      ),
                      PopupMenuItem(
                          value: "setting",
                          child:
                          Text('设置')
                      ),
                      PopupMenuItem(
                          value: "galary",
                          child:
                          Text('盖乐世精选')
                      ),
                    ]
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
