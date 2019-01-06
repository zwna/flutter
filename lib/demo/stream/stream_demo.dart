import 'dart:async';

import 'package:flutter/material.dart';

class StreamDemo extends StatefulWidget {
  @override
  _StreamDemoState createState() => _StreamDemoState();
}

class _StreamDemoState extends State<StreamDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamDemo'),
        elevation: 0.0,
      ),
      body: StreamDemoHome(),
    );
  }
}

class StreamDemoHome extends StatefulWidget {
  @override
  _StreamDemoHomeState createState() => _StreamDemoHomeState();
}

class _StreamDemoHomeState extends State<StreamDemoHome> {

  StreamSubscription _streamSubscription;

  StreamController<String> _streamController;

  StreamSink<String> _streamSink;

  StreamController<String> _broadcastStreamController;

  @override
  void initState() {
    super.initState();
    print("创建Stream");
//    _streamController = StreamController<String>();
//    _streamSink = _streamController.sink;
    _broadcastStreamController = StreamController.broadcast();
    _streamSink = _broadcastStreamController.sink;
//    Stream<String> _stream = Stream.fromFuture(fetchData());
    print('监听Stream');
//    _streamSubscription = _stream.listen(onData,onDone: onDone,onError: onError);
//    _streamSubscription = _streamController.stream.listen(onData,onDone: onDone,onError: onError);
//    _broadcastStreamController.stream.listen(onData,onDone: onDone,onError: onError);
//    _broadcastStreamController.stream.listen(onDataTwo,onDone: onDone,onError: onError);
    print('Stream 结束');
  }

  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }

  void onData(String data){
    print(data);
  }

  void onError(error){
    print("Error:$error");
  }

  void onDone(){
    print('Done');
  }

  Future<String> fetchData() async{
       await Future.delayed(Duration(seconds: 5));
//       throw  'SomeThing Happened';
       return 'Flutter坑真多';
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
          child: Column(
            children: <Widget>[
              StreamBuilder(initialData:"...",stream: _broadcastStreamController.stream,builder:(context,snapshot){
                return Text('${snapshot.data}');
              }),
              SizedBox(width:30),
              FlatButton(onPressed: _pauseStream, child: Text('Pause')),
              SizedBox(width:30),
              FlatButton(onPressed: _resumeStream, child: Text('Resume')),
              SizedBox(width:30),
              FlatButton(onPressed: _cancelStream, child: Text('Cancle')),
              SizedBox(width:30),
              FlatButton(onPressed: _addDataToStream, child: Text('Add')),
            ],
          ),
        ),
    );
  }

  void _pauseStream() {
    print('Pause StreamSubscription');
    _streamSubscription.pause();
  }

  void _resumeStream() {
    print('Resume StreamSubscription');
    _streamSubscription.resume();
  }

  void _cancelStream() {
    print('Cancel StreamSubscription');
    _streamSubscription.cancel();
  }

  void _addDataToStream() async {
    print("Add Data To Stream");
    String data = await fetchData();
//    _streamController.add(data);
  _streamSink.add(data);
  }

  void onDataTwo(String data) {
     print("onDataTwo == $data");
  }
}

