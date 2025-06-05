import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/data/task_group_enum.dart';
import 'package:todo_app/routes/add_task_route.dart';
import 'package:todo_app/screens/task/task_item.dart';

class TaskGroupItem extends StatefulWidget {
  const TaskGroupItem({
    super.key,
    required this.title,
    required this.tasks,
    required this.taskGroup,
  });
  final String title;
  final List<TaskItem> tasks;
  final TaskGroup taskGroup;

  @override
  State<TaskGroupItem> createState() => _TaskGroupItemState();
}

class _TaskGroupItemState extends State<TaskGroupItem> {
  void updateItem(int index, bool isDone) {}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              FloatingActionButton.small(
                heroTag: ValueKey(widget.taskGroup.name),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                backgroundColor: Colors.orange,
                onPressed: () {
                  AddTaskRoute(taskGroup: widget.taskGroup).push(context);
                },
                child: Icon(Icons.add, color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 10),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: widget.tasks.length,
            itemBuilder: (context, index) {
              return TaskItem(
                title: widget.tasks[index].title,
                date: widget.tasks[index].date,
                isDone: widget.tasks[index].isDone,
                onChanged: (value) {
                  updateItem(index, value);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
