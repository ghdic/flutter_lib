import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:myflutter/screen/home_screen.dart';
import 'package:myflutter/screen/myaboutdialog_screen.dart';
import 'package:myflutter/screen/myaboutlisttile.dart';

void main() {
  runApp(CalendarControllerProvider(
      controller: EventController(),
      child: MaterialApp(
        routes: {
          '/': (context) => HomeScreen(),
          // docs widget 공부
          '/aboutdialog': (context) => MyAboutDialogScreen(),
          '/aboutlisttile': (context) => MyAboutListTile(),

          // 재미로 만드는 스크린
          '/escapeMouse': (copntext) => HomeScreen()
        },
        initialRoute: '/aboutlisttile',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
      )));
}
