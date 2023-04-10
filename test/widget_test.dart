// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';

// import 'package:study_flutter_07_codingchef03/main.dart';

// void main() {
//   testWidgets('Counter increments smoke test', (WidgetTester tester) async {
//     // Build our app and trigger a frame.
//     await tester.pumpWidget(const MyApp());

//     // Verify that our counter starts at 0.
//     expect(find.text('0'), findsOneWidget);
//     expect(find.text('1'), findsNothing);

//     // Tap the '+' icon and trigger a frame.
//     await tester.tap(find.byIcon(Icons.add));
//     await tester.pump();

//     // Verify that our counter has incremented.
//     expect(find.text('0'), findsNothing);
//     expect(find.text('1'), findsOneWidget);
//   });
// }

import 'dart:developer';

void main() {
  showData();
}

void showData() async {
  startTask();
  String account = await accessData();
  fetchData(account);
  log('end');
}

void startTask() {
  String info1 = '요청수행 시작';
  log(info1);
}

Future<String> accessData() async {
  String account = '';

  Duration time = const Duration(seconds: 3);

  if (time.inSeconds > 2) {
    await Future.delayed(time, () {
      account = '8,500만원';
      log(account);
    });
  } else {
    String info2 = '데이터에 접속 중';
    log(info2);
  }

  return account;
}

void fetchData(String account) {
  String info3 = '잔액은 $account입니다.';
  log(info3);
}
