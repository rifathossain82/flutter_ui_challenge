import 'package:flutter/material.dart';
import 'package:flutter_ui_chellange/src/ui_challenge_six/all_song.dart';

class HomeSix extends StatefulWidget {
  HomeSix({Key? key}) : super(key: key);

  @override
  State<HomeSix> createState() => _HomeSixState();
}

class _HomeSixState extends State<HomeSix> {

  var sliderValue=60.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
          child: Column(
            children: [

              //appbar section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                      boxShadow: shadows,
                    ),
                    child: Icon(Icons.arrow_back, color: Colors.grey,),
                  ),
                  Text(
                    'Playing Now',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: Colors.grey),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AllSong()));
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.circle,
                        boxShadow: shadows,
                      ),
                      child: Icon(Icons.menu, color: Colors.grey,),
                    ),
                  ),
                ],
              ),

              //image section
              SizedBox(height: 30,),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  shape: BoxShape.circle,
                  boxShadow: shadows,
                  image: DecorationImage(
                    image: NetworkImage('https://i.pinimg.com/originals/59/0e/7c/590e7c5fae41782918ef186d106193ef.png')
                  )
                ),
              ),
              SizedBox(height: 8,),
              Text(
                'Lose it',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700, color: Colors.grey.shade600),
              ),
              Text(
                'Ft. Nayem Ahmed',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey),
              ),

              //slider
              SizedBox(height: 30,),
              SliderTheme(
                data: SliderThemeData(
                  trackHeight: 5,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12),
                ),
                child: Slider(
                  value: sliderValue,
                  max: 100,
                  min: 10,
                  activeColor: Colors.blue,
                  inactiveColor: Colors.white70,
                  onChanged: (val){
                    setState(() {
                      sliderValue=val;
                    });
                  },
                ),
              ),

              //previous, nex and play-pause button
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                      boxShadow: shadows,
                    ),
                    child: Icon(Icons.arrow_back_ios_outlined, color: Colors.grey,),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                      boxShadow: shadows,
                    ),
                    child: Icon(Icons.pause, color: Colors.white,),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                      boxShadow: shadows,
                    ),
                    child: Icon(Icons.arrow_forward_ios_sharp, color: Colors.grey,),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<BoxShadow> shadows=[
    BoxShadow(
      color: Colors.grey.shade500,
      offset: Offset(4,4),
      blurRadius: 15,
      spreadRadius: 1
    ),
    BoxShadow(
        color: Colors.white,
        offset: Offset(-4,-4),
        blurRadius: 15,
        spreadRadius: 1
    ),

  ];
}
