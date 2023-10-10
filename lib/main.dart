import 'package:chat_app/screens/Calls.dart';
import 'package:chat_app/screens/Chats.dart';
import 'package:chat_app/screens/People.dart';
import 'package:chat_app/screens/Settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: CupertinoThemeData(
          brightness: Brightness.light, primaryColor: Color(0xff08c187)),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  var screens = [
    ChatsScreen(),
    CallsScreen(),
    PeopleScreen(),
    SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoTabScaffold(
          resizeToAvoidBottomInset: true,
          tabBar: CupertinoTabBar(items: [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chat_bubble_2_fill), label: "Chats"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.phone), label: "Calls"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person_alt_circle), label: "People"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.settings_solid), label: "Settings"),
          ]),
          tabBuilder: (BuildContext context, int index) {
            return screens[index];
          }),
    );
  }
}
