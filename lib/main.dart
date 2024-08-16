import 'package:flutter/material.dart';
import 'package:to_do_app/Core/services/sqlite_services.dart';
import 'package:to_do_app/to_do_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppData.initialDB();
  runApp(const ToDoApp());
}
