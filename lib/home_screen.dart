// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shop_app/about_screen.dart';
import 'package:shop_app/assignement_screen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _form = GlobalKey<FormState>();
  String username = "";

  String fullname = "";

  String email = "";

  void onFormSave() {
    final isValid = _form.currentState!.validate();
    if (!isValid) {
      return;
    }
    _form.currentState!.save();
    print(username);
    print(fullname);
    print(email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _form,
            child: ListView(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "UserName",
                  ),
                  onSaved: (value) {
                    username = value!;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter your Username";
                    }
                    return null;
                  },
                  textInputAction: TextInputAction.next,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "FullName",
                  ),
                  onSaved: (value) {
                    fullname = value!;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter your Fullname";
                    }
                    return null;
                  },
                  textInputAction: TextInputAction.next,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Email",
                  ),
                  onSaved: (value) {
                    email = value!;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter your email";
                    }
                    return null;
                  },
                  textInputAction: TextInputAction.done,
                ),
                ElevatedButton(
                  onPressed: () {
                    onFormSave();
                  },
                  child: Text("Submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
