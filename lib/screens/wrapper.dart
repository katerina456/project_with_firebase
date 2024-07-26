import 'package:flutter/material.dart';
import 'package:coffee/screens/home/home.dart';
import 'package:coffee/screens/authentificate/authentificate.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    // home or authentificate
    return const Authentificate();
  }
}
