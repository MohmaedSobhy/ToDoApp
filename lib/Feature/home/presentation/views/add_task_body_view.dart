import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/Core/style/colors/app_color.dart';
import 'package:to_do_app/Core/utils/app_string.dart';
import 'package:to_do_app/Core/widgets/custome_button.dart';
import 'package:to_do_app/Feature/home/presentation/controller/task_cubit.dart';
import 'package:to_do_app/Feature/home/presentation/views/add_task_fields_view.dart';
import 'package:to_do_app/Feature/home/presentation/views/custome_app_bar.dart';

class AddTaskBodyView extends StatelessWidget {
  const AddTaskBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      child: BlocConsumer<TaskCubit, TaskState>(
        listener: (context, state) {
          print(state);
          if (state is AddTaskSuccefully) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomeAppBar(),
              const Expanded(
                child: AddTaskFieldsView(),
              ),
              CustomeButtonWidget(
                title: AppString.createTask,
                onTap: () {
                  if (TaskCubit.instances.formkey.currentState!.validate()) {
                    TaskCubit.instances.addTask();
                  }
                },
                width: double.infinity,
                backGround: AppColor.purble,
              )
            ],
          );
        },
      ),
    );
  }
}
