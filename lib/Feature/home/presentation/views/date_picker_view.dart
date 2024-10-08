import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/Core/helper/formate_date.dart';
import 'package:to_do_app/Core/style/colors/app_color.dart';
import 'package:to_do_app/Feature/home/presentation/controller/task_cubit.dart';

class DatePickerView extends StatelessWidget {
  const DatePickerView({super.key});

  @override
  Widget build(BuildContext context) {
    return DatePicker(
      DateTime.now(),
      height: MediaQuery.sizeOf(context).height * 0.11,
      initialSelectedDate: DateTime.now(),
      selectionColor: AppColor.primaryColor,
      selectedTextColor: Colors.white,
      monthTextStyle: Theme.of(context).textTheme.displaySmall!,
      dateTextStyle: Theme.of(context).textTheme.displaySmall!,
      dayTextStyle: Theme.of(context).textTheme.displaySmall!,
      onDateChange: (date) {
        TaskCubit.instances.loadAllTask(date: formateDate(date));
      },
    );
  }
}
