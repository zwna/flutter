import 'package:flutter/material.dart';
import 'package:flutter_app/module/post.dart';

class PaginatedDataTableDemo extends StatefulWidget {
  @override
  _PaginatedDataTableDemoState createState() => _PaginatedDataTableDemoState();
}

class _PaginatedDataTableDemoState extends State<PaginatedDataTableDemo> {

  int _sortColumnIndex = 0;

  bool _sortAscending = true;

  final PostDataSource _postsDataSource = PostDataSource();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PaginatedDataTableDemo',
        ),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            PaginatedDataTable(
                header: Text('PostList'),
                source: _postsDataSource,
                sortColumnIndex: _sortColumnIndex,
                sortAscending: _sortAscending,//true表示升序 false表示降序
                columns:[
                  DataColumn(label: Text('标题'),onSort: (int columnIndex,bool ascending){
                    _postsDataSource._sort((post) => post.title.length,ascending);
                    setState(() {
                      _sortColumnIndex = columnIndex;
                      _sortAscending = ascending;
                      debugPrint("ascending == $ascending");
                      postList.sort((a,b){
                        if(!ascending) {
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
        ),
      ]
    ),

    ),
    );
  }
}

class PostDataSource extends DataTableSource{

  final List<Post> _postList = postList;

  int _selectedCount = 0;


  @override
  DataRow getRow(int index) {

    final Post post = _postList[index];

    return DataRow.byIndex(index:index,cells: [
      DataCell(Text(post.title)),
      DataCell(Text(post.author)),
      DataCell(Image.network(post.imgUrl)),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;//如果不确定行数可以返回true

  @override
  int get rowCount => _postList.length;

  @override
  int get selectedRowCount => _selectedCount;

  void _sort(getField(post),bool ascending){
    _postList.sort((a,b){
      final aValue = getField(a);
      final bValue = getField(b);
      if(!ascending){
        return Comparable.compare(aValue, bValue);
      }else{
        return Comparable.compare(bValue, aValue);
      }
    });
    notifyListeners();
  }

}


