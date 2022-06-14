import 'package:flutter/material.dart';


class HomeNine extends StatefulWidget {
  const HomeNine({Key? key}) : super(key: key);

  @override
  State<HomeNine> createState() => _HomeNineState();
}

class _HomeNineState extends State<HomeNine> {

  var status=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: SafeArea(
        child: Stack(
          children: [
            buildMenu(),
            buildHome(),
          ],
        ),
      ),
    );
  }

  Widget buildMenu(){
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [

            //profile section
            CircleAvatar(
              backgroundImage: NetworkImage('https://cdn.britannica.com/17/83817-050-67C814CD/Mount-Everest.jpg',),
              radius: 50,
            ),
            SizedBox(height: 8,),
            Text(
              'Rifat Hossain',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: Colors.white),
            ),
            Text(
              'Flutter App Developer',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey),
            ),

            //menu section
            Spacer(),
            Text('Home' ,style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.grey),),
            SizedBox(height: 16,),
            Text('About' ,style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.grey),),
            SizedBox(height: 16,),
            Text('Contact' ,style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.grey),),
            SizedBox(height: 16,),
            Text('Share' ,style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.grey),),
            Spacer(),
            Text('Logout' ,style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),),
          ],
        ),
      ),
    );
  }

  Widget buildHome(){
    return AnimatedPositioned(
      top: status? 60 : 0,
      bottom: status? 60 : 0,
      left: status? 200 : 0,
      right: status? -150 : 0,

      child: Container(
        padding: EdgeInsets.only(bottom: 10, top: 5),
        decoration: BoxDecoration(
          borderRadius: status ? BorderRadius.circular(20) : BorderRadius.zero,
          color: Colors.white
        ),
        child: Column(
          children: [

            //appbar
            Row(
              children: [
                IconButton(
                  onPressed: (){
                    setState(() {
                      status =! status;
                    });
                  },
                  icon: Icon(Icons.menu),
                ),
                Text(
                  'Side Navigation ',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: Colors.black.withOpacity(0.8)),
                )
              ],
            ),

            SizedBox(height: 10 ,),

            //body
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 20,
                itemBuilder: (context, index){
                  return buildImage();
                },
              ),
            )
          ],
        ),
      ),
      duration: Duration(seconds: 1),
    );
  }

  Widget buildImage(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage(
              'https://images.unsplash.com/photo-1611329532992-0b7ba27d85fb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bW91bnR8ZW58MHx8MHx8&w=1000&q=80',
            ),
            fit: BoxFit.cover
          )
        ),
      ),
    );
  }
}
