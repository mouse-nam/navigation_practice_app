// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_drawer.dart';
import 'state/globalstate.dart';

class AboutScreen extends StatefulWidget {
  static const routeName = '/about';
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    // final allusers = Provider.of<GlobalState>(context).users;
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text("About"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Consumer<GlobalState>(
          builder: (ctx, data, child) {
            return ListView.builder(
              itemCount: data.users.length,
              itemBuilder: (ctx, i) {
                var datas = data.users[i];
                return Padding(
                  padding: EdgeInsets.all(10),
                  child: Card(
                    child: Column(
                      children: [
                        Text(
                          datas.id,
                          style: TextStyle(fontSize: 22),
                        ),
                        Text(
                          datas.username,
                          style: TextStyle(fontSize: 22),
                        ),
                        Text(
                          datas.fullname,
                          style: TextStyle(fontSize: 22),
                        ),
                        Text(
                          datas.email,
                          style: TextStyle(fontSize: 22),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
