import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_chellange/src/ui_challenge_eight/home_eight.dart';
import 'package:flutter_ui_chellange/src/ui_challenge_five/home_five.dart';
import 'package:flutter_ui_chellange/src/ui_challenge_four/homeFour.dart';
import 'package:flutter_ui_chellange/src/ui_challenge_nine/home_nine.dart';
import 'package:flutter_ui_chellange/src/ui_challenge_one/homeOne.dart';
import 'package:flutter_ui_chellange/src/ui_challenge_seven/home_seven.dart';
import 'package:flutter_ui_chellange/src/ui_challenge_ten/home_ten.dart';
import 'package:flutter_ui_chellange/src/ui_challenge_three/homeThree.dart';
import 'package:flutter_ui_chellange/src/ui_challenge_two/homeTow.dart';

import '../ui_challenge_six/home_six.dart';

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
    'UI Ten',
  ];

  final uiPage=[
    HomeOne(),
    HomeTwo(),
    HomeThree(),
    HomeFour(),
    HomeFive(),
    HomeSix(),
    HomeSeven(),
    HomeEight(),
    HomeNine(),
    HomeTen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter UI Challenge"),
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
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>uiPage[index]));
        },
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.blueGrey.shade900
              ]
            )
          ),
          child: Text(name, style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: CupertinoColors.white),),
        ),
      ),
    );
  }
}
