import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class BottomNavItemClass {
  final String title;
  final String route;
  final Icon icon;

  BottomNavItemClass({
    required this.title,
    required this.route,
    required this.icon,
  });
}

class NavigationProvider extends ChangeNotifier {
  int? _currentIndex = 0;
  int? get currentIndex => _currentIndex;
}
