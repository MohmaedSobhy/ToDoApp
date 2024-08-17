import 'package:flutter/material.dart';
import 'package:to_do_app/Feature/home/presentation/controller/task_cubit.dart';
import 'package:to_do_app/Feature/home/presentation/widgets/task_item_widget.dart';

class AllTaskListView extends StatelessWidget {
  const AllTaskListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: TaskCubit.allTask.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 10),
            child: TaskItemWidget(
              task: TaskCubit.allTask[index],
            ),
          );
        },
      ),
    );
  }
}
