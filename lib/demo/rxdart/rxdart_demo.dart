import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';

class RxDartDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RxDartDemo'),
        elevation: 0.0,
      ),
      body: RxDartDemoHome(),
    );
  }
}

class RxDartDemoHome extends StatefulWidget {
  @override
  _RxDartDemoHomeState createState() => _RxDartDemoHomeState();
}

class _RxDartDemoHomeState extends State<RxDartDemoHome> {

  PublishSubject<String> _textFieldSubject;

  @override
  void initState() {
    super.initState();
    _textFieldSubject = PublishSubject<String>();
    _textFieldSubject.map((item) => "item:$item").where((tag) => tag.length > 20).debounce(Duration(seconds: 5)).listen(print);
//    Observable<String> _observable =
//    Observable(Stream.fromIterable(["FaceBook","Google","Oracle"]));
//    Observable.fromFuture(Future.value('Flutter'));
//    Observable.fromIterable(["FaceBook","Google","Oracle"]);
//    Observable.just('Pyal');
//    Observable.periodic(Duration(seconds: 3),(x) => x.toString());
//    _observable.listen(print);

//  PublishSubject<String> _publishSubject = PublishSubject<String>();
//  BehaviorSubject<String> _publishSubject = BehaviorSubject<String>();
  ReplaySubject<String> _publishSubject = ReplaySubject<String>();

//    _publishSubject.add('Flutter');
//    _publishSubject.add('Python');
   _publishSubject.listen((data) => print("listen1:$data"));
   _publishSubject.add('Android');
   _publishSubject.listen((data) => print("listen2:${data.toUpperCase()}"));
    _publishSubject.add('Kotlin');
   _publishSubject.listen((data) => print("listen3:${data.toLowerCase()}"));

   _publishSubject.close();

  }

  @override
  void dispose() {
    _textFieldSubject.close();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: Colors.black
      ),
      child: TextField(
        onChanged: (value){
          _textFieldSubject.add("input:$value");
        },
        onSubmitted: (value){
          _textFieldSubject.add("submit:$value");
        },
        decoration: InputDecoration(
          labelText: 'Title',
          filled: true,
        ),
      ),
    );
  }
}

