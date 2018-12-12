import 'package:flutter/material.dart';
import 'package:flutter_app/module/post.dart';

class ViewDemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return GridViewBuilderDemo();
  }
}

class PageViewDemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return PageView(
      pageSnapping: false,
      reverse: true,
      scrollDirection: Axis.vertical,
      onPageChanged: (currentPage) => debugPrint("currentPage:$currentPage"),
      controller: PageController(
        initialPage: 1,
        keepPage: false,
        viewportFraction: 0.5,
      ),
      children: <Widget>[
        Container(
          alignment: Alignment(0.0, 0.0),
          color: Colors.brown[900],
          child: Text(
            'ONE',
            style: TextStyle(
              fontSize: 32.0,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          alignment: Alignment(0.0, 0.0),
          color: Colors.blue[900],
          child: Text(
            'TWO',
            style: TextStyle(
              fontSize: 32.0,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          alignment: Alignment(0.0, 0.0),
          color: Colors.green[900],
          child: Text(
            'THREE',
            style: TextStyle(
              fontSize: 32.0,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class PageViewBuilderDemo extends StatelessWidget{

  Widget _pageItemBuilder(BuildContext context,int index){
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(postList[index].imgUrl,fit: BoxFit.cover),
        ),
        Positioned(
          bottom: 18.0,
          left: 18.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                postList[index].title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                  postList[index].author
              ),
            ],
          ),
        ),
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: postList.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class GridViewCountDemo extends StatelessWidget{

  List<Widget> _buildTiles(int count){
    return List.generate(count, (int index){
      return Container(
        color: Colors.blue,
        alignment: Alignment.center,
        child: Text(
          'item$index',
          style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      children: _buildTiles(120),
      scrollDirection: Axis.horizontal,
    );
  }
}

class GridViewExtentDemo extends StatelessWidget{

  List<Widget> _buildTiles(int count){
    return List.generate(count, (int index){
      return Container(
        color: Colors.blue,
        alignment: Alignment.center,
        child: Text(
          'item$index',
          style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 200.0,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      children: _buildTiles(120),
      scrollDirection: Axis.horizontal,
    );
  }
}

class GridViewBuilderDemo extends StatelessWidget{

  Widget _gridItemBuilder(BuildContext context,int index){
    return Container(
       child: Image.network(postList[index].imgUrl,fit: BoxFit.cover),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(20.0),
      scrollDirection: Axis.horizontal,
        itemCount: postList.length,
        itemBuilder: _gridItemBuilder,
//        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//            crossAxisCount:2,
//            crossAxisSpacing: 10.0,
//             mainAxisSpacing: 10.0,
//        ),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 500.0,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
        ),
    );
  }
}