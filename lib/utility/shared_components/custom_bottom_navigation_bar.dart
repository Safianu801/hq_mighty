import 'package:flutter/material.dart';
import 'package:myti_hq/features/bottom_navigation_screens/BookMarks/screens/book_mark_screen.dart';
import 'package:myti_hq/features/bottom_navigation_screens/Home/screens/home_screen.dart';
import 'package:myti_hq/utility/constants/app_color.dart';

import '../../features/bottom_navigation_screens/Notification/notification_screen.dart';
import '../../features/bottom_navigation_screens/Profile/screen/profile_screen.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {

  List<Widget> bottomNavScreen = [
    const HomeScreen(),
    const BookMarkScreen(),
    const ProfileScreen(),
  ];
  int _currentScreen = 0;

  void onScreenSelected(int index) {
    setState(() {
      _currentScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomNavScreen[_currentScreen],
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentScreen,
        onTap: onScreenSelected,
        selectedItemColor: const Color(AppColor.primaryColor),
        unselectedItemColor: Colors.grey,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 22,
              width: 22,
              child: Image.asset("images/feather-smartphone.png", color: const Color(AppColor.primaryColor),),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: SizedBox(
                height: 22,
                width: 22,
                child: Image.asset("images/bookmark_outlined.png", color: const Color(AppColor.primaryColor),),
              ),
              label: "BookMark"),
          BottomNavigationBarItem(
            icon: Container(
              height: 35,
              width: 35,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(AppColor.secondaryColor),
                  border: Border.all(color: _currentScreen == 4 ? const Color(AppColor.secondaryColor) : Colors.transparent)
              ),
              child: const Center(
                child: Text(
                  "SM",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ),
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
