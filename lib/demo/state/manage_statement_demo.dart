import 'package:flutter/material.dart';

class ManageStatementDemo extends StatefulWidget {

 @override
 _ManageStatementDemoState createState() {
    return _ManageStatementDemoState();
  }
}

class _ManageStatementDemoState extends State<ManageStatementDemo>{

  int _count = 0;

  void _increaseCount(){
    setState(() {
      _count += 1;
      debugPrint("_count == $_count");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ManageStatementDemo'),
        elevation: 0.0,
      ),
      body: CounterWrapper(_count,_increaseCount),
      floatingActionButton: FloatingActionButton(child:Icon(Icons.add),onPressed:_increaseCount),
    );
  }
}

class Counter extends StatelessWidget {

  final int count;

  final VoidCallback increaseCallBack;

  Counter(this.count,this.increaseCallBack);

  @override
  Widget build(BuildContext context) {
    return ActionChip(label: Text('$count'),onPressed: increaseCallBack);
  }
}

class CounterWrapper extends StatelessWidget {

  final int count;

  final VoidCallback increaseCallBack;

  CounterWrapper(this.count,this.increaseCallBack);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Counter(count, increaseCallBack),
    );
  }
}


