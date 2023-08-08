import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app_ui/pages/home_page.dart';
import 'package:medical_app_ui/style/app_style.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text("Index 1: Schedule"),
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
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              AppStyle.homeIcon,
              colorFilter: const ColorFilter.mode(
                AppStyle.primarySwatch,
                BlendMode.srcIn,
              ),
            ),
            icon: SvgPicture.asset(AppStyle.homeIcon),
            label: "Home",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              AppStyle.eventIcon,
              colorFilter: const ColorFilter.mode(
                AppStyle.primarySwatch,
                BlendMode.srcIn,
              ),
            ),
            icon: SvgPicture.asset(AppStyle.eventIcon),
            label: "Schedule",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              AppStyle.reportIcon,
              colorFilter: const ColorFilter.mode(
                AppStyle.primarySwatch,
                BlendMode.srcIn,
              ),
            ),
            icon: SvgPicture.asset(AppStyle.reportIcon),
            label: "Report",
          ),
          BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                AppStyle.notificationsIcon,
                colorFilter: const ColorFilter.mode(
                  AppStyle.primarySwatch,
                  BlendMode.srcIn,
                ),
              ),
              icon: SvgPicture.asset(AppStyle.notificationsIcon),
              label: "Notifications"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppStyle.primarySwatch,
        onTap: _onItemTapped,
      ),
    );
  }
}
