
import 'package:finalproject_colorkickquiz/pages/homepage.dart';
import 'package:finalproject_colorkickquiz/pages/loginpage.dart';
import 'package:finalproject_colorkickquiz/pages/quizgamehomepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
body: StreamBuilder<User?>(stream: FirebaseAuth.instance.authStateChanges(),
  builder: (context, snapshot) {

  if(snapshot.hasData){
    return ShoeQuizHome();
  }
  else{
    return LoginPage();
  }
    }

)

    );
  }
}
