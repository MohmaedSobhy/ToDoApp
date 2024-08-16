import 'package:flutter/material.dart';

Future<TimeOfDay?> selectTime(BuildContext context) async {
  final TimeOfDay? picked = await showTimePicker(
    context: context,
    initialTime: TimeOfDay.now(),
  );

  return picked;
}

Future<DateTime?> selectDate(BuildContext context, {DateTime? date}) async {
  final DateTime? picked = await showDatePicker(
    context: context,
    initialDate: date ?? DateTime.now(),
    firstDate: DateTime(2000),
    lastDate: DateTime(2101),
  );
  return picked;
}
