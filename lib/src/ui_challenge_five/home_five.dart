import 'package:flutter/material.dart';


import 'detailsPage.dart';
import 'tabbarPages/page1.dart';
import 'tabbarPages/page2.dart';
import 'tabbarPages/page3.dart';
import 'tabbarPages/page4.dart';
import 'tabbarPages/page5.dart';
import 'tabbarPages/page6.dart';

class HomeFive extends StatefulWidget {
  HomeFive({Key? key}) : super(key: key);

  @override
  State<HomeFive> createState() => _HomeFiveState();
}

class _HomeFiveState extends State<HomeFive> with SingleTickerProviderStateMixin{

  List<Tab> tabs=[
    Tab(text: 'Top'),
    Tab(text: 'Fruits'),
    Tab(text: 'Flower'),
    Tab(text: 'Nature'),
    Tab(text: 'Most Search'),
    Tab(text: 'Popular'),
  ];

  var pages=[
    Page1(),
    Page2(),
    Page3(),
    Page4(),
    Page5(),
    Page6(),
  ];

  PageController controller=PageController(
    initialPage: 1
  );

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(size.height/4),
          child: AppBar(
            leading: Icon(Icons.menu, color: Colors.blue,),
            actions: [
              IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsFive()));}, icon: Icon(Icons.shopping_cart, color: Colors.blue,))
            ],
            elevation: 0,
            backgroundColor: Colors.transparent,
            flexibleSpace: Container(
              padding: EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Top Items',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                      color: Colors.black.withOpacity(0.8),
                    ),
                  ),
                ],
              ),
            ),
            bottom: TabBar(
              isScrollable: true,
              labelColor: Colors.black,
              labelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              unselectedLabelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              tabs: tabs,
            ),
          ),
        ),
        body: TabBarView(
          children: pages,
        ),
      ),
    );
  }
}
