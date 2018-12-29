import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {

  int _radioGroupA = 0;

  void _handleRadioValueChanged(int value){
    debugPrint("_handleRadioValueChanged == $value");
     setState(() {
       _radioGroupA = value;
     });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'RadioDemo',
        ),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RadioListTile(value: 0, groupValue: _radioGroupA, onChanged: _handleRadioValueChanged,title: Text("第一个RadioListTile"),subtitle: Text("第一个RadioListTile"),selected: _radioGroupA == 0,secondary: Icon(Icons.filter)),
            RadioListTile(value: 1, groupValue: _radioGroupA, onChanged: _handleRadioValueChanged,title: Text("第二个RadioListTile"),subtitle: Text("第二个RadioListTile"),selected: _radioGroupA == 1,secondary: Icon(Icons.filter)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//                Radio(value: 0, groupValue: _radioGroupA, onChanged: _handleRadioValueChanged,activeColor: Colors.cyanAccent),
//                Radio(value: 1, groupValue: _radioGroupA, onChanged: _handleRadioValueChanged,activeColor: Colors.cyanAccent)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
