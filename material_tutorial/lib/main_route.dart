import 'package:flutter/material.dart';
import 'package:material_tutorial/screen/about_screen.dart';
import 'package:material_tutorial/screen/home_screen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const HomeScreen(),
      '/about': (context) => const AboutScreen()
    },
    theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        brightness: Brightness.light,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.lightBlueAccent),
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.lightBlueAccent, centerTitle: true),
        fontFamily: 'dancingscript',
        textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 30),
            headline2: TextStyle(fontSize: 25),
            bodyText1: TextStyle(fontSize: 20))),
    //debugShowCheckedModeBanner: false,
  ));
}
