import 'package:flutter/material.dart';
import 'package:coffee/screens/authentificate/sign_in.dart';

class Authentificate extends StatefulWidget {
  const Authentificate({super.key});

  @override
  State<Authentificate> createState() => _AuthentificateState();
}

class _AuthentificateState extends State<Authentificate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SignIn(),
    );
  }
}
