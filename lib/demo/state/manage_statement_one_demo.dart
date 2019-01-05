import 'package:flutter/material.dart';

class ManageStatementOneDemo extends StatefulWidget {
  @override
  _ManageStatementOneDemoState createState() => _ManageStatementOneDemoState();
}

class _ManageStatementOneDemoState extends State<ManageStatementOneDemo> {
    int _count = 0;

  void _increaseCount() {
    setState(() {
      _count += 1;
      debugPrint("_count == $_count");
    });
  }


  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      count: _count,
      increaseCallBack: _increaseCount,
      child: Scaffold(
        appBar: AppBar(
          title: Text('ManageStatementOneDemo'),
          elevation: 0.0,
        ),
        body: CounterWrapper(),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add), onPressed: _increaseCount),
      ),
    );
  }
}

class CounterWrapper extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Counter(),
    );
  }
}

class Counter extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final int count = CounterProvider.of(context).count;
    final VoidCallback increaseCallBack = CounterProvider.of(context).increaseCallBack;
    return ActionChip(label: Text('$count'),onPressed: increaseCallBack);
  }
}

class CounterProvider extends InheritedWidget {

  final int count;
  final VoidCallback increaseCallBack;
  final Widget child;

  CounterProvider({
    this.count,
    this.increaseCallBack,
    this.child
  }):super(child:child);

  static CounterProvider of(BuildContext context) => context.inheritFromWidgetOfExactType(CounterProvider);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}
