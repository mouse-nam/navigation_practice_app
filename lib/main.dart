import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/home_screen.dart';
import 'package:shop_app/state/globalstate.dart';

import 'about_screen.dart';
import 'assignement_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => GlobalState(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
          routes: {
            HomeScreen.routeName: (ctx) => HomeScreen(),
            AboutScreen.routeName: (ctx) => AboutScreen(),
            AssignmentScreen.routeName: (ctx) => AssignmentScreen(),
          }),
    );
  }
}
