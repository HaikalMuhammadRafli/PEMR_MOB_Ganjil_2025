// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:navigation_flutter/pages/home_page.dart';

void main() {
  testWidgets('HomePage shows app bar, items and prices', (WidgetTester tester) async {
    // Build the HomePage (it includes its own MaterialApp in this project).
    await tester.pumpWidget(HomePage());
    await tester.pumpAndSettle();

    // App bar title
    expect(find.text('Item List'), findsOneWidget);

    // Items
    expect(find.text('Sugar'), findsOneWidget);
    expect(find.text('Salt'), findsOneWidget);

    // Prices
    expect(find.text('5000'), findsOneWidget);
    expect(find.text('2000'), findsOneWidget);
  });
}
