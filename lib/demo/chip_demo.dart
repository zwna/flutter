import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {

  List<String> tags = [
    '苹果',
    '香蕉',
    '橘子',
    '西瓜',
    '橙子',
    '哈密瓜',
    '火龙果',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ChipDemo',
        ),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              spacing: 28.0,
              runSpacing: 10.0,
              children: <Widget>[
                Chip(label: Text('最爱')),
                Chip(label: Text('游戏'),backgroundColor: Colors.green),
                Chip(label: Text('家具'),avatar: CircleAvatar(backgroundColor: Colors.red,child: Text('彪'),)),
                Chip(label: Text('生活'),avatar: CircleAvatar(backgroundImage: NetworkImage('https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=799864609,2034929278&fm=26&gp=0.jpg'),)),
                Divider(color: Colors.brown,height: 25.0,indent: 32.0),
                Chip(label: Text('闹钟'),onDeleted: (){

                },deleteIcon: Icon(Icons.delete_forever),deleteIconColor: Colors.red,deleteButtonTooltipMessage: 'Remove This Item',),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: tags.map((tag){
                    return Chip(label: Text(tag),onDeleted: (){setState(() {
                      tags.remove(tag);
                    });},);
                  }).toList(),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.restore),onPressed: (){
        setState(() {
          tags = [
            '苹果',
            '香蕉',
            '橘子',
            '西瓜',
            '橙子',
            '哈密瓜',
            '火龙果',
          ];
        });
      },),
    );
  }
}
