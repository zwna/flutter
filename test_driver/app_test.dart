import 'package:flutter_driver/flutter_driver.dart';
import 'package:test_api/test_api.dart';

void main(){
  group('App',(){
    FlutterDriver flutterDriver;

  var actionChip = find.byValueKey('ActionChip');
  var actionChipLabelText = find.byValueKey('ActionChipLabelText');

  setUpAll(() async {
    flutterDriver = await FlutterDriver.connect();
  });

  tearDownAll(() async {
     if(flutterDriver != null){
       flutterDriver.close();
     }
  });
  
  test('start at 0', ()async {
    expect(await flutterDriver.getText(actionChipLabelText), '0');
  });
  
  test('count increase one', () async{
     await flutterDriver.tap(actionChip);
     expect(await flutterDriver.getText(actionChipLabelText), '1');
  });
  });
}