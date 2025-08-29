
import 'package:flutter/material.dart';

class Textf extends StatelessWidget {
  final IconData icons;
  final String text;
  final controller;
  final bool obscureText;


   Textf({super.key, required this.icons, required this.text, required this.controller, required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,

      child: TextField(
controller:controller ,
        obscureText:obscureText ,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,

          prefixIcon: Icon(icons),
          hintText:(text),
          border: OutlineInputBorder(
          ),
        ),

      ),

    );
  }
}


