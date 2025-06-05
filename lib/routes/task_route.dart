import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/screens/task/tasks.dart';

part 'task_route.g.dart';

@TypedGoRoute<TaskRoute>(path: '/task')
class TaskRoute extends GoRouteData {
  TaskRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Tasks();
  }
}
