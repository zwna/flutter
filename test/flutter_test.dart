import 'package:flutter_app/demo/test/test_demo.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

void main(){
  test('should return hello + someone', (){
     var string = UnitTestDemo.greet('刘彪');
     expect(string, 'hello 刘彪');
  });
  
  testWidgets('widget test demo', (WidgetTester tester) async {
    await tester.pumpWidget(
       MaterialApp(
         home: TestDemo(),
       )
    );
    final labelText = find.text('hello');
//    expect(labelText, findsNothing);
//    expect(labelText, findsOneWidget);
    expect(labelText, findsNWidgets(1));

    final actionChipLabelText = find.text('0');
    expect(actionChipLabelText, findsOneWidget);

    final actionChip = find.byType(ActionChip);
    await tester.tap(actionChip);
    await tester.pump();

    final actionChipTextAfterPressed = find.text('1');
    expect(actionChipTextAfterPressed, findsOneWidget);
    expect(actionChipLabelText, findsNothing);
  });
}