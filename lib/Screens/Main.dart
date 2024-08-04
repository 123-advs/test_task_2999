import 'package:flutter/material.dart';
import 'package:test_task_2999/Screens/Drawer/Drawer.dart';
import 'package:test_task_2999/Screens/Home.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      drawer: DrawerScreen(),
      body: HomeScreen(
      ),
    );
  }
}