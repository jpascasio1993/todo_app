// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$taskRoute];

RouteBase get $taskRoute =>
    GoRouteData.$route(path: '/task', factory: $TaskRouteExtension._fromState);

extension $TaskRouteExtension on TaskRoute {
  static TaskRoute _fromState(GoRouterState state) => TaskRoute();

  String get location => GoRouteData.$location('/task');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
