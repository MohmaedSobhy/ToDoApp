import 'package:flutter/material.dart';
import 'package:to_do_app/Core/style/colors/app_color.dart';
import 'package:to_do_app/Core/utils/app_string.dart';

class SelectColorView extends StatefulWidget {
  const SelectColorView({super.key});

  @override
  State<SelectColorView> createState() => _SelectColorViewState();
}

class _SelectColorViewState extends State<SelectColorView> {
  int selectedIndex = 0;
  List<Color> allColors = [
    AppColor.red,
    AppColor.lightGreen,
    AppColor.darkGreen,
    AppColor.deepBlue,
    AppColor.brown,
    AppColor.purble,
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 5,
        ),
        Text(
          AppString.color,
          style: Theme.of(context).textTheme.displaySmall,
        ),
        const SizedBox(height: 5),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.05,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: allColors.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: CircleAvatar(
                  backgroundColor: allColors[index],
                  radius: 16,
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
