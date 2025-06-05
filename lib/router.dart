import 'package:go_router/go_router.dart';
import 'package:todo_app/routes/task_route.dart' as task_route;
import 'package:todo_app/routes/add_task_route.dart' as add_task_route;

final appRouter = GoRouter(
  initialLocation: '/task',
  routes: [...task_route.$appRoutes, ...add_task_route.$appRoutes],
  redirect: (context, state) {
    return null;
  },
);
