import 'package:flutter/material.dart';

class Shoename extends StatelessWidget {
  final String text;
  const Shoename({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(

      child: Text(text,
        textAlign: TextAlign.center,
        style: TextStyle(
          height: 2.5,
          fontSize: 25,
          color: Colors.tealAccent,






        ),
      ),


    );
  }
}
