import 'package:flutter/material.dart';
import '../providers/plan_provider.dart';

class DetailsScreen extends StatelessWidget {
  final Plan plan;

  DetailsScreen({required this.plan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(plan.name),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          elevation: 4,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blueAccent.shade100,
                  Colors.blueAccent.shade700,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(16.0),
            ),
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.shield, color: Colors.white, size: 32),
                    Text(
                      plan.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Text(
                  'Coverage Amount: ${plan.coverage}',
                  style: TextStyle(color: Colors.white70, fontSize: 18),
                ),
                SizedBox(height: 8),
                Text(
                  'Monthly Premium: ${plan.premium}',
                  style: TextStyle(color: Colors.white70, fontSize: 18),
                ),
                SizedBox(height: 8),
                Text(
                  'Deductible: ${plan.deductible}',
                  style: TextStyle(color: Colors.white70, fontSize: 18),
                ),
                SizedBox(height: 16),
                Text(
                  'Description:',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  plan.description,
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
                SizedBox(height: 24),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Text('Back to Plans'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
