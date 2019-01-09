import 'dart:async';

import 'package:flutter/material.dart';

class CounterHomeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterBloc _counterBloc = CounterProvider.of(context).counterBloc;
    return Center(
      child: ActionChip(label: Text('0'),
          onPressed: () {
//          _counterBloc.log();
            _counterBloc._counterActionController.add(1);
      }),
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

  final _counterActionController = StreamController<int>();

  StreamSink<int> get counter => _counterActionController.sink;

  CounterBloc(){
    _counterActionController.stream.listen(onData);
  }
      
      

  void log() {
    print("Bloc");
  }

  void onData(int event) {
    print("$event");
  }

  void dispose(){
    _counterActionController.close();
  }
}
