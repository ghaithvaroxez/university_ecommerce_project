import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../animation/about_animation.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Center(
              child: Text(
            "About",
            style: TextStyle(fontSize: height * 2.5 / 64),
          )),
        ),
        body: AboutAnimation());
  }
}

