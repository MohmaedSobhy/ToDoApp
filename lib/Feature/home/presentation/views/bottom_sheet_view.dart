import 'package:flutter/material.dart';
import 'package:to_do_app/Core/style/colors/app_color.dart';
import 'package:to_do_app/Core/utils/app_string.dart';
import 'package:to_do_app/Core/widgets/custome_button.dart';

class BottomSheetView extends StatelessWidget {
  const BottomSheetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 5),
          CustomeButtonWidget(
            title: AppString.taskComplete,
            onTap: () {},
            width: double.infinity,
            backGround: AppColor.primaryColor,
          ),
          const SizedBox(height: 5),
          CustomeButtonWidget(
            title: AppString.deleteTask,
            onTap: () {},
            width: double.infinity,
            backGround: AppColor.darkRed,
          ),
          const SizedBox(height: 5),
          CustomeButtonWidget(
            title: AppString.cancel,
            onTap: () {
              Navigator.of(context).pop();
            },
            width: double.infinity,
            backGround: AppColor.primaryColor,
          ),
        ],
      ),
    );
  }
}
