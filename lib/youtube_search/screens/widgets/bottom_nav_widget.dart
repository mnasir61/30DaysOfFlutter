import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int _navIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedFontSize: 11,
      unselectedFontSize: 11,
      currentIndex: _navIndex,
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.white,
      showUnselectedLabels: true,
      onTap: (index) {
        setState(() {
          _navIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          backgroundColor: Colors.black,
          icon: Icon(Icons.home_outlined),
          label: "Home",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.shop_two_outlined), label: "Shorts"),
        BottomNavigationBarItem(
          icon: Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 1), borderRadius: BorderRadius.circular(20)),
            child: Icon(
              Icons.add,
              size: 30,
            ),
          ),
          label: "Add",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.subscriptions_outlined), label: "Subscriptions"),
        BottomNavigationBarItem(icon: Icon(Icons.video_library_outlined), label: "Library"),
      ],
    );
  }
}
