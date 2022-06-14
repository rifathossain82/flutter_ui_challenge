import 'package:flutter/material.dart';
import 'package:flutter_ui_chellange/src/home/homepage.dart';

void main(){
  runApp(const MyApp());
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
