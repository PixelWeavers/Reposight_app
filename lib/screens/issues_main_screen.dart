import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IssuesView extends StatefulWidget {
  const IssuesView({super.key});

  @override
  State<IssuesView> createState() => _IssuesViewState();
}

class _IssuesViewState extends State<IssuesView> {
  String appTitle = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
        elevation: 0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/github_issues.svg',
                color: Colors.white70,
              ),
              backgroundColor: Colors.black,
              label: "Issues"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search_rounded,
                color: Colors.white70,
              ),
              backgroundColor: Colors.black,
              label: "Explore"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_4_outlined),
              backgroundColor: Colors.black,
              label: "Profile")
        ],
      ),
    );
  }
}
