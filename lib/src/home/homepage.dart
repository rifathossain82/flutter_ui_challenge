import 'package:flutter/material.dart';
import 'package:flutter_ui_chellange/src/ui_challenge_eight/home_eight.dart';
import 'package:flutter_ui_chellange/src/ui_challenge_nine/home_nine.dart';
import 'package:flutter_ui_chellange/src/ui_challenge_one/homeOne.dart';
import 'package:flutter_ui_chellange/src/ui_challenge_seven/home_seven.dart';
import 'package:flutter_ui_chellange/src/ui_challenge_six/home_six.dart';
import 'package:flutter_ui_chellange/src/ui_challenge_three/homeThree.dart';
import 'package:flutter_ui_chellange/src/ui_challenge_two/homeTow.dart';

class Homepage extends StatelessWidget {
  Homepage({Key? key}) : super(key: key);

  final buttonName=[
    'UI One',
    'UI Two',
    'UI Three',
    'UI Four',
    'UI Five',
    'UI Six',
    'UI Seven',
    'UI Eight',
    'UI Nine',
  ];

  final uiPage=[
    const HomeOne(),
    HomeTwo(),
    const HomeThree(),
    const HomeOne(),
    const HomeOne(),
    const HomeSix(),
    HomeSeven(),
    const HomeEight(),
    const HomeNine(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter UI Challenge"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: buttonName.length,
        itemBuilder: (context, index){
          return buildButton(buttonName[index], index, context);
        },
      )
    );
  }

  Widget buildButton(String name, int index, BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>uiPage[index]));
        },
        child: Text(name),
      ),
    );
  }
}
