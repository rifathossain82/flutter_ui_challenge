import 'package:flutter/material.dart';

class FirstTab extends StatefulWidget {
  const FirstTab({Key? key}) : super(key: key);

  @override
  State<FirstTab> createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(44),
            child: Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: TabBar(
                isScrollable: false,
                labelColor: Colors.black54,
                unselectedLabelColor: Colors.black26,
                labelStyle: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600
                ),
                unselectedLabelStyle: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500
                ),
                indicatorColor: Colors.transparent,
                tabs: [
                  Tab(
                    child: Text('Recomendation'),
                  ),
                  Tab(
                    child: Text('Best Seller'),
                  )
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Recommendation(),
              BestSeller(),
            ],
          ),
        ),
      ),
    );
  }
}


class Recommendation extends StatefulWidget {
  const Recommendation({Key? key}) : super(key: key);

  @override
  State<Recommendation> createState() => _RecommendationState();
}

class _RecommendationState extends State<Recommendation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              width: 200,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xffedf7fb),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: (){

                      },
                      icon: Icon(Icons.favorite_border, color: Colors.blue.shade500,),
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 200,
                    child: Image.network(
                      'https://github.com/SujoySarkar/SujoySarkar-Flutter-Ui-Challenge/blob/master/plant_app%20UI/assets/alphaplant.png?raw=true',
                    ),
                  ),
                  Container(
                    width: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Alphabet', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: Colors.blue[900]),),
                        SizedBox(height: 2,),
                        Text('\$ 50.48', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22,  color: Colors.blue[900]),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class BestSeller extends StatefulWidget {
  const BestSeller({Key? key}) : super(key: key);

  @override
  State<BestSeller> createState() => _BestSellerState();
}

class _BestSellerState extends State<BestSeller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}

