import 'package:car_sales_app_ui/pages/home_page.dart';
import 'package:car_sales_app_ui/pages/search_page.dart';
import 'package:car_sales_app_ui/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SearchPage(),
    Text("Index 2: Report"),
    Text("Index 3: Notifications")
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon:
                SvgPicture.asset(AppStyle.homeIcon, colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn)),
            icon: SvgPicture.asset(AppStyle.homeIcon),
            label: "Home",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(AppStyle.searchIcon,
                colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn)),
            icon: SvgPicture.asset(AppStyle.searchIcon),
            label: "Search",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(AppStyle.favoriteIcon,
                colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn)),
            icon: SvgPicture.asset(AppStyle.favoriteIcon),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(AppStyle.profileIcon,
                colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn)),
            icon: SvgPicture.asset(AppStyle.profileIcon),
            label: "Profile",
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
