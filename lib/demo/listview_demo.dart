import 'package:flutter/material.dart';
import 'package:flutter_app/module/post.dart';
import 'package:flutter_app/demo/post_show.dart';

class ListViewWidget extends StatelessWidget{

  Widget _listItemBuilder(BuildContext context,int index){
    return Container(
      color: Colors.white,//背景颜色
      margin: EdgeInsets.all(18.0),//外边距
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              AspectRatio(
                child:Image.network(postList[index].imgUrl,fit: BoxFit.cover),
                aspectRatio: 16/9,
              ),
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
          Positioned.fill(
              child:Material(
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Colors.white.withOpacity(0.3),
                  highlightColor: Colors.white.withOpacity(0.1),
                  onTap: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => PostShow(post: postList[index])));
                  },
                ),
          ),
          ),
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