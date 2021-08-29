// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:seven_lakes/main.dart';
import 'package:seven_lakes/utils/computed_attribute.dart';
import 'package:seven_lakes/utils/data_list.dart';
import 'package:seven_lakes/utils/input_list1.dart';
import 'package:seven_lakes/utils/input_list2.dart';
import 'package:seven_lakes/utils/method_result.dart';

void main() {
  group("Test widget and function both ", () {
    test("Test the method which returns a result List", () {
      //Arrange
      List<InputList1> inputList1 = new List<InputList1>();
      List<InputList2> inputList2 = new List<InputList2>();
      List<Result> computedResult = new List<Result>();
      InputListOne inputOneJson = new InputListOne.fromJson(jsonList1);
      InputListTwo inputTwoJson = new InputListTwo.fromJson(jsonList2);
      inputList1 = inputOneJson.inputList1;
      inputList2 = inputTwoJson.inputList2;
      //act
      computedResult = getComputedResult(inputList1, inputList2);

      //assert
      expect(computedResult.length, 2);
    });
    /*
    testWidgets('Counter increments smoke test', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(MyApp());
      // Verify that our counter starts at 0.
      // expect(find.text('0'), findsOneWidget);
      // expect(find.text('1'), findsNothing);

      // Tap the '+' icon and trigger a frame.
      // await tester.tap(find.byIcon(Icons.add));
      // await tester.pump();

      // Verify that our counter has incremented.
      // expect(find.text('0'), findsNothing);
      // expect(find.text('1'), findsOneWidget);
    });

     */
  });
}
