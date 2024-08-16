import 'package:flutter/material.dart';
import 'package:to_do_app/Core/utils/app_string.dart';
import 'package:to_do_app/Feature/home/presentation/views/select_time_view.dart';
import 'package:to_do_app/Feature/home/presentation/widgets/custome_text_form_field.dart';

import 'select_color_view.dart';

class AddTaskFieldsView extends StatelessWidget {
  const AddTaskFieldsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          const CustomeTextFormField(
            hint: AppString.enterTitle,
          ),
          const SizedBox(height: 10),
          Text(
            AppString.note,
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const SizedBox(height: 4),
          const CustomeTextFormField(
            hint: AppString.enterNote,
          ),
          const SizedBox(height: 10),
          Text(
            AppString.date,
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const SizedBox(height: 4),
          CustomeTextFormField(
            hint: AppString.enterDate,
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.calendar_month,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const SelectTimeView(),
          const SizedBox(height: 10),
          const SelectColorView(),
        ],
      ),
    );
  }
}
