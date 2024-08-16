import 'package:flutter/material.dart';
import 'package:to_do_app/Feature/home/presentation/views/add_task_body_view.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: AddTaskBodyView()),
    );
  }
}
