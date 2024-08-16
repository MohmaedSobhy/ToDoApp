import 'package:flutter/material.dart';
import 'package:to_do_app/Core/style/colors/app_color.dart';
import 'package:to_do_app/Core/utils/app_string.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          height: 5,
        ),
        IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColor.white,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          AppString.addTask,
          style: Theme.of(context).textTheme.displayLarge,
        )
      ],
    );
  }
}
