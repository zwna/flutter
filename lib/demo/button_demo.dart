import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          onPressed: (){

          },
          child: Text(
            'FlatButton',
          ),
          splashColor: Colors.yellow,
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          onPressed: (){

          },
          icon: Icon(Icons.add),
          label: Text(
            'FlatButton',
          ),
          splashColor: Colors.yellow,
          textColor: Theme.of(context).accentColor,
        )
      ],
    );

    final Widget raisedButtonDemo =  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
            data: Theme.of(context).copyWith(
              buttonColor: Colors.blue,
              buttonTheme: ButtonThemeData(
                textTheme: ButtonTextTheme.normal,
//                 shape: BeveledRectangleBorder(
//                   borderRadius: BorderRadius.circular(10.0),
//                 )
                shape: StadiumBorder(),
              ),
            ),
            child: RaisedButton(
              onPressed: (){

              },
              child: Text(
                'RaisedButton',
              ),
              splashColor: Colors.yellow,
//          textColor: Colors.white,
              elevation: 0.0,
//          color: Theme.of(context).accentColor,
              textTheme: ButtonTextTheme.primary,
            )),
        SizedBox(width:30.0,height:48.0),
        RaisedButton.icon(
          onPressed: (){
            debugPrint("我被点击了！！！！");
          },
          icon: Icon(Icons.access_alarms),
          label: Text(
            'RaisedButton',
          ),
          splashColor: Colors.yellow,
          textColor: Colors.white,
          color: Theme.of(context).accentColor,
          elevation: 15.0,
          shape: StadiumBorder(),
        )
      ],
    );


    final Widget outlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        OutlineButton(
          onPressed: (){

          },
          borderSide: BorderSide(
            color: Colors.black,
          ),
          child: Text(
            'OutlineButton',
          ),
          splashColor: Colors.yellow,
          highlightedBorderColor: Colors.amber,
          textColor: Colors.black,
        ),
        SizedBox(width: 30.0),
        OutlineButton.icon(
          onPressed: (){

          },
          icon: Icon(Icons.add),
          label: Text(
            'OutlineButton',
          ),
          borderSide: BorderSide(
            color: Colors.black,
          ),
          splashColor: Colors.yellow,
          highlightedBorderColor: Colors.amber,
          textColor: Colors.black,
        )
      ],
    );

    final fixedWidthButtonDemo =  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 130,
          child:
          OutlineButton(
            onPressed: (){

            },
            borderSide: BorderSide(
              color: Colors.black,
            ),
            child: Text(
              'OutlineButton',
            ),
            splashColor: Colors.yellow,
            highlightedBorderColor: Colors.amber,
            textColor: Colors.black,
          ),
        ),
      ],
    );

    final Widget expandedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
            child: Container(
              width: 130,
              child:
              OutlineButton(
                onPressed: (){
                },
                borderSide: BorderSide(
                  color: Colors.black,
                ),
                child: Text(
                  'OutlineButton',
                ),
                splashColor: Colors.yellow,
                highlightedBorderColor: Colors.amber,
                textColor: Colors.black,
              ),
            )
        ),
        SizedBox(width:30.0),
        Expanded(
            flex: 2,
            child: Container(
              width: 130,
              child:
              OutlineButton(
                onPressed: (){
                },
                borderSide: BorderSide(
                  color: Colors.black,
                ),
                child: Text(
                  'OutlineButton',
                ),
                splashColor: Colors.yellow,
                highlightedBorderColor: Colors.amber,
                textColor: Colors.black,
              ),
            )
        ),
      ],
    );

    final buttonBarDemo = Row(
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
              buttonTheme: ButtonThemeData(
                  padding: EdgeInsets.symmetric(horizontal: 20.0)
              )
          ),
          child:  ButtonBar(
            children: <Widget>[
              OutlineButton(
                onPressed: (){

                },
                borderSide: BorderSide(
                  color: Colors.black,
                ),
                child: Text(
                  'OutlineButton',
                ),
                splashColor: Colors.yellow,
                highlightedBorderColor: Colors.amber,
                textColor: Colors.black,
              ),
              OutlineButton.icon(
                onPressed: (){

                },
                icon: Icon(Icons.add),
                label: Text(
                  'OutlineButton',
                ),
                borderSide: BorderSide(
                  color: Colors.black,
                ),
                splashColor: Colors.yellow,
                highlightedBorderColor: Colors.amber,
                textColor: Colors.black,
              )
            ],
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ButtonDemo',
        ),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            flatButtonDemo,
            SizedBox(height: 15.0),
            raisedButtonDemo,
            SizedBox(height: 15.0),
            outlineButtonDemo,
            SizedBox(height: 15.0),
            expandedButtonDemo,
            SizedBox(height: 15.0),
            fixedWidthButtonDemo,
            SizedBox(height: 15.0),
            buttonBarDemo
          ],
        ),
      ),
    );
  }
}