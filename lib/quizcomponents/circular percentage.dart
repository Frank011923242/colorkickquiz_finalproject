import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';


  class Circleresult extends StatefulWidget {
    final int percent;


  const Circleresult({super.key,required this.percent});

  @override
  State<Circleresult> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<Circleresult> {
  @override
  Widget build(BuildContext context) {
    return Center(

          child: CircularPercentIndicator(
            animation: true,
            animationDuration: 500,
            radius: 200,
            lineWidth: 20,
            percent:double.parse("$widget"),
            progressColor: Colors.deepPurpleAccent,
            backgroundColor: Colors.deepPurple.shade100,
            circularStrokeCap: CircularStrokeCap.round,
            center: Text("$widget.percent",
              style: TextStyle(
                  fontSize: 50
              ),
            ),

          ),
    );




  }
}
