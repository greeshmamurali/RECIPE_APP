import 'package:flutter/material.dart';
import 'package:sample_29/utils/constants/color_constants.dart';

class Bottomnavbarscreen extends StatefulWidget {
  const Bottomnavbarscreen({super.key});

  @override
  State<Bottomnavbarscreen> createState() => _BottomnavbarscreenState();
}

class _BottomnavbarscreenState extends State<Bottomnavbarscreen> {
   int selectin = 0;
    List screens = [
      Container(
        color: Colors.green,
      ),
      Container(
        color: Colors.red,
      ),
      Container(
        color: Colors.brown,
      ),
      Container(
        color: Colors.orange,
      ),
    ];
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: screens[selectin],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: ColorConstants.PRIMARY_COLOR,
        shape: CircleBorder(),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            selectin = value;
            setState(() {
              
            });
          },
          currentIndex: selectin,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_outline),
                activeIcon: Icon(Icons.bookmark),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none_outlined),
                activeIcon: Icon(Icons.notifications_active),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                activeIcon: Icon(Icons.person),
                label: ''),
          ]),
    );
  }
}
