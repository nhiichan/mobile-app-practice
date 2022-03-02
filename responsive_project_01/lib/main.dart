import 'package:flutter/material.dart';
import 'package:responsive_project_01/constants/assets.dart';
import 'package:responsive_project_01/screens/dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Project 01',
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: bgColor,
        canvasColor: secondaryColor,
      ),
      home: const DashboardScreen(),
    );
  }
}
