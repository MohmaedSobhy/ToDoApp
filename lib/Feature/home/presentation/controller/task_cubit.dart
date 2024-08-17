import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:to_do_app/Core/services/column_key.dart';
import 'package:to_do_app/Core/services/sqlite_services.dart';
import 'package:to_do_app/Feature/home/data/model/task_model.dart';

part 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  TextEditingController title = TextEditingController();
  TextEditingController note = TextEditingController();
  TextEditingController date = TextEditingController();
  TextEditingController startTime = TextEditingController();
  TextEditingController endTime = TextEditingController();
  int selectedColor = 0;
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  static TaskCubit instances = TaskCubit._();
  static List<TaskModel> allTask = [];
  TaskCubit._() : super(TaskInitial());

  void addTask() async {
    emit(LoadingAddTask());
    try {
      await AppData.insertDB({
        ColumnKey.title: title,
        ColumnKey.note: note,
        ColumnKey.startTime: startTime,
        ColumnKey.endTime: endTime,
        ColumnKey.date: date,
        ColumnKey.state: 0,
        ColumnKey.color: Colors.white.value,
      }).then((value) {
        if (value == 1) {
          emit(AddTaskSuccefully());
        } else {
          emit(AddTaskFailed());
        }
      });
    } catch (error) {
      emit(AddTaskFailed());
    }
  }

  void updateTask({required int id}) async {
    await AppData.updateDB(id: id).then((value) {
      print(value);
    });
  }

  void completeTask() {}

  void loadAllTask() {}

  void deleteTask() {}
}
