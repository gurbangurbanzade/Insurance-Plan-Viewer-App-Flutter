import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task/screens/details_screen.dart';
import 'package:task/screens/home_screen.dart';

void main() {
  testWidgets('HomeScreen renders and navigates correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: HomeScreen()));

    expect(find.text('Insurance Plans'), findsOneWidget);

    expect(find.text('Basic Plan'), findsOneWidget);
    expect(find.text('Standard Plan'), findsOneWidget);
    expect(find.text('Premium Plan'), findsOneWidget);

    await tester.tap(find.text('View Details').first);
    await tester.pumpAndSettle();

    expect(find.byType(DetailsScreen), findsOneWidget);
  });
}
