import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:task/main.dart';
import 'package:task/providers/plan_provider.dart';
import 'package:task/screens/home_screen.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => PlanProvider()),
        ],
        child: MaterialApp(
          home: HomeScreen(),
        ),
      ),
    );

    expect(find.text('Insurance Plans'), findsOneWidget);

    expect(find.text('Basic Plan'), findsOneWidget);
    expect(find.text('Standard Plan'), findsOneWidget);
    expect(find.text('Premium Plan'), findsOneWidget);
  });
}
