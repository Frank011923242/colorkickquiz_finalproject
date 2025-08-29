
import 'package:finalproject_colorkickquiz/quizitem/quiz7.dart';
import 'package:finalproject_colorkickquiz/quizpage/quiztile.dart';
import 'package:flutter/material.dart';


import '../quizitem/quiz1.dart';
import '../quizitem/quiz10.dart';
import '../quizitem/quiz2.dart';
import '../quizitem/quiz3.dart';
import '../quizitem/quiz4.dart';
import '../quizitem/quiz5.dart';
import '../quizitem/quiz6.dart';
import '../quizitem/quiz8.dart';
import '../quizitem/quiz9.dart';


class Homequiztile extends StatefulWidget {
   Homequiztile({super.key});

  @override
  State<Homequiztile> createState() => _HomequiztileState();
}

class _HomequiztileState extends State<Homequiztile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7071C3),


      body: SafeArea(

        child: Center(



          child: Column(

            children: [

              SizedBox(height: 24,),

Text('Quizes',style:
  TextStyle(
    fontSize: 30,
    fontWeight:FontWeight.bold,
    color: Colors.orange

  ),
      ),
              SizedBox(height: 20,),




                 Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly ,

                  children: [

                    SizedBox(
                      height: 50,
                    ),

                    GestureDetector(

                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Quiz1()),
                        );
                      },
                      child: QuizTile(text: '1',),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Quiz2()),
                        );
                      },
                      child: QuizTile(text: '2'),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Quiz3()),
                        );
                      },
                      child: QuizTile(text: '3'),
                    ),

                  ],
                ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Quiz4()),
                      );
                    },
                    child: QuizTile(text: '4'),
                  ),

              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Quiz5()),
                  );
                },
                child: QuizTile(text: '5'),
              ),
                  GestureDetector(

                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Quiz6()),
                      );
                    },
                    child: QuizTile(text: '6',),
                  ),
                ],
              ),

              Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly ,

                children: [

                  SizedBox(
                    height: 50,
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Quiz7()),
                      );
                    },
                    child: QuizTile(text: '7'),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Quiz8()),
                      );
                    },
                    child: QuizTile(text: '8'),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Quiz9()),
                      );
                    },
                    child: QuizTile(text: '9'),
                  ),


                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                children: [
                  SizedBox(height: 10,),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Quiz10()),
                      );
                    },
                    child: QuizTile(text: '10'),
                  ),
                ],
              ),
            ],
          ),
        ),

      ),

    );
  }
}
