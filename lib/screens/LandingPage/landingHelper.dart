import 'package:chat_app/constant/Constantcolors.dart';
import 'package:chat_app/screens/HomePage/Homepage.dart';
import 'package:chat_app/services/authentication.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class LandingHelper with ChangeNotifier {
  ConstantColors color = ConstantColors();
  Widget bodyImage(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.56,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/login.png')),
      ),
    );
  }

  Widget taglineText(BuildContext) {
    return Positioned(
      top: 450,
      left: 10,
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 170,
        ),
        child: RichText(
          text: TextSpan(
              text: 'Are ',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  color: color.whiteColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
              children: <TextSpan>[
                TextSpan(
                    text: 'You ',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: color.whiteColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 34)),
                TextSpan(
                    text: 'Social',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: color.blueColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 34)),
                TextSpan(
                    text: '?',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: color.whiteColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 34)),
              ]),
        ),
      ),
    );
  }

  Widget mainButton(BuildContext context) {
    return Positioned(
      top: 630,
      child: Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                  child: Container(
                child: Icon(
                  EvaIcons.email,
                  color: color.yellowColor,
                ),
                width: 80,
                height: 45,
                decoration: BoxDecoration(
                  border: Border.all(color: color.yellowColor),
                  borderRadius: BorderRadius.circular(10),
                ),
              )),
              GestureDetector(
                onTap: () => Provider.of<Authentication>(context, listen: false)
                    .signWithGoogle()
                    .whenComplete(() => Navigator.pushReplacement(
                        context,
                        PageTransition(
                            child: HomePage(),
                            type: PageTransitionType.leftToRight))),
                child: Container(
                  child: Icon(
                    EvaIcons.google,
                    color: color.redColor,
                  ),
                  width: 80,
                  height: 45,
                  decoration: BoxDecoration(
                    border: Border.all(color: color.redColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  child: Icon(
                    EvaIcons.facebook,
                    color: color.blueColor,
                  ),
                  width: 80,
                  height: 45,
                  decoration: BoxDecoration(
                    border: Border.all(color: color.blueColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          )),
    );
  }

  Widget privacyText(BuildContext context) {
    return Positioned(
        top: 740,
        left: 20,
        right: 20,
        child: Column(
          children: [
            Text("By continuing you agree TheSocial's terms of",
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 12,
                )),
            Text("Services & Privacy Policy",
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 12,
                ))
          ],
        ));
  }
}

class PageTransitions {}
