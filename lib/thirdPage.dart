import 'package:flutter/material.dart';




class ThirdPage extends StatelessWidget{
  final VoidCallback onClick;
  final VoidCallback onClick2;
  

  const ThirdPage({Key key, this.onClick, this.onClick2}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blue,
      body:Center(
        child:Row(
          children: <Widget>[
            FloatingActionButton(
              onPressed: onClick,
            
            ),
            FloatingActionButton(
              onPressed: onClick2,
            ),
          ],
        ),
      ),
    );
  }
}