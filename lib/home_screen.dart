// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shop_app/about_screen.dart';
import 'package:shop_app/assignement_screen.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AboutScreen.routeName);
              },
              child: Text("About"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AssignmentScreen.routeName);
              },
              child: Text("Assignment"),
            ),
          ],
        ),
      ),
    );
  }
}
