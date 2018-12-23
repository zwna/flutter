import 'package:flutter/material.dart';
import 'package:flutter_app/demo/drawer_demo.dart';
import 'package:flutter_app/demo/bottom_navigation_demo.dart';
import 'package:flutter_app/demo/listview-demo.dart';
import 'package:flutter_app/demo/basic_demo.dart';
import 'package:flutter_app/demo/layout_demo.dart';
import 'package:flutter_app/demo/view_demo.dart';
import 'package:flutter_app/demo/sliver_demo.dart';

class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text(
            'WTM',
            textDirection: TextDirection.rtl,
          ),
          bottom: TabBar(
            unselectedLabelColor: Colors.white,
            indicatorColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight:1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.local_activity)),
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.view_quilt)),
              Tab(icon: Icon(Icons.explore)),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: "Search",
              onPressed: () => debugPrint("Search icons is pressed"),
            )
          ],
          elevation: 0.0,
        ),
        body: TabBarView(
           children: <Widget>[
             ListViewWidget(),
             BasicDemo(),
             LayoutDemo(),
             ViewDemo(),
             SliverDemo(),
           ]),
        drawer: DrawerDemo(),
        bottomNavigationBar:BottomNavigationDemo(),
      ),
    );
  }

}