import 'package:to_do_app/Core/services/column_key.dart';

class TaskModel {
  final int? id;
  final String startTime;
  final String endTime;
  final String date;
  final int state;
  final String title;
  final String note;

  TaskModel({
    required this.title,
    required this.note,
    required this.date,
    required this.endTime,
    required this.startTime,
    required this.state,
    this.id,
  });

  factory TaskModel.fromJson(Map<String, dynamic> date) {
    return TaskModel(
        id: date[ColumnKey.id],
        title: date[ColumnKey.title],
        note: date[ColumnKey.note],
        date: date[ColumnKey.date],
        endTime: date[ColumnKey.endTime],
        startTime: date[ColumnKey.startTime],
        state: date[ColumnKey.state]);
  }
}
