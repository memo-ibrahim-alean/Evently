import 'package:evently/core/theme/color_palette.dart';
import 'package:evently/modules/layout/home_tab.dart';
import 'package:flutter/material.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int selectedIndex = 0;
  List<Widget> tabs = [
    const HomeTab(),
    const SizedBox(),
    const SizedBox(),
    const SizedBox(),
    const SizedBox(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(
          side: BorderSide(
            color: ColorPalette.white,
            width: 5,
          ),
        ),
        backgroundColor: ColorPalette.primaryColor,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: ColorPalette.white,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorPalette.primaryColor,
        selectedItemColor: ColorPalette.white,
        unselectedItemColor: ColorPalette.white,
        currentIndex: selectedIndex,
        onTap: _onBtnNavBarItemTapped,
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.location_on),
            icon: Icon(Icons.location_on_outlined),
            label: 'Maps',
          ),
          BottomNavigationBarItem(
            icon: SizedBox.shrink(),
            label: '',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.favorite),
            icon: Icon(Icons.favorite_border_outlined),
            label: 'Likes',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.person),
            icon: Icon(Icons.person_outline_rounded),
            label: 'Profile',
          ),
        ],
      ),
      body: tabs[selectedIndex],
    );
  }

  _onBtnNavBarItemTapped(int index) {
    if (index == 2) return;
    selectedIndex = index;
    setState(() {});
  }
}
