// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shop_app/home_screen.dart';

class AboutScreen extends StatefulWidget {
  static const routeName = '/about';
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
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
