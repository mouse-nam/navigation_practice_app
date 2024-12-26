import 'package:flutter/material.dart';
import 'package:shop_app/about_screen.dart';
import 'package:shop_app/home_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: Text("Hello All"),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
            },
          ),
          Divider(),
          ListTile(
            trailing: Icon(Icons.add_box),
            leading: Icon(Icons.add_box),
            title: Text("About"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(AboutScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
