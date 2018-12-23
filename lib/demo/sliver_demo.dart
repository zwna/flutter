import 'package:flutter/material.dart';
import 'package:flutter_app/module/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
             title: Text('FLUTTER'),
             centerTitle: true,
//            pinned: true,
          floating: true,
            expandedHeight: 180.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'LB FLUTTER',
                style: TextStyle(
                  fontSize: 15.0,
                  letterSpacing: 10.0,
                ),
              ),
              background: Image.network(
                  "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=799864609,2034929278&fm=26&gp=0.jpg",
                  fit: BoxFit.fill,
              ),
            ),
          ),
         SliverSafeArea(
             sliver: SliverPadding(
               padding: EdgeInsets.all(8.0),
               sliver: SliverListDemo(),
             ),
         ),
        ],
      ),
    );
  }
}

class SliverGridDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 0.8
        ),
        delegate:
        SliverChildBuilderDelegate((BuildContext context, int index) {
          return Container(
            child: Image.network(
              postList[index].imgUrl,
              fit: BoxFit.cover,
            ),
          );
        },
            childCount: postList.length
        ));
  }
}

class SliverListDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate:
        SliverChildBuilderDelegate((BuildContext context, int index) {
          return Padding(
              padding: EdgeInsets.only(bottom:8.0),
              child:  Material(
                borderRadius: BorderRadius.circular(32.0),
                elevation: 14.0,
                shadowColor: Colors.black12.withOpacity(0.5),
                child: Stack(
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 16/9,
                      child: Image.network(
                        postList[index].imgUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 32.0,
                      left: 32.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            postList[index].title,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            postList[index].author,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
          );

        },
            childCount: postList.length
        ));
  }
}
