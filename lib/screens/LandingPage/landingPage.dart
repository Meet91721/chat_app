import 'package:chat_app/constant/Constantcolors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'landingHelper.dart';

class LandingPage extends StatelessWidget {
  LandingPage({Key? key}) : super(key: key);

  final ConstantColors color = ConstantColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.whiteColor,
      body: Stack(
        children: [
          bodyColor(),
          Provider.of<LandingHelper>(context, listen: false).bodyImage(context),
          Provider.of<LandingHelper>(context, listen: false)
              .taglineText(context),
          Provider.of<LandingHelper>(context, listen: false)
              .mainButton(context),
          Provider.of<LandingHelper>(context, listen: false)
              .privacyText(context),
        ],
      ),
    );
  }

  bodyColor() {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0.5, 0.9],
              colors: [color.darkColor, color.blueGreyColor])),
    );
  }
}
