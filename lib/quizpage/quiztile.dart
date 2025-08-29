import 'package:flutter/material.dart';

class QuizTile extends StatelessWidget {

  final String text;
  const QuizTile({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(
          color: Colors.white
        ),
      ),
borderOnForeground: true ,
      color: Colors.purple,
      child: Column(
        children: [

          SizedBox(
            width: 100,
            height:100,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                if (MediaQuery.of(context).orientation == Orientation.portrait)
                  buildTextWidget(text),

                if (MediaQuery.of(context).orientation == Orientation.landscape)
                  buildTextWidget(text),
              ],
            ),
          ),
        ],
      ),

    );
  }
}
Widget buildTextWidget(String text) {
  return Center(

    child: Text(

      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 30,
        color: Colors.white,
      ),
    ),
  );
}