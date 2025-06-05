import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/data/task_group_enum.dart';

part 'add_task_event.freezed.dart';

@freezed
abstract class AddTaskEvent with _$AddTaskEvent {
  const factory AddTaskEvent({
    required String title,
    required DateTime date,
    required TaskGroup taskGroup,
  }) = _AddTaskEvent;
}
