import 'package:erjano_flurography/application.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  final VoidCallback onClick;

  const FirstPage({Key key, this.onClick}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.green,
      body:Container(
        child:Center(
          child:FloatingActionButton(
            onPressed: onClick,
          )
        ),
      ),
    );
  }
}