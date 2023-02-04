import 'package:flutter/material.dart';
import 'package:aplicationm/screens/onboarding/components/onboarding.dart';
class BodyBoarding extends StatefulWidget {
  const BodyBoarding({super.key});

  @override
  State<BodyBoarding> createState() => BodyBoardingState();
}

class BodyBoardingState extends State<BodyBoarding> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Onboarding());
  }
}
