import 'package:facebook/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Facebook',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(66 , 103 , 178, 1),
        accentColor: Colors.grey[300]
      ),
      home: SplashScreen(),
    );
  }
}
