import 'package:flutter/material.dart';
import 'package:flutter_app/module/post.dart';

class DataTableDemo extends StatefulWidget {
  @override
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {

  int _sortColumnIndex = 0;

  bool _sortAscending = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'DataTableDemo',
        ),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
             DataTable(
               sortColumnIndex: _sortColumnIndex,
               sortAscending: _sortAscending,//true表示升序 false表示降序
               columns:[
               DataColumn(label: Text('标题'),onSort: (int index,bool ascending){
                 setState(() {
                   _sortColumnIndex = index;
                   _sortAscending = ascending;

                   postList.sort((a,b){
                     debugPrint("ascending == $ascending");
                     if(!ascending) {
//                       final c = a;
//                       a = b;
//                       b = c;
                       return a.title.length.compareTo(b.title.length);
                     }else{
                       return b.title.length.compareTo(a.title.length);
                     }
                   });
                 });
               }),
               DataColumn(label: Text('作者')),
               DataColumn(label: Text('图片')),
               ],
               rows:postList.map<DataRow>((post){
                 return DataRow(cells:[
                   DataCell(Text(post.title)),
                   DataCell(Text(post.author)),
                   DataCell(Image.network(post.imgUrl)),
                 ]
                 );
             }).toList())
          ],
        ),
      ),
    );
  }
}
