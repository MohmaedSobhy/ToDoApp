import 'package:flutter/material.dart';
import 'package:to_do_app/Feature/home/presentation/screens/add_task_screen.dart';
import 'package:to_do_app/Feature/home/presentation/screens/home_screen.dart';
import 'package:to_do_app/Feature/onboarding/screens/on_boarding_screen.dart';
import 'package:to_do_app/Feature/splash_screen/screens/splash_screen.dart';
import 'base_route.dart';

abstract class AppRoutes {
  static const String splashScreen = "/splashScreen";
  static const String home = "/home";
  static const String addTask = "/addTask";
  static const String onboarding = "/onBoarding";

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(
          builder: (context) {
            return const SplashScreen();
          },
        );
      case onboarding:
        return BaseRoute(pageBuilder: (_, __, ___) {
          return const OnBoardingScreen();
        });
      case home:
        return BaseRoute(pageBuilder: (_, __, ___) {
          return const HomeScreen();
        });
      case addTask:
        return BaseRoute(pageBuilder: (_, __, ___) {
          return const AddTaskScreen();
        });
    }
    return null;
  }
}
