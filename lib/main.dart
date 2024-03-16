import 'package:flutter/material.dart';
import 'package:quizapp/LoginPage.dart';

// import 'package:quizapp/Quiz.dart';
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
     return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPage()
    );
  }
}