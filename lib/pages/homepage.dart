import 'package:flutter/material.dart';
import 'package:konsisten/pages/widgets/home_topcard.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SafeArea(
        /* 
        ** To make sure the whole home page app doesn't interrupting
           the notification, we'll wrap the body in SafeArea
        */
          child: Column(
            children: [
              // Welcome part
              Material(
                child: Container(
                  width: double.infinity,
                  height: 240,
                  child: Home_TopCard(),
                  // Separated widget
                ),
                elevation: 10,
                shadowColor: Colors.white30,
              ),
              // Main part
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 35),
                  child: Column(
                    children: [
                      Text(
                        'Main Menu',
                        style: TextStyle(
                          fontSize: 19,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
