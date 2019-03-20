import 'package:erjano_flurography/application.dart';
import 'package:erjano_flurography/firstPage.dart';
import 'package:erjano_flurography/secondPage.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageShown = 1;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        child: Stack(children: [
          Opacity(
            child: FirstPage(
              onClick: () {
                setState(() {
                  pageShown = 2;
                });
              },
            ),
            opacity: (pageShown == 1) ? 1.0 : 0.0,
          ),
          Opacity(
            child: SecondPage(
              onClick: () {
                setState(() {
                  pageShown = 1;
                });
              },
            ),
            opacity: (pageShown == 2) ? 1.0 : 0.0,
          ),
        ]),
      ),
    );
  }
}
