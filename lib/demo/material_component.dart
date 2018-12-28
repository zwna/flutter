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
              ListItemWidget(title: 'FloatingActionButton',page: FloatingActionButtonDemo()),
              ListItemWidget(title: 'Button',page: ButtonDemo())
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
            SizedBox(height: 30.0),
            raisedButtonDemo,
            SizedBox(height: 30.0),
            outlineButtonDemo,
          ],
        ),
      ),
    );
  }
}

class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '_WidgetDemo',
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}



