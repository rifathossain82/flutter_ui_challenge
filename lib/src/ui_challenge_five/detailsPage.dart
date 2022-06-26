import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DetailsFive extends StatelessWidget {
  const DetailsFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height*0.5,
            width: size.width,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(30), bottomLeft: Radius.circular(30))
            ),
            child: Stack(
              clipBehavior: Clip.none, alignment: Alignment.bottomCenter,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                              child: Icon(
                                Icons.arrow_back_rounded,
                                color: Colors.white,
                              )
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white
                            ),
                            child: Icon(Icons.shopping_cart),
                          )
                        ],
                      ),
                      SizedBox(height: size.height*0.01,),
                      Text(
                        'Mango',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 26,
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                      SizedBox(height: size.height*0.005,),
                      Text(
                        'From',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                      Text(
                        '\$ 10',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                      SizedBox(height: size.height*0.005,),
                      Row(
                        children: [
                          Text(
                            'Size',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.8),
                            ),
                          ),
                          Text(
                            'Medium',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.8),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: -50,
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white
                        ),
                        child: Icon(Icons.favorite_outline),
                      ),
                      SizedBox(width: 70,),
                      SizedBox(
                        height: 200,
                        width: 200,
                        child: Image.network(
                          'http://assets.stickpng.com/images/580b57fcd9996e24bc43c15d.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 50),
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

                SizedBox(height: size.height*0.03,),

                Text(
                  'Details',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Colors.black.withOpacity(0.8),
                  ),
                ),
                SizedBox(height: size.height*0.01,),
                Text(
                  'Weight: 1 kg',
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
      ),
    );
  }
}
