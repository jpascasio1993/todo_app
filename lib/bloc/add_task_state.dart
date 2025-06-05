import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/data/task.dart';

part 'add_task_state.freezed.dart';

@freezed
abstract class AddTaskState with _$AddTaskState {
  const factory AddTaskState({
    @Default([]) List<Task> todayTasks,
    @Default([]) List<Task> tomorrowTasks,
  }) = _AddTaskState;
}
