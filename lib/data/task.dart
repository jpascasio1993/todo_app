import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/data/task_group_enum.dart';

part 'task.freezed.dart';

@freezed
abstract class Task with _$Task {
  const factory Task({
    required String title,
    required DateTime date,
    @Default(false) bool isDone,
    required TaskGroup taskGroup,
  }) = _Task;
}
