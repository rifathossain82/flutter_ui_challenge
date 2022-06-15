import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_ui_chellange/src/ui_challenge_ten/tabs/firstTab.dart';

class HomeTen_ extends StatelessWidget {
  const HomeTen_({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey,
        leading: IconButton(
          onPressed: (){

          },
          icon: Icon(Icons.menu),
        ),
        title: Text('Sam\' Garden', style: TextStyle(fontStyle: FontStyle.italic),),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: (){

            },
            icon: Icon(Icons.notifications),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 16, left: 16, top: 16),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Color(0xffedf7fb)
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search your plant',
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  suffixIcon: Icon(Icons.keyboard_voice)
                ),
              ),
            ),
            SizedBox(height: 16,),
            Expanded(flex: 3,child: FirstTab()),
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}
