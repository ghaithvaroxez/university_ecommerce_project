import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';


class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 1,
      child: Container(
        width: MediaQuery.of(context).size.width - 10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
        ),
        child: FancyBottomNavigation(
          initialSelection: 1,
          activeIconColor: Colors.white,
          inactiveIconColor: Colors.grey.withOpacity(0.6),
          circleColor: Colors.blue,
          textColor: Colors.grey.withOpacity(0.5),
          tabs: [
            TabData(iconData: Icons.favorite_border, title: "Favorite"),
            TabData(iconData: Icons.home_outlined, title: "Home"),
            TabData(
              iconData: Icons.shopping_cart_outlined,
              title: "Basket",
            ),

            // TabData(iconData: Icons.search, title: "Search"),
            // TabData(iconData: Icons.notifications_none, title: "Notification"),
          ],
          onTabChangedListener: (position) {
            setState(() {
              var currentPage = position;
            });
          },
        ),
      ),
    );
  }
}
