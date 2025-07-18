import 'package:flutter/material.dart';
import 'package:tasky/features/auth/screens/login_screen.dart';
import 'package:tasky/features/auth/screens/register_screen.dart';
import 'package:tasky/features/tasks/screens/empty_tasks_screen.dart';
import 'package:tasky/features/tasks/screens/tasks_screen.dart';

void main() {
  runApp(Tasky());
}

class Tasky extends StatelessWidget {
  const Tasky({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(scaffoldBackgroundColor: Colors.white),
      initialRoute: TasksScreen.pageRoute,
      routes: {
        LoginScreen.pageRoute: (context) => LoginScreen(),
        RegisterScreen.pageRoute: (context) => RegisterScreen(),
        EmptyTasksScreen.pageRoute: (context) => EmptyTasksScreen(),
        TasksScreen.pageRoute: (context) => TasksScreen(),
      },
    );
  }
}
