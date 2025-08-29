import 'package:finalproject_colorkickquiz/pages/quizgamehomepage.dart';
import 'package:finalproject_colorkickquiz/pages/signuppage.dart';
import 'package:flutter/material.dart';

import '../quizitem/quiz1.dart';
import '../quizpage/homequizfile.dart';
import 'loginpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => Signupage(),
        '/signin': (BuildContext context) => LoginPage(),
        '/homequiz': (BuildContext context) => ShoeQuizHome(),
        '/homequiztile': (BuildContext context) => Homequiztile(),
      },
    );
  }
}
