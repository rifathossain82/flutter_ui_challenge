import 'package:flutter/material.dart';
import 'package:flutter_ui_chellange/src/ui_challenge_two/model/taskData.dart';

class HomeTwo extends StatelessWidget {
  HomeTwo({Key? key}) : super(key: key);
  
  
  var task=[
    TaskData('Walk', 'Walk for 30 minutes in\na new rural area ', 'If you are not in a rural area\nthen at first you have to go in a rural area. Then take a stopwatch and walk for 30 minutes. Remember don\'t take any rest while you arewalking.'),
    TaskData('Walk', 'Walk for 30 minutes in\na new rural area ', 'If you are not in a rural area\nthen at first you have to go in a rural area. Then take a stopwatch and walk for 30 minutes. Remember don\'t take any rest while you arewalking.'),
    TaskData('Walk', 'Walk for 30 minutes in\na new rural area ', 'If you are not in a rural area\nthen at first you have to go in a rural area. Then take a stopwatch and walk for 30 minutes. Remember don\'t take any rest while you arewalking.'),
    TaskData('Walk', 'Walk for 30 minutes in\na new rural area ', 'If you are not in a rural area\nthen at first you have to go in a rural area. Then take a stopwatch and walk for 30 minutes. Remember don\'t take any rest while you arewalking.'),
    TaskData('Walk', 'Walk for 30 minutes in\na new rural area ', 'If you are not in a rural area\nthen at first you have to go in a rural area. Then take a stopwatch and walk for 30 minutes. Remember don\'t take any rest while you arewalking.'),
  ];

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(0, 196, 192, 1),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "My Task",
                    style: TextStyle(
                      fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                      fontSize: 45,
                      color:Color(0xffffffff),
                    ),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.network('https://github.com/SujoySarkar/SujoySarkar-Flutter-Ui-Challenge/blob/master/ui_challenge_two/images/woman.png?raw=true'),
                    ),
                  )
                ],
              ),
              const Text(
                "You have 3 task today",
                style: TextStyle(
                  fontFamily: "Segoe UI",
                  fontSize: 20,
                  color:Color(0xfffbfbfb),
                ),
              ),
              SizedBox(height: size.height/12,),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context,index){
                    return buildTask(task[index], size);
                  },
                ),
              ),
              SizedBox(height: size.height/14,),
              Align(
                alignment: Alignment.bottomCenter,
                child: FloatingActionButton(
                  onPressed: (){

                  },
                  backgroundColor: Colors.white,
                  child: const Icon(Icons.add,size: 40,color: Color.fromRGBO(0, 196, 192, 1),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget buildTask(TaskData data, Size size){
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: Container(
        height: size.height/2,
        width: size.width/1.5,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
               const Text(
                "Walk",
                style: TextStyle(
                  fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color:Color(0xff00c4c0),
                ),
              ),
              SizedBox(height: size.height/20,),
               const Text(
                "Walk for 30 minutes in\na new rural area ",
                style: TextStyle(
                  fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color:Color(0xff040404),
                ),
              ),
              SizedBox(height: size.height/22,),
              const Text(
                "If you are not in a rural area\nthen at first you have to go in a rural area. Then take a stopwatch and walk for 30 minutes. Remember don't take any rest while you arewalking.",
                style: TextStyle(
                  fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color:Color(0xff717473),
                ),
              ),
              SizedBox(height: size.height/22,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    "3 Comments",
                    style: TextStyle(
                      fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color:Color(0xff00c4c0),
                    ),
                  ),
                  Icon(Icons.arrow_forward,size: 25,
                    color: Color.fromRGBO(0, 196, 192, 1),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
