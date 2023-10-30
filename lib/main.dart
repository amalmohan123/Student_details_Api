import 'package:flutter/material.dart';
import 'package:student_details/helpers/colors.dart';
import 'package:student_details/view/homepage/home_page.dart';

void main() {
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            background: ConstantColors.backgroundColor,
          ),
          useMaterial3: true,
        ),
        home: const HomePage());
  }
}
