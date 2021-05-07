
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:university_ecommerce_app/screens/onboardingscreen/models/onboarding_model.dart';

import 'components/bottemsheet.dart';
import '../models/const.dart';
import 'components/sheet.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: lang == 0 ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            title: Center(child: Text("Ecommerce")),
            backgroundColor: kPrimaryColor,
          ),
          body: SafeArea(
            child:
                Sheet(
                  onchange: (index) {
                    setState(() {
                      currentPage = index;
                    });
                  },
                ),
          ),
          bottomSheet: BotomSheet(),
      ),
    );
  }
}


