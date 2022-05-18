import 'package:flutter/material.dart';
import 'package:flutter_ui_chellange/src/ui_challenge_one/homeOne.dart';
import 'package:flutter_ui_chellange/src/ui_challenge_three/homeThree.dart';
import 'package:flutter_ui_chellange/src/ui_challenge_two/homeTow.dart';

class Homepage extends StatelessWidget {
  Homepage({Key? key}) : super(key: key);

  final buttonName=[
    'UI One',
    'UI Two',
    'UI Three',
    'UI Four',
  ];

  final uiPage=[
    HomeOne(),
    HomeTwo(),
    HomeThree(),
    HomeOne(),
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
