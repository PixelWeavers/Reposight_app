import 'package:flutter/material.dart';

class BottomNavItemClass {
  final String title;
  final String route;
  final Icon icon;
  // Move the NavigationProvider class to the top-level

  BottomNavItemClass({
    required this.title,
    required this.route,
    required this.icon,
    
  });
}
  

IconButton BottomNavItem(BottomNavItemClass item){
  return IconButton(onPressed: onPressed, icon: icon)
}
