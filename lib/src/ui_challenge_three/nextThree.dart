import 'package:flutter/material.dart';

class NextThree extends StatelessWidget {
  const NextThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(239, 240, 241, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(onTap:(){Navigator.pop(context);},child: const Icon(Icons.arrow_back_rounded, color: Colors.black54,)),
        actions: const [
          Icon(Icons.notifications, color: Colors.black,),
          SizedBox(width: 16,)
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Column(
              children: [
                SizedBox(
                  width: size.width,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.network(
                            'https://github.com/SujoySarkar/SujoySarkar-Flutter-Ui-Challenge/blob/master/ui_challenge_three/Asset/download.jpg?raw=true'
                        )
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height*0.01,),
                const Text(
                  "Afran Nisho",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color:Color(0xff000000),
                  ),
                ),
                const Text(
                  "@afran",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color:Color(0xff525858),
                  ),
                ),

                SizedBox(height: size.height*0.05,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildRoomName('Bedroom'),
                    buildRoomName('Bathroom'),
                  ],
                ),
                SizedBox(height: size.height*0.015,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildCounter(),
                    buildCounter(),
                  ],
                ),
              ],
            ),
          ),

          Expanded(
            flex: 4,
            child: buildDayTime(size)
          ),

        ],
      ),
    );
  }

  Widget buildRoomName(String name){
    return Text(
      name,
      style: const TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 20,
        color:Color(0xff525858),
      ),
    );
  }

  Widget buildCounter(){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xffffffff),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0.00,3.00),
            color: const Color(0xff000000).withOpacity(0.16),
            blurRadius: 6,
          ),
        ],
      ),
      child: Row(
        children: const [
          Text(
            "-",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 29,
              color:Color(0xff525858),
            ),
          ),
          SizedBox(width: 16,),
          Text(
            "1",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 27,
              color:Color(0xfff300bb),
            ),
          ),
          SizedBox(width: 16,),
          Text(
            "+",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 29,
              color:Color(0xff525858),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDayTime(Size size){
    return Stack(
      clipBehavior: Clip.none, alignment: Alignment.bottomCenter,
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          width: size.width,
          decoration: const BoxDecoration(
              color: Color.fromRGBO(20, 67, 62, 1),
              borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30))
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Day",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  color:Color(0xffffffff),
                ),
              ),
              SizedBox(height: size.height*0.02,),
              SizedBox(
                height: 36,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildDayNumber(size, '1', false),
                    buildDayNumber(size, '2', false),
                    buildDayNumber(size, '3', true),
                    buildDayNumber(size, '4', false),
                    buildDayNumber(size, '5', false),
                    buildDayNumber(size, '6', false),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          child: Container(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
            width: size.width,
            height: size.height*0.16,
            decoration: const BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30))
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Time",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                    color:Color(0xffffffff),
                  ),
                ),
                SizedBox(height: size.height*0.01),
                Row(
                  children: [
                    buildTime(size, '10:00'),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        "-",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                          color:Color(0xffffffff),
                        ),
                      ),
                    ),
                    buildTime(size, '12:00'),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget buildDayNumber(Size size, String number, bool status){
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        height: 36,
        width: 36,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(color: Colors.white.withOpacity(0.5)),
          color: status==true? Colors.orange : Colors.transparent,
        ),
        child: Text(
          number,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color:Color(0xffffffff),
          ),
        ),
      ),
    );
  }

  Widget buildTime(Size size, String time){
    return Container(
      height: size.height*0.06,
      width: size.width*0.3,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.white)
      ),
      child: Text(
        time,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 20,
          color:Color(0xffffffff),
        ),
      ),
    );
  }
}
