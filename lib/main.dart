import 'package:flutter/material.dart';
import 'package:aplicationm/screens/onboarding/body_boarding.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi primera aplicacion',
      initialRoute: '/',
      routes: {
        '/':(context) => const BodyBoarding()
      },
    );
  }
}
