import 'package:flutter/material.dart';
import 'package:flutter_ui_chellange/src/ui_challenge_ten/pages/cart.dart';
import 'package:flutter_ui_chellange/src/ui_challenge_ten/pages/favourite.dart';
import 'package:flutter_ui_chellange/src/ui_challenge_ten/pages/home.dart';
import 'package:flutter_ui_chellange/src/ui_challenge_ten/pages/settings.dart';

class HomeTen extends StatefulWidget {
  const HomeTen({Key? key}) : super(key: key);

  @override
  State<HomeTen> createState() => _HomeTenState();
}

class _HomeTenState extends State<HomeTen> {

  var selectedItem=0;
  var pages=[
    HomeTen_(),
    CartTen(),
    FavouriteTen(),
    SettingsTen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: (value){
          setState(() {
            selectedItem=value;
          });
        },
        currentIndex: selectedItem,
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.shopping_cart)
          ),
          BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.favorite)
          ),
          BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.settings)
          ),
        ],
      ),
      body: pages[selectedItem],
    );
  }
}
