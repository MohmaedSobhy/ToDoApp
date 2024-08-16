import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:to_do_app/Core/utils/app_string.dart';
import 'package:to_do_app/Feature/home/presentation/views/date_picker_view.dart';
import 'package:to_do_app/Feature/home/presentation/widgets/task_item_widget.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 5,
          ),
          Text(
            DateFormat.yMMMMd().format(DateTime.now()),
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            AppString.today,
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          const DatePickerView(),
          const SizedBox(height: 5),
          const TaskItemWidget(),
        ],
      ),
    );
  }
}
