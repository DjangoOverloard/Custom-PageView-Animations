import 'package:flutter/material.dart';

import 'secondPage.dart';

import 'thirdPage.dart';

class CustomPageView extends StatefulWidget {
  final Widget currentPage;

  CustomPageView({this.currentPage});

  @override
  _CustomPageViewState createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView>
    with SingleTickerProviderStateMixin {
  Widget _oldPage;
  AnimationController animationController;
  Animation<double> animation;

  Duration animationDuration = Duration(milliseconds: 1000);

  @override
  void initState() {
    animationController =
        AnimationController(duration: animationDuration, vsync: this);
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeInOut);
    super.initState();

    animationController.addListener(() {
      setState(() {});
    });

    //animationController.forward();
  }

  @override
  void didUpdateWidget(CustomPageView oldWidget) {
    if (oldWidget.currentPage != this.widget.currentPage) {
      animationController.forward();
      _oldPage = oldWidget.currentPage;

      Future.delayed(animationDuration, () {
        setState(() {
          _oldPage = null;
          animationController.reset();
        });
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Transform(
          child: (_oldPage != null) ? _oldPage : widget.currentPage,
          transform: Matrix4.translationValues(
              0.0, -MediaQuery.of(context).size.height * animation.value, 0.0),
        ),
        Visibility(
          visible: _oldPage != null,
          child: Transform(
            child: widget.currentPage,
            transform: Matrix4.translationValues(
                0.0,
                MediaQuery.of(context).size.height * (1.0 - animation.value),
                0.0),
          ),
        ),
      ],
    );
  }
}
