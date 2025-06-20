import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/bloc/add_task_bloc.dart';
import 'package:todo_app/data/task.dart';
import 'package:todo_app/data/task_group_enum.dart';
import 'package:todo_app/screens/task/task_group_item.dart';
import 'package:todo_app/screens/task/task_item.dart';

class Tasks extends StatefulWidget {
  const Tasks({super.key});

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Builder(
                    builder: (context) {
                      final _todayTasks = context
                          .select<AddTaskBloc, List<Task>>(
                            (AddTaskBloc bloc) => bloc.state.todayTasks,
                          );

                      return TaskGroupItem(
                        taskGroup: TaskGroup.today,
                        title: 'Today',
                        tasks: _todayTasks
                            .map(
                              (task) => TaskItem(
                                title: task.title,
                                date: task.date,
                                isDone: task.isDone,
                                onChanged: (value) {},
                              ),
                            )
                            .toList(),
                      );
                    },
                  ),
                  Builder(
                    builder: (context) {
                      final _tomorrowTasks = context
                          .select<AddTaskBloc, List<Task>>(
                            (AddTaskBloc bloc) => bloc.state.tomorrowTasks,
                          );
                      return TaskGroupItem(
                        taskGroup: TaskGroup.tomorrow,
                        title: 'Tomorrow',
                        tasks: _tomorrowTasks
                            .map(
                              (task) => TaskItem(
                                title: task.title,
                                date: task.date,
                                isDone: task.isDone,
                                onChanged: (value) {},
                              ),
                            )
                            .toList(),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 5),
          BottomBar(),
        ],
      ),
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Padding(
        padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.home, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
