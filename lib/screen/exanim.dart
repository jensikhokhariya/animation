import 'dart:math';

import 'package:flutter/material.dart';

class ExAnimation extends StatefulWidget {
  const ExAnimation({Key? key}) : super(key: key);

  @override
  State<ExAnimation> createState() => _ExAnimationState();
}

class _ExAnimationState extends State<ExAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation? colorTween;
  Animation? paddingTween;
  Animation? rotateTween;

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(duration: Duration(seconds:2), vsync: this)
          ..forward();
    colorTween = ColorTween(begin: Colors.deepPurple, end: Colors.blue).animate(
      CurvedAnimation(parent: animationController!, curve: Curves.bounceOut),
    );
    paddingTween =
        Tween<double>(begin: -1, end: 1).animate(animationController!);
    rotateTween =
        Tween<double>(begin: 0, end: pi*2).animate(animationController!);
    animationController!.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.topCenter,
          child: Align(
            alignment: Alignment(0, paddingTween!.value),
            child: Transform.rotate(
              angle: rotateTween!.value,
              child: Container(
                height: 100,
                width: 100,
                color: colorTween!.value,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
