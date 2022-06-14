
import 'package:flutter/material.dart';
import 'package:flutter_ui_chellange/src/ui_challenge_three/nextThree.dart';

class HomeThree extends StatelessWidget {
  const HomeThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(20, 67, 62, 1),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height*0.38,
              width: size.width,
              child: Image.network('https://github.com/SujoySarkar/SujoySarkar-Flutter-Ui-Challenge/blob/master/ui_challenge_three/Asset/cleaner.png?raw=true')
            ),

            SizedBox(height: size.height*0.06),
            const Text(
              "Provide You",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 40,
                color:Color(0xffffffff),
              ),
            ),
            SizedBox(height: size.height*0.004,),
            Text(
              "Best Cleaning",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 40,
                color:const Color(0xffffffff),
                shadows: [
                  Shadow(
                    offset: const Offset(0.00,3.00),
                    color: const Color(0xff000000).withOpacity(0.16),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height*0.004,),
            const Text(
              "Service",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 40,
                color:Color(0xffffffff),
              ),
            ),

            SizedBox(height: size.height*0.06,),
            buildButton(size, context),
          ],
        ),
      ),
    );
  }

  Widget buildButton(Size size, BuildContext context){
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const NextThree()));
      },
      child: Container(
        width: size.width*0.4,
        height: size.height*0.06,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xffff9b04),
          border: Border.all(width: 1.00, color: const Color(0xff707070),),
        ),
        child: const Text(
          "GO",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 33,
            color:Color(0xffffffff),
          ),
        ),
      ),
    );
  }
}
