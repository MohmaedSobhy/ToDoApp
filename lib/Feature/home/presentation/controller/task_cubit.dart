import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:to_do_app/Core/services/column_key.dart';
import 'package:to_do_app/Core/services/sqlite_services.dart';
import 'package:to_do_app/Core/style/colors/app_color.dart';
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
        ColumnKey.title: title.text.toString(),
        ColumnKey.note: note.text.toString(),
        ColumnKey.startTime: startTime.text.toString(),
        ColumnKey.endTime: endTime.text.toString(),
        ColumnKey.date: date.text.toString(),
        ColumnKey.state: 0,
        ColumnKey.color: AppColor.red.value,
      }).then((value) {
        loadAllTask();
        emit(AddTaskSuccefully());
      });
    } catch (error) {
      emit(AddTaskFailed());
    }
  }

  void updateTask({required int id}) async {
    await AppData.updateDB(id: id).then((value) {});
  }

  void completeTask() {}

  void loadAllTask() async {
    emit(LoadingAddTask());
    try {
      await AppData.getAllToDoTask().then((tasks) {
        allTask.clear();
        allTask.addAll(tasks);
      });
      emit(SuccessFullyLoadTask());
    } catch (error) {
      emit(FailedLoadingTask());
    }
  }

  void deleteTask() {}
}
