import 'dart:async';

import 'package:chat_app/constant/Constantcolors.dart';
import 'package:chat_app/screens/LandingPage/landingPage.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  ConstantColors color = ConstantColors();

  @override
  void initState() {
    Timer(
        const Duration(seconds: 1),
        () => Navigator.pushReplacement(
            context,
            PageTransition(
                child: LandingPage(), type: PageTransitionType.leftToRight)));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: color.darkColor,
        body: Center(
          child: RichText(
            text: TextSpan(
                text: 'the',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    color: color.whiteColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Social',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: color.blueColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 34)),
                ]),
          ),
        ));
  }
}
