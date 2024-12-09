import 'package:flutter/material.dart';
import 'package:shop_app/home_screen.dart';

import 'about_screen.dart';
import 'assignement_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        AboutScreen.routeName: (context) => AboutScreen(),
        AssignmentScreen.routeName: (context) => AssignmentScreen(),
      },
    );
  }
}
