import 'package:flutter/material.dart';
import 'package:university_ecommerce_app/about/components/about_body.dart';

import '../views/about_view.dart';
class AboutAnimation extends StatefulWidget {
  @override
  _AboutAnimationState createState() => _AboutAnimationState();
}

class _AboutAnimationState extends State<AboutAnimation>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 15), vsync: this)
          ..repeat();

    animation = Tween<double>(begin: -500, end: 0).animate(_controller);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AboutBody(animation: animation);
  }
}
