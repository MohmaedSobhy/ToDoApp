import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  TextEditingController title = TextEditingController();
  TextEditingController note = TextEditingController();
  TextEditingController date = TextEditingController();
  TextEditingController startTime = TextEditingController();
  TextEditingController endTime = TextEditingController();

  static TaskCubit instances = TaskCubit._();

  TaskCubit._() : super(TaskInitial());

  void addTask() {}

  void deleteTask() {}
}
