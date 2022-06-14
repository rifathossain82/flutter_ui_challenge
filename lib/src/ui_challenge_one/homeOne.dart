import 'package:flutter/material.dart';

class HomeOne extends StatelessWidget {
  const HomeOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: size.height*0.5,
                width: size.width,
                child: Image.network("https://www.tourneau.com/on/demandware.static/-/Sites-master-catalog/default/dw31c4264c/images/large/wjbb0037-cartier-ballon-bleu-de-cartier-36mm-car0355608.png"),
              ),
              SizedBox(height: size.height*0.03,),
              Expanded(
                child: Stack(
                  clipBehavior: Clip.none, alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "CARTIER",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Color(0xff000000),
                            ),
                          ),
                          Text(
                            "A23456",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              color: Color(0xff4e4848),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "This is a new clock. Lots of facilities.\nIt's a waterproof clock. Real gold effect. Lifetime grantee. Limited Edition.",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Color(0xff514d51),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$165",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 25,
                              color: Color(0xffe510d0),
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xffeceaea), width: 5),
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(50),
                            topLeft: Radius.circular(50)
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -30,
                      child: FloatingActionButton(
                        onPressed: (){},
                        child: Image.network("https://github.com/SujoySarkar/SujoySarkar-Flutter-Ui-Challenge/blob/master/ui_challenge_one/images/plus.png?raw=true"),
                      )
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
