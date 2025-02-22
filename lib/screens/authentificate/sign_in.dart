import 'package:flutter/material.dart';
import 'package:coffee/services/auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text(
          'Sign in to Brew Crew',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: ElevatedButton(
          child: Text(
            'Sign in anon',
            style: TextStyle(
              color: Colors.grey[900],
            ),
          ),
          onPressed: () async {
            dynamic result = await _auth.signInAnon();
            if (result == null) {
              print('error');
            } else {
              print('signed');
              print(result);
            }
          },
        ),
      ),
    );
  }
}
