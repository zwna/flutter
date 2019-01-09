import 'dart:async';

import 'package:flutter/material.dart';

class CounterHomeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterBloc _counterBloc = CounterProvider.of(context).counterBloc;
    return Center(
      child: StreamBuilder(
        initialData: 0,
        stream: _counterBloc.count,
        builder: (context,data){
          return ActionChip(label: Text('${data.data}'),
              onPressed: () {
//          _counterBloc.log();
                _counterBloc._counterActionController.add(1);
              });
        },
      ),
    );
  }
}


class CounterActionButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    CounterBloc _counterBloc = CounterProvider.of(context).counterBloc;
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
//        _counterBloc.log();
      _counterBloc._counterActionController.add(1);
      },
    );
  }
}

class CounterProvider extends InheritedWidget {
  final Widget child;
  final CounterBloc counterBloc;

  CounterProvider({this.child, this.counterBloc}):super(child: child);

  static CounterProvider of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(CounterProvider)
        as CounterProvider;
  }

  @override
  bool updateShouldNotify(CounterProvider old) {
    return true;
  }
}

class CounterBloc {
  int _count = 0;

  final _counterActionController = StreamController<int>();

  final _counterController = StreamController<int>();

  StreamSink<int> get counter => _counterActionController.sink;
  Stream<int> get count => _counterController.stream;

  CounterBloc(){
    _counterActionController.stream.listen(onData);
  }
      
      

  void log() {
    print("Bloc");
  }

  void onData(int event) {
    print("$event");
    _count = event + _count;
    _counterController.add(_count);
  }

  void dispose(){
    _counterActionController.close();
    _counterController.close();
  }
}
