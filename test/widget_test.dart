// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_firebase_push/main.dart';

void main() {
  testWidgets('Counter increments to N after N taps', (WidgetTester tester) async {
    // Define the number of times the button will be tapped
    const int taps = 3;

    // Build the app
    await tester.pumpWidget(const MyApp());

    // Verify that the counter starts at 0
    expect(find.text('0'), findsOneWidget);
    expect(find.text('$taps'), findsNothing);

    // Tap the '+' button N times
    for (int i = 0; i < taps; i++) {
      await tester.tap(find.byIcon(Icons.add));
    }

    await tester.pump(); // Re-render the widget after all interactions

    // Verify that the counter displays N
    expect(find.text('0'), findsNothing);
    expect(find.text('$taps'), findsOneWidget);
  });
}

