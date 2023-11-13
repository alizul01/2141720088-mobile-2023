import 'task.dart';

class Plan {
  final String name;
  final List<Task> tasks;

  const Plan({
    required this.name,
    this.tasks = const [],
  });

  int countCompletedTasks() {
    return tasks.where((task) => task.isCompleted).length;
  }

  String get completenessMessage {
    final completedTasks = countCompletedTasks();
    final totalTasks = tasks.length;
    if (completedTasks == totalTasks) {
      return 'All tasks completed!';
    } else {
      return '$completedTasks of $totalTasks tasks completed';
    }
  }
}
