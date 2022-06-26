import 'package:flutter/material.dart';
import 'package:flutter_ui_chellange/src/ui_challenge_five/detailsPage.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height*0.5,
          width: size.width,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index){
              return buildItem(context, size);
            },
          ),
        ),
        SizedBox(height: size.height*0.02,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Description',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Colors.black.withOpacity(0.8),
                ),
              ),

              SizedBox(height: size.height*0.01,),
              Text(
                'We have both Live environment and Test/Sandbox environment in SSLCOMMERZ. You just need to use proper URL and Store ID\'s to process payments. We provide separate store ID for live and test',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildItem(BuildContext context, Size size){
    return InkWell(
      onTap: (){
        print("hi");
        //Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsFive()));
      },
      child: Padding(
        padding: const EdgeInsets.only( right: 16, bottom: 25, top: 10,left: 16),
        child: Container(
          width: size.width*0.6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.green,
          ),
          child: SingleChildScrollView(
            child: Stack(
              clipBehavior: Clip.none, alignment: Alignment.bottomCenter,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'From',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                      Text(
                        '\$ 05',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 8,),
                      SizedBox(
                        height: 150,
                        width: 150,
                        child: Image.network(
                          'http://assets.stickpng.com/images/580b57fcd9996e24bc43c15d.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 8,),
                      Text(
                        'Mango',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: -55,
                  child: Container(
                    height: 50,
                    width: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: Offset(0.0, 0.3),
                          blurRadius: 6
                        )
                      ]
                    ),
                    child: Icon(Icons.shopping_cart),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
