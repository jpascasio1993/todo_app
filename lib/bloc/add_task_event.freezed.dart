// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_task_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddTaskEvent {

 String get title; DateTime get date; TaskGroup get taskGroup;
/// Create a copy of AddTaskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddTaskEventCopyWith<AddTaskEvent> get copyWith => _$AddTaskEventCopyWithImpl<AddTaskEvent>(this as AddTaskEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddTaskEvent&&(identical(other.title, title) || other.title == title)&&(identical(other.date, date) || other.date == date)&&(identical(other.taskGroup, taskGroup) || other.taskGroup == taskGroup));
}


@override
int get hashCode => Object.hash(runtimeType,title,date,taskGroup);

@override
String toString() {
  return 'AddTaskEvent(title: $title, date: $date, taskGroup: $taskGroup)';
}


}

/// @nodoc
abstract mixin class $AddTaskEventCopyWith<$Res>  {
  factory $AddTaskEventCopyWith(AddTaskEvent value, $Res Function(AddTaskEvent) _then) = _$AddTaskEventCopyWithImpl;
@useResult
$Res call({
 String title, DateTime date, TaskGroup taskGroup
});



}
/// @nodoc
class _$AddTaskEventCopyWithImpl<$Res>
    implements $AddTaskEventCopyWith<$Res> {
  _$AddTaskEventCopyWithImpl(this._self, this._then);

  final AddTaskEvent _self;
  final $Res Function(AddTaskEvent) _then;

/// Create a copy of AddTaskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? date = null,Object? taskGroup = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,taskGroup: null == taskGroup ? _self.taskGroup : taskGroup // ignore: cast_nullable_to_non_nullable
as TaskGroup,
  ));
}

}


/// @nodoc


class _AddTaskEvent implements AddTaskEvent {
  const _AddTaskEvent({required this.title, required this.date, required this.taskGroup});
  

@override final  String title;
@override final  DateTime date;
@override final  TaskGroup taskGroup;

/// Create a copy of AddTaskEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddTaskEventCopyWith<_AddTaskEvent> get copyWith => __$AddTaskEventCopyWithImpl<_AddTaskEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddTaskEvent&&(identical(other.title, title) || other.title == title)&&(identical(other.date, date) || other.date == date)&&(identical(other.taskGroup, taskGroup) || other.taskGroup == taskGroup));
}


@override
int get hashCode => Object.hash(runtimeType,title,date,taskGroup);

@override
String toString() {
  return 'AddTaskEvent(title: $title, date: $date, taskGroup: $taskGroup)';
}


}

/// @nodoc
abstract mixin class _$AddTaskEventCopyWith<$Res> implements $AddTaskEventCopyWith<$Res> {
  factory _$AddTaskEventCopyWith(_AddTaskEvent value, $Res Function(_AddTaskEvent) _then) = __$AddTaskEventCopyWithImpl;
@override @useResult
$Res call({
 String title, DateTime date, TaskGroup taskGroup
});



}
/// @nodoc
class __$AddTaskEventCopyWithImpl<$Res>
    implements _$AddTaskEventCopyWith<$Res> {
  __$AddTaskEventCopyWithImpl(this._self, this._then);

  final _AddTaskEvent _self;
  final $Res Function(_AddTaskEvent) _then;

/// Create a copy of AddTaskEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? date = null,Object? taskGroup = null,}) {
  return _then(_AddTaskEvent(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,taskGroup: null == taskGroup ? _self.taskGroup : taskGroup // ignore: cast_nullable_to_non_nullable
as TaskGroup,
  ));
}


}

// dart format on
