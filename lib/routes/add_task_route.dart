import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/data/task_group_enum.dart';
import 'package:todo_app/screens/add_task/add_task.dart';

part 'add_task_route.g.dart';

@TypedGoRoute<AddTaskRoute>(path: '/add-task')
class AddTaskRoute extends GoRouteData {
  AddTaskRoute({required this.taskGroup});
  final TaskGroup taskGroup;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return AddTask(taskGroup: taskGroup);
  }
}
