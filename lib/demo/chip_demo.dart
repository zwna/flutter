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

  String _action = 'Nothing';

  List<String> _selected = ['苹果'];

  String _choice = "火龙果";

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
              spacing: 10.0,
              runSpacing: 10.0,
              children: <Widget>[
                Chip(label: Text('最爱')),
                Chip(label: Text('游戏'),backgroundColor: Colors.green),
                Chip(label: Text('家具'),avatar: CircleAvatar(backgroundColor: Colors.red,child: Text('彪'),)),
                Chip(label: Text('生活'),avatar: CircleAvatar(backgroundImage: NetworkImage('https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=799864609,2034929278&fm=26&gp=0.jpg'),)),
                Divider(color: Colors.brown,height: 15.0,indent: 32.0),
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
                ),
                Divider(color: Colors.brown,height: 15.0,indent: 32.0),
                Container(
                  child: Text('ActionChip:$_action'),
                ),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: tags.map((tag){
                    return ActionChip(label: Text(tag),onPressed: (){
                      setState(() {
                      _action = tag;
                    });
                    },
                    );
                  }).toList()),
                Divider(color: Colors.brown,height: 15.0,indent: 32.0),
                Container(
                  child: Text('FilterChip:${_selected.toString()}'),
                ),
                Wrap(
                    spacing: 8.0,
                    runSpacing: 8.0,
                    children: tags.map((tag){
                      return FilterChip(label: Text(tag),selected:_selected.contains(tag),onSelected:(value){
                        setState(() {
                          if(_selected.contains(tag)){
                            _selected.remove(tag);
                          }else{
                            _selected.add(tag);
                          }
                        });
                      });
                    }).toList()),
                Divider(color: Colors.brown,height: 15.0,indent: 32.0),
                Container(
                  child: Text('ChoiceChip:$_choice'),
                ),
                Wrap(
                    spacing: 8.0,
                    runSpacing: 8.0,
                    children: tags.map((tag){
                      return ChoiceChip(label: Text(tag),selected:_choice == tag,selectedColor: Colors.purpleAccent,onSelected:(value){
                        setState(() {
                          _choice = tag;
                        });
                      });
                    }).toList()),
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
        }
        );
        _selected = [];
        _choice = "火龙果";
      },),
    );
  }
}
