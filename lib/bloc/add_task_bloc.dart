import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/bloc/add_task_event.dart';
import 'package:todo_app/bloc/add_task_state.dart';
import 'package:todo_app/data/task.dart';
import 'package:todo_app/data/task_group_enum.dart';

class AddTaskBloc extends Bloc<AddTaskEvent, AddTaskState> {
  AddTaskBloc() : super(AddTaskState()) {
    on<AddTaskEvent>(_onAddTaskEvent);
  }

  void _onAddTaskEvent(AddTaskEvent event, Emitter<AddTaskState> emit) {
    final task = Task(
      title: event.title,
      date: event.date,
      taskGroup: event.taskGroup,
    );
    if (event.taskGroup == TaskGroup.today) {
      emit(state.copyWith(todayTasks: [...state.todayTasks, task]));
      return;
    }
    emit(state.copyWith(tomorrowTasks: [...state.tomorrowTasks, task]));
  }
}
