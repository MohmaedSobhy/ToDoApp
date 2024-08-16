import 'package:flutter/material.dart';
import 'package:to_do_app/Core/helper/app_validator.dart';
import 'package:to_do_app/Core/helper/formate_date.dart';
import 'package:to_do_app/Core/helper/select_time_picker.dart';
import 'package:to_do_app/Core/style/colors/app_color.dart';
import 'package:to_do_app/Core/utils/app_string.dart';
import 'package:to_do_app/Feature/home/presentation/controller/task_cubit.dart';
import 'package:to_do_app/Feature/home/presentation/views/select_time_view.dart';
import 'package:to_do_app/Feature/home/presentation/widgets/custome_text_form_field.dart';

import 'select_color_view.dart';

class AddTaskFieldsView extends StatelessWidget {
  const AddTaskFieldsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: TaskCubit.instances.formkey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Text(
              AppString.title,
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const SizedBox(height: 4),
            CustomeTextFormField(
              hint: AppString.enterTitle,
              controller: TaskCubit.instances.title,
              validator: AppValidators.titleValidator,
            ),
            const SizedBox(height: 10),
            Text(
              AppString.note,
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const SizedBox(height: 4),
            CustomeTextFormField(
              hint: AppString.enterNote,
              controller: TaskCubit.instances.note,
              validator: AppValidators.noteValidator,
            ),
            const SizedBox(height: 10),
            Text(
              AppString.date,
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const SizedBox(height: 4),
            CustomeTextFormField(
              hint: AppString.enterDate,
              controller: TaskCubit.instances.date,
              onTap: () async {
                await selectDate(context).then((value) {
                  if (value != null) {
                    TaskCubit.instances.date.text = formateDate(value);
                    ;
                  }
                });
              },
              validator: AppValidators.dateValidator,
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.calendar_month,
                  color: AppColor.white,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const SelectTimeView(),
            const SizedBox(height: 10),
            const SelectColorView(),
          ],
        ),
      ),
    );
  }
}
