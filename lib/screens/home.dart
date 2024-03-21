import 'package:flutter/material.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(mainAxisAlignment:MainAxisAlignment.start, 
        children: [
          Image.asset('assets/reposight_logo.jpg',
          fit: BoxFit.contain,
          height: 50,)
        ],) ,
      ),
      body: const Text("Welcome to home page"),
    );
  }
}