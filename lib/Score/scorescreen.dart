

import 'package:finalproject_colorkickquiz/quistions/qustion_list.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';


class ScoreScreen extends StatefulWidget {
  final double score;

  const ScoreScreen(this.score,{Key? key}):super(key: key );

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Text('Congratulations',
        style: TextStyle(
          color: Colors.white,
          fontSize: 38.0,
          fontWeight: FontWeight.bold
        ),
    ),
          Stack(
            alignment:Alignment.center,
            children: [
              SizedBox(height: 200,
              width: 200,

              child: CircularProgressIndicator(
                backgroundColor: Colors.white,

                strokeWidth: 10,
                value: widget.score/10,
                color: Colors.green,





              ),
              ),

              Text(
                '${(widget.score/ question.length * 100).round()}%',
                style: TextStyle(fontSize: 25),
              )

            ],
          )


          ],
        ),
      ),

    );
  }
}
