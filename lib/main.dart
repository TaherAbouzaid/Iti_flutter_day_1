import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_managment/pages/projects_screen.dart';
import 'package:task_managment/pages/task_screen.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const TaskApp());
}

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: HomePage(),
    );
  }
}
