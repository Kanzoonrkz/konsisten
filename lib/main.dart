import 'package:flutter/material.dart';
import 'package:konsisten/pages/activitiespage.dart';
import 'package:konsisten/pages/historypage.dart';
import 'package:konsisten/pages/homepage.dart';
import 'package:konsisten/pages/profilepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'konsisten',
      theme: ThemeData(),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  //Page lists
  final pages = <Widget>[
    HomePage(),
    HistoryPage(),
    ActivitiesPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
