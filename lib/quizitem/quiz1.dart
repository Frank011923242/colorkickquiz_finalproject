import 'dart:ui';



import 'package:finalproject_colorkickquiz/quistions/qustion_list.dart';

import 'package:flutter/material.dart';






import '../Score/scorescreen.dart';
import '../quizcomponents/Shoename.dart';



class Quiz1 extends StatefulWidget {
  const Quiz1({super.key});

  @override
  State<Quiz1> createState() => _Quiz1State();
}

class _Quiz1State extends State<Quiz1> {
  Color mainColor = Colors.pink;
  Color secondColor = Colors.blue;
  PageController? _controller = PageController(initialPage: 0);

//setting the game var
  bool isPressed = false;
  Color isTrue = Colors.green;
  Color isFalse = Colors.red;
  Color btnColor = Colors.blue;
  double Score = 0;
  double percent = 0;
  double total = 10.0;
  double getpercent = 0;
  bool isCorrectAnswer = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor:Color(0xFF7071E8),

      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: PageView.builder(
          physics: NeverScrollableScrollPhysics(),
          controller: _controller!,
          onPageChanged: (page) {
            setState(() {
              isPressed = false;
            });
          },
          itemCount: question.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [


                SizedBox(
                  width: double.infinity,
                  child: Text("Question ${index + 1}/ ${question.length}",
                    style: const TextStyle(
                        fontSize: 20,
                        color: Colors.tealAccent,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                Divider(
                  color: Colors.white,
                  height: 8.0,
                  thickness: 1.0,
                ),
                Shoename(text: question[index].shoename!),

                Container(
                  child: Image.asset(question[index].picure,
                    height: 250,
                  ),

                ),
                SizedBox(height: 15,),

                Text(question[index].question!,
                  style: TextStyle(

                    color:Colors.white,
                    fontSize: 22,
                    fontWeight:FontWeight.bold

                  ),
                ),
                SizedBox(height: 15,),
                for(int i = 0; i < question[index].answer!.length; i++)

                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(
                        bottom: 12.0, left: 12.0, right: 12.0),

                    child: MaterialButton(
                      shape: StadiumBorder(),
                      color: isPressed ?
                      question[index].answer!.entries.toList()[i].value
                          ? isTrue
                          : isFalse : secondColor,
                      padding: EdgeInsets.symmetric(vertical: 18.0),

                      onPressed: isPressed ? () {}
                          : () {
                        setState(() {
                          isPressed = true;
                        });
                        if (question[index].answer!.entries.toList()[i].value)
                          Score += 1;
                        print(Score);
                      },
                      child: Text(question[index].answer!.keys.toList()[i],
                        style: TextStyle(
                            color: Colors.white
                        ),

                      ),

                    ),

                  ),
                Text(
                  isPressed
                      ? isCorrectAnswer ? 'Correct' : 'Incorrect'
                      : '', // Display nothing if not pressed
                  style: TextStyle(
                    color: isCorrectAnswer ? Colors.green : Colors.red, // Adjust colors as needed
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),


                SizedBox(height: 10,),


                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    OutlinedButton(onPressed: isPressed
                        ? index + 1 == question.length
                        ? () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ScoreScreen(Score)));
                    }
                        : () {
                      _controller!.nextPage(duration: Duration(
                          milliseconds: 250), curve: Curves.easeInExpo);
                    }
                        : null,
                      style: ButtonStyle(
                          backgroundColor:  MaterialStateProperty.all<Color>(Colors.white),
            ),
                      child: Text("Next Question",
                        style: TextStyle(
                          fontSize: 20,
                            color: Colors.blueAccent
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
