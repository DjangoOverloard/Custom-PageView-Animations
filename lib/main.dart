import 'package:erjano_flurography/application.dart';
import 'package:flutter/material.dart';
import 'homePage.dart';
import 'secondPage.dart';
import 'package:fluro/fluro.dart';

void main() {
  Router router = new Router();
  router.define('home', handler: new Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return new HomePage();
  }));

  router.define('secondPage', handler: new Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return new SecondPage();
  }));

  Application.router = router;

  runApp(new MaterialApp(
    home: HomePage(),
    onGenerateRoute: Application.router.generator,
  ));
}
