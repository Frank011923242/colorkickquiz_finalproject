import 'package:flutter/material.dart';

import '../textfie/textf.dart';




class Signupage extends StatelessWidget {
  const Signupage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(



        backgroundColor:  Color(0xFF7071E8),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset(
                'asset/images/logo.png',

              ),


              Text('Welcome to',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.tealAccent ,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text('Color Kick Quiz',
                style: TextStyle(
                  fontSize: 45,
                  color: Colors.tealAccent ,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 30,),

              Text('SIGNUP HERE',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.tealAccent ,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 11,),

              Textf(icons: Icons.email, text: 'Email',controller: null,obscureText: false,),
              SizedBox(height: 5,),

              Textf(icons: Icons.lock, text: 'Password',controller: null,obscureText: false,),

              SizedBox(height: 30,),

              SizedBox(
                width: 250,
                height: 60,
                child: FilledButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red[600]
                  ), onPressed: () { Navigator.pushNamed(context, 'todolist'); }, child: const Text('SignUp'),
                ),

              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already Have Account?",
                    style: TextStyle(
                        fontSize: 15
                    ),),
                  TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/signin');
                      },
                      child: Text('Login Now',)),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
