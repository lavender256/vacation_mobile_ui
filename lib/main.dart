import 'package:flutter/material.dart';
import 'package:vacation_mobile_ui/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Boston'
      ),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: HomeScreen()
    );
  }
}
