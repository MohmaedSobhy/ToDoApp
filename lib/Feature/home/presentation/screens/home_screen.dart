import 'package:flutter/material.dart';
import 'package:to_do_app/Core/routes/app_route.dart';
import 'package:to_do_app/Core/services/sqlite_services.dart';
import 'package:to_do_app/Feature/home/presentation/views/home_body_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(child: HomeBodyView()),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          //  Navigator.of(context).pushNamed(AppRoutes.addTask);
        },
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
