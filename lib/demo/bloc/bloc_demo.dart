import 'package:flutter/material.dart';
import 'package:flutter_app/demo/bloc/counter_bloc_demo.dart';

class BlocDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      counterBloc: CounterBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('BlocDemo'),
          elevation: 0.0,
        ),
        body: CounterHomeDemo(),
        floatingActionButton: CounterActionButton(),
      ),
    );
  }
}
