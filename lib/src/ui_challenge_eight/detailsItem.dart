import 'package:flutter/material.dart';

class DetailsItem extends StatelessWidget {
  const DetailsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Stack(
        alignment: Alignment.bottomCenter,
        overflow: Overflow.visible,
        children: [
          SizedBox(
            height: size.height * 0.5,
            child: Image.network(
              'https://cdn.britannica.com/17/83817-050-67C814CD/Mount-Everest.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: -size.height*0.6,
            width: size.width,
            child: Container(
              padding: EdgeInsets.only(left: 16, right: 16, top: 16),
              height: size.height*0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'Health yoga class for beginners',
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
                  ),
                  ListTile(
                    leading: Image.network('https://static.vecteezy.com/system/resources/previews/000/657/165/non_2x/vector-woman-in-yoga-poses.jpg'),
                    title: Text('Men theme yoga morning part'),
                    subtitle: Text('Morning exercise'),
                  ),
                  Text(
                    'Yoga is a group of physical, mental, and spiritual practices or disciplines which originated in ancient.',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Read more...',
                    style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('24 lessons', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                            Text('3 weeks . 1-3 lavel'),
                          ],
                        ),
                      ),
                      Container(
                        height: 55,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.orange,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Start',
                              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20, color: Colors.white),
                            ),
                            Icon(Icons.play_circle_fill_outlined, size: 50, color: Colors.white,)
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
