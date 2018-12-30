import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {

  double _sliderItemA = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SliderDemo',
        ),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("SliderValue:$_sliderItemA"),
            SizedBox(height:32.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Slider(
                    value: _sliderItemA,
                    onChanged: (value){
                      setState(() {
                        _sliderItemA = value;
                      });
                    },
                    activeColor: Theme.of(context).primaryColor,
                    inactiveColor: Colors.green,
                    min: 0.0,
                    max: 100.0,
                    divisions: 10,
                  label: '${_sliderItemA.toInt()}',
                    )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
