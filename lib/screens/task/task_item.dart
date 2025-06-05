import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';

class TaskItem extends StatefulWidget {
  const TaskItem({
    super.key,
    required this.title,
    required this.date,
    required this.isDone,
    required this.onChanged,
  });
  final String title;
  final DateTime date;
  final bool isDone;
  final Function(bool) onChanged;

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  bool _isDone = false;

  void _onChanged(bool? value) {
    setState(() {
      _isDone = value ?? false;
    });
  }

  @override
  void initState() {
    super.initState();
    _isDone = widget.isDone;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            children: [
              Checkbox(value: _isDone, onChanged: _onChanged),
              SizedBox(width: 5),
              Text(widget.title, style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
        Text(formatDate(widget.date, [hh, ':', nn, ' ', am])),
        SizedBox(width: 10),
      ],
    );
  }
}
