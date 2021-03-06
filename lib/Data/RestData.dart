import 'dart:async';

import 'package:sqflite_mvp/Model/User.dart';
import 'package:sqflite_mvp/Utils/NetworkUtils.dart';

class RestData {
  NetworkUtil _netUtil = new NetworkUtil();
  static final BASE_URl = "";
  static final LOGIN_URL = BASE_URl + "/";

  Future<User> login(String username, String password) {
    return new Future.value(new User(username, password));
  }
}
