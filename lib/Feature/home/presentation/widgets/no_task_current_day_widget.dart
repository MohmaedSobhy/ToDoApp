import 'package:flutter/material.dart';
import 'package:to_do_app/Core/utils/app_assets.dart';
import 'package:to_do_app/Core/utils/app_string.dart';

class NoTaskForCurrentDayWidget extends StatelessWidget {
  const NoTaskForCurrentDayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(image: AssetImage(AppAssets.addTask)),
            const SizedBox(height: 5),
            Text(
              AppString.whatTodoToday,
              style: TextStyle(
                color: Colors.white.withOpacity(0.85),
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              AppString.tapAddTask,
              style: TextStyle(
                color: Colors.white.withOpacity(0.85),
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
