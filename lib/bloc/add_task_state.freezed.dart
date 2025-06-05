// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_task_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddTaskState {

 List<Task> get todayTasks; List<Task> get tomorrowTasks;
/// Create a copy of AddTaskState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddTaskStateCopyWith<AddTaskState> get copyWith => _$AddTaskStateCopyWithImpl<AddTaskState>(this as AddTaskState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddTaskState&&const DeepCollectionEquality().equals(other.todayTasks, todayTasks)&&const DeepCollectionEquality().equals(other.tomorrowTasks, tomorrowTasks));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(todayTasks),const DeepCollectionEquality().hash(tomorrowTasks));

@override
String toString() {
  return 'AddTaskState(todayTasks: $todayTasks, tomorrowTasks: $tomorrowTasks)';
}


}

/// @nodoc
abstract mixin class $AddTaskStateCopyWith<$Res>  {
  factory $AddTaskStateCopyWith(AddTaskState value, $Res Function(AddTaskState) _then) = _$AddTaskStateCopyWithImpl;
@useResult
$Res call({
 List<Task> todayTasks, List<Task> tomorrowTasks
});



}
/// @nodoc
class _$AddTaskStateCopyWithImpl<$Res>
    implements $AddTaskStateCopyWith<$Res> {
  _$AddTaskStateCopyWithImpl(this._self, this._then);

  final AddTaskState _self;
  final $Res Function(AddTaskState) _then;

/// Create a copy of AddTaskState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? todayTasks = null,Object? tomorrowTasks = null,}) {
  return _then(_self.copyWith(
todayTasks: null == todayTasks ? _self.todayTasks : todayTasks // ignore: cast_nullable_to_non_nullable
as List<Task>,tomorrowTasks: null == tomorrowTasks ? _self.tomorrowTasks : tomorrowTasks // ignore: cast_nullable_to_non_nullable
as List<Task>,
  ));
}

}


/// @nodoc


class _AddTaskState implements AddTaskState {
  const _AddTaskState({final  List<Task> todayTasks = const [], final  List<Task> tomorrowTasks = const []}): _todayTasks = todayTasks,_tomorrowTasks = tomorrowTasks;
  

 final  List<Task> _todayTasks;
@override@JsonKey() List<Task> get todayTasks {
  if (_todayTasks is EqualUnmodifiableListView) return _todayTasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_todayTasks);
}

 final  List<Task> _tomorrowTasks;
@override@JsonKey() List<Task> get tomorrowTasks {
  if (_tomorrowTasks is EqualUnmodifiableListView) return _tomorrowTasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tomorrowTasks);
}


/// Create a copy of AddTaskState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddTaskStateCopyWith<_AddTaskState> get copyWith => __$AddTaskStateCopyWithImpl<_AddTaskState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddTaskState&&const DeepCollectionEquality().equals(other._todayTasks, _todayTasks)&&const DeepCollectionEquality().equals(other._tomorrowTasks, _tomorrowTasks));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_todayTasks),const DeepCollectionEquality().hash(_tomorrowTasks));

@override
String toString() {
  return 'AddTaskState(todayTasks: $todayTasks, tomorrowTasks: $tomorrowTasks)';
}


}

/// @nodoc
abstract mixin class _$AddTaskStateCopyWith<$Res> implements $AddTaskStateCopyWith<$Res> {
  factory _$AddTaskStateCopyWith(_AddTaskState value, $Res Function(_AddTaskState) _then) = __$AddTaskStateCopyWithImpl;
@override @useResult
$Res call({
 List<Task> todayTasks, List<Task> tomorrowTasks
});



}
/// @nodoc
class __$AddTaskStateCopyWithImpl<$Res>
    implements _$AddTaskStateCopyWith<$Res> {
  __$AddTaskStateCopyWithImpl(this._self, this._then);

  final _AddTaskState _self;
  final $Res Function(_AddTaskState) _then;

/// Create a copy of AddTaskState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? todayTasks = null,Object? tomorrowTasks = null,}) {
  return _then(_AddTaskState(
todayTasks: null == todayTasks ? _self._todayTasks : todayTasks // ignore: cast_nullable_to_non_nullable
as List<Task>,tomorrowTasks: null == tomorrowTasks ? _self._tomorrowTasks : tomorrowTasks // ignore: cast_nullable_to_non_nullable
as List<Task>,
  ));
}


}

// dart format on
