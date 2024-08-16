import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/Core/style/colors/app_color.dart';
import 'package:to_do_app/Core/utils/app_string.dart';
import 'package:to_do_app/Feature/home/presentation/views/bottom_sheet_view.dart';

class TaskItemWidget extends StatelessWidget {
  const TaskItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (context) {
              return const BottomSheetView();
            });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColor.red,
        ),
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Task 1',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time_rounded,
                        color: Colors.grey[200],
                        size: 18,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '09:33 PM - 09:48 PM',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Work Throw Hell',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              height: 60,
              width: 0.5,
              color: Colors.grey[200]!.withOpacity(0.7),
            ),
            RotatedBox(
              quarterTurns: 3,
              child: Text(
                AppString.todo,
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.displaySmall,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
