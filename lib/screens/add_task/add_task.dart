import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/bloc/add_task_bloc.dart';
import 'package:todo_app/bloc/add_task_event.dart';
import 'package:todo_app/data/task_group_enum.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key, required this.taskGroup});
  final TaskGroup taskGroup;

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  String title = '';
  DateTime date = DateTime.now().copyWith(hour: 1, minute: 1);

  void addTask(BuildContext context) {
    context.read<AddTaskBloc>().add(
      AddTaskEvent(title: title, date: date, taskGroup: widget.taskGroup),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Add New Task',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Task Name',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 2,
                            blurStyle: BlurStyle.outer,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 12, left: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Example: Buy groceries',
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                          onChanged: (value) {
                            title = value;
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text('Time', style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 100,
                      child: Row(
                        children: [
                          Expanded(
                            child: CupertinoPicker(
                              itemExtent: 32.0,
                              looping: true,
                              onSelectedItemChanged: (value) {
                                date = date.copyWith(hour: value + 1);
                              },
                              children: List.generate(
                                12,
                                (index) =>
                                    Center(child: Text((index + 1).toString())),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: CupertinoPicker(
                              itemExtent: 32.0,
                              looping: true,
                              onSelectedItemChanged: (value) {
                                date = date.copyWith(minute: value + 1);
                              },
                              children: List.generate(
                                59,
                                (index) =>
                                    Center(child: Text((index + 1).toString())),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: CupertinoPicker(
                              itemExtent: 32.0,
                              onSelectedItemChanged: (value) {
                                // ignore: unrelated_type_equality_checks
                                date = date.copyWith(
                                  hour: date.hour + (value == 'AM' ? 0 : 12),
                                );
                              },
                              children: [
                                'AM',
                                'PM',
                              ].map((e) => Center(child: Text(e))).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton.small(
                    heroTag: ValueKey('add-task-button'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    backgroundColor: Colors.orange,
                    onPressed: () async {
                      addTask(context);
                      await Future.delayed(const Duration(milliseconds: 100));
                      context.pop();
                    },
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
