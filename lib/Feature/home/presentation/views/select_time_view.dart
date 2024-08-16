import 'package:flutter/material.dart';
import 'package:to_do_app/Core/helper/app_validator.dart';
import 'package:to_do_app/Core/utils/app_string.dart';
import 'package:to_do_app/Feature/home/presentation/controller/task_cubit.dart';
import 'package:to_do_app/Feature/home/presentation/widgets/custome_select_time_widget.dart';

class SelectTimeView extends StatelessWidget {
  const SelectTimeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomeSelectTimeWidget(
            title: AppString.startTime,
            validator: AppValidators.startTimeValidator,
            controller: TaskCubit.instances.startTime,
          ),
        ),
        const SizedBox(
          width: 18,
        ),
        Expanded(
          child: CustomeSelectTimeWidget(
            title: AppString.endTime,
            validator: AppValidators.endTimeValidator,
            controller: TaskCubit.instances.startTime,
          ),
        )
      ],
    );
  }
}
