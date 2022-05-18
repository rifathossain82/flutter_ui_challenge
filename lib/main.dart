import 'package:flutter/material.dart';
import 'package:flutter_ui_chellange/src/home/homepage.dart';
import 'package:flutter_ui_chellange/src/ui_challenge_one/homeOne.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter UI Challenge',
      home: Homepage(),
    );
  }
}
