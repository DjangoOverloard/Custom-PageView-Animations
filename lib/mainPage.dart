import 'package:flutter/material.dart';
import 'main.dart';
import 'firstPage.dart';
import 'pageView.dart';
import 'thirdPage.dart';
import 'secondPage.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget _currentPage;

  Widget _firstPage;
  Widget _secondPage;
  Widget _thirdPage;

  @override
  void initState() {
    _firstPage = FirstPage(onClick: () {
      setState(() {
        _currentPage = _secondPage;
      });
    }, onClick2: () {
      setState(() {
        _currentPage = _thirdPage;
      });
    });

    _secondPage = SecondPage(onClick: () {
      setState(() {
        _currentPage = _firstPage;
      });
    },
    onClick2: () {
      setState(() {
       _currentPage = _thirdPage; 
      });
    },
  
    );
    _currentPage = _firstPage;

    _thirdPage = ThirdPage(onClick: () {
      setState(() {
        _currentPage = _firstPage;
      });
    },
    onClick2: () {
      setState(() {
       _currentPage = _secondPage; 
      });
    },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CustomPageView(currentPage: _currentPage),
      ),
    );
  }
}
