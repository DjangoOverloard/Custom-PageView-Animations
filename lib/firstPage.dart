
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  final VoidCallback onClick;
  final VoidCallback onClick2;

  const FirstPage({Key key, this.onClick, this.onClick2}) : super(key: key);
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.green,
      body:Container(
        child:Center(
          child:Row(
            children: <Widget>[
              FloatingActionButton(
                onPressed: onClick,
              ),
              FloatingActionButton(
                onPressed: onClick2,
              ),
            ],
            
          )
        ),
      ),
    );
  }
}