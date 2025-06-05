// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_task_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$addTaskRoute];

RouteBase get $addTaskRoute => GoRouteData.$route(
  path: '/add-task',

  factory: $AddTaskRouteExtension._fromState,
);

extension $AddTaskRouteExtension on AddTaskRoute {
  static AddTaskRoute _fromState(GoRouterState state) => AddTaskRoute(
    taskGroup: _$TaskGroupEnumMap._$fromName(
      state.uri.queryParameters['task-group']!,
    )!,
  );

  String get location => GoRouteData.$location(
    '/add-task',
    queryParams: {'task-group': _$TaskGroupEnumMap[taskGroup]},
  );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

const _$TaskGroupEnumMap = {
  TaskGroup.today: 'today',
  TaskGroup.tomorrow: 'tomorrow',
};

extension<T extends Enum> on Map<T, String> {
  T? _$fromName(String? value) =>
      entries.where((element) => element.value == value).firstOrNull?.key;
}
