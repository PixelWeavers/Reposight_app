import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reposight/screens/issues_main_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: IssuesView(),
      bottomNavigationBar: BottomNavigationBar(items: items),
    );
  }
}
