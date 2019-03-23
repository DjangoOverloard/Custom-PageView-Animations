import 'package:flutter/material.dart';
import 'secondPage.dart';
import 'mainPage.dart';
import 'package:fluro/fluro.dart';

void main() {
  Router router = new Router();
  

  router.define('secondPage', handler: new Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return new SecondPage();
  }));


  runApp(new MaterialApp(
    home: Scaffold(
      body: MainPage() 
    ),
  ));
}
