import 'package:flutter/material.dart';
import 'package:to_do_app/Core/style/colors/app_color.dart';
import 'package:to_do_app/Core/utils/app_string.dart';
import 'package:to_do_app/Feature/home/presentation/controller/task_cubit.dart';

class SelectColorView extends StatefulWidget {
  const SelectColorView({super.key});

  @override
  State<SelectColorView> createState() => _SelectColorViewState();
}

class _SelectColorViewState extends State<SelectColorView> {
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
            itemCount: TaskCubit.instances.allColors.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      TaskCubit.instances.selectedColor = index;
                    });
                  },
                  child: CircleAvatar(
                    backgroundColor: TaskCubit.instances.allColors[index],
                    radius: 16,
                    child: (index == TaskCubit.instances.selectedColor)
                        ? Icon(
                            Icons.check,
                            color: AppColor.white,
                          )
                        : null,
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
