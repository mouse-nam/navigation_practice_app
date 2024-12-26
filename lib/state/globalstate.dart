// ignore_for_file: prefer_final_fields

import 'package:flutter/cupertino.dart';
import 'package:shop_app/state/user.dart';

class GlobalState with ChangeNotifier {
  List<User> _user = [
    User(
      id: 'u1',
      username: 'username_1',
      fullname: 'fullname_1',
      email: 'email_1',
    ),
    User(
      id: 'u2',
      username: 'username_2',
      fullname: 'fullname_2',
      email: 'email_2',
    ),
    User(
      id: 'u3',
      username: 'username_3',
      fullname: 'fullname_3',
      email: 'email_3',
    ),
    User(
      id: 'u4',
      username: 'username_4',
      fullname: 'fullname_4',
      email: 'email_4',
    ),
  ];
  List<User> get users {
    return [..._user];
  }

  void addUsers(User user) {
    final newUser = User(
      id: DateTime.now().toString(),
      username: user.username,
      fullname: user.fullname,
      email: user.email,
    );
    _user.add(newUser);
    notifyListeners();
  }
}
