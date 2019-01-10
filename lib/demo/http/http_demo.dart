import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class HttpDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HttpDemo'),
        elevation: 0.0,
      ),
      body: HttpDemoHome(),
    );
  }
}

class HttpDemoHome extends StatefulWidget {
  @override
  _HttpDemoHomeState createState() => _HttpDemoHomeState();
}

class _HttpDemoHomeState extends State<HttpDemoHome> {

  @override
  void initState() {
    super.initState();
//    fetchDatas().then((value) => print(value));

    final post = {"title":"flutter","desc":"移动框架"};

    debugPrint(post['title']);
    debugPrint(post['desc']);

    final postJson = json.encode(post);
    debugPrint(postJson);

    final postJsonConverted = json.decode(postJson);
    debugPrint("postJsonConverted == ${postJsonConverted["desc"]}");
    debugPrint("postJsonConverted == ${postJsonConverted is Map}");

    final postModel = Post.fromMap(postJsonConverted);
    debugPrint("postModel title:${postModel.title}");
    debugPrint("postModel description:${postModel.description}");
    
    debugPrint("${json.encode(postModel)}");
  }

  Future<List<Post>> fetchDatas() async {
    final response = await http.get("https://resources.ninghao.net/demo/posts.json");
    debugPrint("statusCode:${response.statusCode}");
    debugPrint("statusCode:${response.body}");

    if(response.statusCode == 200){
      final responseBody = json.decode(response.body);
      List<Post> postList = responseBody['posts'].map<Post>((item) => Post.fromMap(item)).toList();
      return postList;
    }else{
      throw Exception('获取数据失败');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchDatas(),
      builder: (BuildContext context,AsyncSnapshot snapshot){
        debugPrint("AsyncSnapshot:${snapshot.data}");
        debugPrint("ConnectionState:${snapshot.connectionState}");
        if(snapshot.connectionState == ConnectionState.waiting){
          return Center(
            child: Text("waiting..."),
          );
        }
        return ListView(
            children:snapshot.data.map<Widget>((item){
              return ListTile(
                 title: Text(item.title),
                 subtitle: Text(item.author),
                 leading: CircleAvatar(
                  backgroundImage: NetworkImage(item.imageUrl),
                ),
              );
            }).toList(),
        );
      } ,
    );
  }
}

class Post{
  final int id;
  final String title;
  final String description;
  final String author;
  final String imageUrl;

  Post(this.id,this.title,this.description,this.author,this.imageUrl);

  Post.fromMap(Map json):id = json['id'],title = json['title'],description = json['description'],author = json['author'],imageUrl = json['imageUrl'];

  Map toJson() => {
    "title":title,
    "desc":description
  };

  @override
  String toString() {
    return 'Post{id: $id, title: $title, description: $description, author: $author, imageUrl: $imageUrl}';
  }


}

