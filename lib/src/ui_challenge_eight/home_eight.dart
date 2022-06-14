import 'package:flutter/material.dart';
import 'package:flutter_ui_chellange/src/ui_challenge_eight/detailsItem.dart';

class HomeEight extends StatefulWidget {
  const HomeEight({Key? key}) : super(key: key);

  @override
  State<HomeEight> createState() => _HomeEightState();
}

class _HomeEightState extends State<HomeEight> {

  var selectedItem=0;

  List<String> tabItem=[
    'Stylish',
    'Classic',
    'Fashion',
    'Common',
    'Top Rated',
    'Top Sales'
  ];

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
          child: Column(
            children: [

              //appbar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'For You',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 36
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      boxShadow: shadows,
                      color: Colors.grey[300]
                    ),
                    child: const Icon(Icons.home),
                  )
                ],
              ),

              //image
              const SizedBox(height: 20,),
              Stack(
                clipBehavior: Clip.none, alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    width: size.width,
                    height: size.height*0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://cdn.britannica.com/17/83817-050-67C814CD/Mount-Everest.jpg'
                        ),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  Positioned(
                    bottom: -size.height*0.08,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 16),
                      width: size.width*0.82,
                      height: size.height*0.15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        color: Colors.grey[300],
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade500,
                              offset: const Offset(4,4),
                              blurRadius: 16,
                              spreadRadius: 1
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'FITTETED',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[600]
                            ),
                          ),
                          Text(
                            'Health-Yoga-Beginner',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: Colors.grey[900]
                            ),
                          ),
                          Text(
                            'A survival team of yoga zone',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[600]
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),

              //tab bar
              SizedBox(height: size.height*0.12,),
              SizedBox(
                height: size.height*0.12,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: tabItem.length,
                  itemBuilder: (context, index){
                    return Column(
                      children: [
                        Container(),
                        buildTabItem(index),
                      ],
                    );
                  },
                ),
              ),

              //list item
              Expanded(
                child: SizedBox(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index){
                      return buildItem();
                    },
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }

  Widget buildTabItem(int index){
    return Padding(
      padding: const EdgeInsets.only(right: 16, top: 16),
      child: InkWell(
        onTap: (){
          setState(() {
            selectedItem=index;
          });
        },
        borderRadius: BorderRadius.circular(4),
        child: Container(
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 4),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              boxShadow: selectedItem==index ? shadows : null,
              color: Colors.grey[300]
          ),
          child: Text(
            tabItem[index],
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildItem(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const DetailsItem()));
        },
        borderRadius: BorderRadius.circular(4),
        child: Card(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.grey[300]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Health Yoga',
                  style: TextStyle(
                    fontSize: 26,
                  ),
                ),
                Text(
                  'Explore with your best',
                  style: TextStyle(
                  ),
                ),
                Text(
                  'Balance of Body and Mind',
                  style: TextStyle(
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  final List<BoxShadow> shadows=[
    BoxShadow(
      color: Colors.grey.shade500,
      offset: const Offset(4,4),
      blurRadius: 16,
      spreadRadius: 1
    ),
    const BoxShadow(
        color: Colors.white,
        offset: Offset(-4,-4),
        blurRadius: 16,
        spreadRadius: 1
    )
  ];
}
