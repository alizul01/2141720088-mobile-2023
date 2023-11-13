import 'package:flutter/material.dart';

import 'models/plan.dart';
import 'provider/plan_provider.dart';
import 'views/plan_creator.dart';

void main() => runApp(const PlannerApp());

class PlannerApp extends StatelessWidget {
  const PlannerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanProvider(
      notifier: ValueNotifier<List<Plan>>(const []),
      child: MaterialApp(
        title: 'Simple Planner',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const PlanCreatorScreen(plan: Plan(name: 'Alizul Plan')),
      ),
    );
  }
}
