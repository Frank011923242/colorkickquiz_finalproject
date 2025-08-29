import 'package:flutter/material.dart';



class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7071E8),
      body: Center(


        child: SizedBox(
          width: 250,
          height: 60,
          child: FilledButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.cyan
            ), onPressed: () { Navigator.pushNamed(context, '/homequiztile'); }, child: const Text('Playnow'),
          ),
        ),
      ),
    );
  }
}
