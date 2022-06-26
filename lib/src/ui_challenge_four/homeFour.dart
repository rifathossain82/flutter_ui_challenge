import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeFour extends StatelessWidget {
  const HomeFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    colors: [
                      Colors.pink,
                      Colors.purpleAccent
                    ]
                  ),
                ),
                child: Stack(
                  clipBehavior: Clip.none, alignment: Alignment.bottomCenter,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.menu, color: Colors.white,),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white,
                              ),
                              child: Icon(Icons.shopping_cart, color: Colors.pink,),
                            ),
                          ],
                        ),
                        SizedBox(height: 8,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Men Shoe',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color:Color(0xffffffff),
                              ),
                            ),
                            Text(
                              '* 4.5',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color:Color(0xffffffff),
                              ),
                            ),
                            Text(
                              'Size - 9',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color:Color(0xffffffff),
                              ),
                            ),
                            Text(
                              'Brand - Addidas',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color:Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: -70,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0.00,3.00),
                                  color: Color(0xff000000).withOpacity(0.16),
                                  blurRadius: 10,
                                ),
                              ]
                            ),
                            child: Icon(Icons.favorite_outlined, color: Colors.pink,),
                          ),
                          SizedBox(width: 60,),
                          Container(
                            height: 170,
                            child: Image.network("https://ya-webdesign.com/transparent250_/adidas-shoes-png.png"),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    //section description
                    SizedBox(height: 70,),
                    Text(
                      'Description',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      'It\'s a new branded addidas shoe. This is specially for sports players. It has only one colour.',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black.withOpacity(0.6),
                      ),
                    ),

                    //section quantity
                    SizedBox(height: 24,),
                    Text(
                      'Quantity',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                    SizedBox(height: 8,),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 30,
                          width: 60,
                          color: Colors.grey.withOpacity(0.5),
                          child: Icon(CupertinoIcons.minus),
                        ),
                        SizedBox(width: 1,),
                        Container(
                          alignment: Alignment.center,
                          height: 30,
                          width: 60,
                          color: Colors.grey.withOpacity(0.5),
                          child: Text(
                            '1',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(width: 1,),
                        Container(
                          alignment: Alignment.center,
                          height: 30,
                          width: 60,
                          color: Colors.grey.withOpacity(0.5),
                          child: Icon(CupertinoIcons.plus),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [

                  SizedBox(width: 12,),

                  //price here
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '100',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 36,
                            color: Colors.pink,
                          ),
                        ),
                        TextSpan(
                          text: '  \$',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.pink,
                          ),
                        ),
                      ]
                    ),
                  ),

                  Spacer(),

                  //buy now button
                  Container(
                    alignment: Alignment.center,
                    height: size.height/8,
                    width: size.width*0.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(40),),
                        color: Colors.pink
                    ),
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 26,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}