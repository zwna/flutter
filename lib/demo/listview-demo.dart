import 'package:flutter/material.dart';
import 'package:flutter_app/module/post.dart';

class ListViewWidget extends StatelessWidget{

  Widget _listItemBuilder(BuildContext context,int index){
    return Container(
      color: Colors.white,//背景颜色
      margin: EdgeInsets.all(18.0),//外边距
      child: Column(
        children: <Widget>[
          Image.network(postList[index].imgUrl),
          SizedBox(height: 16.0),
          Text(
            postList[index].title,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            postList[index].author,
            style: Theme.of(context).textTheme.subhead,
          ),
          SizedBox(height: 16.0,),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: postList.length,
      itemBuilder: _listItemBuilder,
    );
  }
}