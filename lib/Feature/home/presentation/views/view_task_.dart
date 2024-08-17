import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/Feature/home/presentation/controller/task_cubit.dart';
import 'package:to_do_app/Feature/home/presentation/views/all_task_list_view.dart';
import 'package:to_do_app/Feature/home/presentation/widgets/no_task_current_day_widget.dart';

class ViewTaskForToday extends StatelessWidget {
  const ViewTaskForToday({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskCubit, TaskState>(
      builder: (context, state) {
        if (TaskCubit.allTask.isNotEmpty) {
          return const AllTaskListView();
        }

        return const NoTaskForCurrentDayWidget();
      },
    );
  }
}
