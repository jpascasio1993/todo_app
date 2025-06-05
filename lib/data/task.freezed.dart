// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Task {

 String get title; DateTime get date; bool get isDone; TaskGroup get taskGroup;
/// Create a copy of Task
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskCopyWith<Task> get copyWith => _$TaskCopyWithImpl<Task>(this as Task, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Task&&(identical(other.title, title) || other.title == title)&&(identical(other.date, date) || other.date == date)&&(identical(other.isDone, isDone) || other.isDone == isDone)&&(identical(other.taskGroup, taskGroup) || other.taskGroup == taskGroup));
}


@override
int get hashCode => Object.hash(runtimeType,title,date,isDone,taskGroup);

@override
String toString() {
  return 'Task(title: $title, date: $date, isDone: $isDone, taskGroup: $taskGroup)';
}


}

/// @nodoc
abstract mixin class $TaskCopyWith<$Res>  {
  factory $TaskCopyWith(Task value, $Res Function(Task) _then) = _$TaskCopyWithImpl;
@useResult
$Res call({
 String title, DateTime date, bool isDone, TaskGroup taskGroup
});



}
/// @nodoc
class _$TaskCopyWithImpl<$Res>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._self, this._then);

  final Task _self;
  final $Res Function(Task) _then;

/// Create a copy of Task
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? date = null,Object? isDone = null,Object? taskGroup = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,isDone: null == isDone ? _self.isDone : isDone // ignore: cast_nullable_to_non_nullable
as bool,taskGroup: null == taskGroup ? _self.taskGroup : taskGroup // ignore: cast_nullable_to_non_nullable
as TaskGroup,
  ));
}

}


/// @nodoc


class _Task implements Task {
  const _Task({required this.title, required this.date, this.isDone = false, required this.taskGroup});
  

@override final  String title;
@override final  DateTime date;
@override@JsonKey() final  bool isDone;
@override final  TaskGroup taskGroup;

/// Create a copy of Task
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskCopyWith<_Task> get copyWith => __$TaskCopyWithImpl<_Task>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Task&&(identical(other.title, title) || other.title == title)&&(identical(other.date, date) || other.date == date)&&(identical(other.isDone, isDone) || other.isDone == isDone)&&(identical(other.taskGroup, taskGroup) || other.taskGroup == taskGroup));
}


@override
int get hashCode => Object.hash(runtimeType,title,date,isDone,taskGroup);

@override
String toString() {
  return 'Task(title: $title, date: $date, isDone: $isDone, taskGroup: $taskGroup)';
}


}

/// @nodoc
abstract mixin class _$TaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$TaskCopyWith(_Task value, $Res Function(_Task) _then) = __$TaskCopyWithImpl;
@override @useResult
$Res call({
 String title, DateTime date, bool isDone, TaskGroup taskGroup
});



}
/// @nodoc
class __$TaskCopyWithImpl<$Res>
    implements _$TaskCopyWith<$Res> {
  __$TaskCopyWithImpl(this._self, this._then);

  final _Task _self;
  final $Res Function(_Task) _then;

/// Create a copy of Task
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? date = null,Object? isDone = null,Object? taskGroup = null,}) {
  return _then(_Task(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,isDone: null == isDone ? _self.isDone : isDone // ignore: cast_nullable_to_non_nullable
as bool,taskGroup: null == taskGroup ? _self.taskGroup : taskGroup // ignore: cast_nullable_to_non_nullable
as TaskGroup,
  ));
}


}

// dart format on
