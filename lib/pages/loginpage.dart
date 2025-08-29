import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../buttons1/buton.dart';
import '../textfie/textf.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  void signUserIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailcontroller.text, password: emailcontroller.text);
  }

  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF7071E8),
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'asset/images/logo.png',
                ),
                const Text(
                  'Welcome to',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.tealAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Color Kick Quiz',
                  style: TextStyle(
                    fontSize: 45,
                    color: Colors.tealAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'LOGIN HERE',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.tealAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 11,
                ),
                Textf(
                  icons: Icons.email,
                  text: 'Email',
                  controller: emailcontroller,
                  obscureText: false,
                ),
                SizedBox(
                  height: 5,
                ),
                Textf(
                  icons: Icons.lock,
                  text: 'Password',
                  controller: passwordcontroller,
                  obscureText: true,
                ),
                SizedBox(
                  height: 30,
                ),
                MyButton(
                  onTap: signUserIn,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "No account yet?",
                      style: TextStyle(fontSize: 15),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        child: Text(
                          'Register now',
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
