import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  @override
  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {

  bool _firstCheckBox = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CheckBoxDemo',
        ),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
                value: _firstCheckBox,
                onChanged: (value){
                  setState(() {
                    _firstCheckBox = value;
                  });
                },
              title: Text(
                'CheckboxListTile Title',
              ),
              subtitle: Text(
                'CheckboxListTile Subtitle'
              ),
              secondary: Icon(Icons.bookmark),
              selected: _firstCheckBox,
                ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//                Checkbox(
//                    value: _firstCheckBox,
//                    onChanged: (value){
//                      setState(() {
//                        _firstCheckBox = value;
//                      });
//                    },
//                  activeColor: Colors.purpleAccent,
//                    ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

