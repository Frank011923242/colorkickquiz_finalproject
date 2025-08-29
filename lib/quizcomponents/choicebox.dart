import 'package:flutter/material.dart';

class ChoicesBox extends StatelessWidget {
  final String Teext;
  const ChoicesBox({super.key, required this.Teext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 8.0),

      child: Container(
        height: 50,
        width: 600,

        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(30),
          color: Colors.blue,





        ),
        child: Text(Teext,
          textAlign: TextAlign.center,
          style: TextStyle(
            height: 2.5,
            fontSize: 15,
            color: Colors.purple,






          ),
        ),


      ),
    );
  }
}
