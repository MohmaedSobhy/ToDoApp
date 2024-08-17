import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/Core/routes/app_route.dart';
import 'package:to_do_app/Core/style/theme/app_theme.dart';
import 'package:to_do_app/Feature/home/presentation/controller/task_cubit.dart';

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TaskCubit.instances,
      child: MaterialApp(
        theme: AppTheme.appTheme,
        initialRoute: AppRoutes.splashScreen,
        onGenerateRoute: AppRoutes.onGenerateRoute,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
