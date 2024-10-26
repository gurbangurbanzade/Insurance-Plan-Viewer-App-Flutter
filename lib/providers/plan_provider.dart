// providers/plan_provider.dart
import 'package:flutter/material.dart';

class Plan {
  final String name;
  final String coverage;
  final String premium;
  final String deductible;
  final String description;

  Plan({
    required this.name,
    required this.coverage,
    required this.premium,
    required this.deductible,
    required this.description,
  });
}

class PlanProvider with ChangeNotifier {
  List<Plan> _plans = [
    Plan(
      name: 'Basic Plan',
      coverage: '\$50,000',
      premium: '\$50/month',
      deductible: '\$500',
      description: 'A basic plan covering essential risks.',
    ),
    Plan(
      name: 'Standard Plan',
      coverage: '\$100,000',
      premium: '\$100/month',
      deductible: '\$1000',
      description: 'A standard plan with wider coverage.',
    ),
    Plan(
      name: 'Premium Plan',
      coverage: '\$200,000',
      premium: '\$200/month',
      deductible: '\$2000',
      description: 'A premium plan with maximum coverage.',
    ),
  ];

  List<Plan> get plans => _plans;
}
