import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  final String next;
  const NextButton({super.key, required this.next});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(next,
        style: TextStyle(
          fontSize: 20


        ),
      ),
    );
  }
}
