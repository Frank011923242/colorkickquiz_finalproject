import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String ques;
  const Question({super.key, required this.ques});

  @override
  Widget build(BuildContext context) {
    return Center(

      child: Text(ques,
        style: TextStyle(
          fontSize: 20,

        ),),
    );
  }
}
