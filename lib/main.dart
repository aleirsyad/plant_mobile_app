import 'package:flutter/material.dart';
import 'package:plant_mobile_app/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
          SplashScreen(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
