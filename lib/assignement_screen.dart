// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shop_app/home_screen.dart';

class AssignmentScreen extends StatefulWidget {
  static const routeName = '/assignment';
  const AssignmentScreen({super.key});

  @override
  State<AssignmentScreen> createState() => _AssignmentScreenState();
}

class _AssignmentScreenState extends State<AssignmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assignment"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
          },
          child: Text("Home"),
        ),
      ),
    );
  }
}
