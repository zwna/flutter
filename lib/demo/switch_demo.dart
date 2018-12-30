import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {

  bool _switchItemA = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SwitchDemo',
        ),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SwitchListTile(
                value: _switchItemA,
                onChanged: (value){
                  setState(() {
                    _switchItemA = value;
                  });
                },
                title: Text('SwitchItemA'),
                subtitle: Text("SwitchItemA"),
                secondary: Icon(_switchItemA ? Icons.visibility:Icons.visibility_off),
                selected: _switchItemA,
                ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_switchItemA ? "已打开":"已关闭"),
                SizedBox(width: 32.0),
                Switch(
                    value: _switchItemA,
                    onChanged: (value){
                      setState(() {
                        _switchItemA = value;
                      });
                    },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
