import 'package:chat_app/constant/Constantcolors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  ConstantColors color = ConstantColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.redColor,
      appBar: AppBar(
        title: Text('Hello'),
      ),
    );
  }
}
