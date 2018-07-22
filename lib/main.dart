import 'package:flutter/material.dart';
import 'package:sqflite_mvp/Pages/HomePage.dart';
import 'package:sqflite_mvp/Pages/LoginPage.dart';

void main() => runApp(new MyApp());

final routes = {
  '/login': (BuildContext context) => new LoginPage(),
  '/home': (BuildContext context) => new HomePage(),
  '/': (BuildContext context) => new LoginPage(),
};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Sqflite MVP app",
      theme: new ThemeData(primarySwatch: Colors.teal),
      routes: routes,
    );
  }
}
