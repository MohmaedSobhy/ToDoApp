import 'package:flutter/material.dart';
import 'package:to_do_app/Core/routes/app_route.dart';
import 'package:to_do_app/Core/style/theme/app_theme.dart';

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.appTheme,
      initialRoute: AppRoutes.splashScreen,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
