// Import necessary packages and files
import 'package:exercise_3/screens/home_page.dart';
import 'package:exercise_3/theme/color_schemes.g.dart';
import 'package:flutter/material.dart';

void main() {
  // Initialize and run the Flutter application
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exercise 3',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
      ),
      home: const HomePage(), // Set the home page as HomePage widget
    );
  }
}
