import 'package:chat_app/screens/LandingPage/landingHelper.dart';
import 'package:chat_app/screens/SplashScreen/splashScreen.dart';
import 'package:chat_app/services/authentication.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/constant/Constantcolors.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ConstantColors color = ConstantColors();
    final ThemeData theme = ThemeData();
    return MultiProvider(
      child: MaterialApp(
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            colorScheme: theme.colorScheme.copyWith(secondary: color.blueColor),
            fontFamily: 'Poppins',
            canvasColor: Colors.transparent),
      ),
      providers: [
        ChangeNotifierProvider(create: (_) => Authentication()),
        ChangeNotifierProvider(
          create: (_) => LandingHelper(),
        )
      ],
    );
  }
}
