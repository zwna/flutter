import 'package:flutter/material.dart';
import 'package:flutter_app/demo/button_demo.dart';
import 'package:flutter_app/demo/floating_action_button_demo.dart';
import 'package:flutter_app/demo/popup_menu_button_demo.dart';
import 'package:flutter_app/demo/form_demo.dart';
import 'package:flutter_app/demo/checkbox_demo.dart';
import 'package:flutter_app/demo/radio_demo.dart';

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
              ListItemWidget(title: 'Button',page: ButtonDemo()),
              ListItemWidget(title: 'PopupMenuButtonDemo',page: PopupMenuButtonDemo()),
              ListItemWidget(title: 'FormDemo',page: FormDemo()),
              ListItemWidget(title: 'CheckBoxDemo',page: CheckBoxDemo()),
              ListItemWidget(title: 'RadioDemo',page: RadioDemo()),
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



