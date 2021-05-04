import 'package:flutter/material.dart';
import 'package:university_ecommerce_app/onboardingscreen/models/const.dart';
import 'package:university_ecommerce_app/onboardingscreen/models/onboarding_model.dart';

AnimatedContainer buildDot({@required int index, @required double height}) {
  return AnimatedContainer(
    duration: Duration(milliseconds: 200),
    margin: EdgeInsets.only(right: 5),
    height: height * 0.5 / 64,
    width: currentPage == index ? height / 38.5 : height * 0.5 / 64,
    decoration: BoxDecoration(
      color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
      borderRadius: BorderRadius.circular(3),
    ),
  );
}