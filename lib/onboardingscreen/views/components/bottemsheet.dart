import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:university_ecommerce_app/onboardingscreen/models/onboarding_model.dart';
import 'animated_dot.dart';

import '../../models/const.dart';

class BotomSheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return currentPage == sliderCards.length - 1
        ? Container(
            child: GestureDetector(
              onTap: () {
                print("continue");
                //TODO:Nivgatortonewscreen
              },
              child: Center(
                child: AutoSizeText(
                 lang==0? "Continue":"التالي",
                  style: GoogleFonts.aBeeZee(
                      textStyle: TextStyle(fontSize: height * 1.75 / 64)),
                ),
              ),
            ),
            width: MediaQuery.of(context).size.width,
            height: height * 3.5 / 64,
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.all(Radius.circular(10))),
          )
        : Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.all(Radius.circular(10))),
            height: height * 3.5 / 64,
            padding: EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: AutoSizeText(
                    lang==0?"skip":"تَخطي",
                    style: GoogleFonts.aBeeZee(
                        textStyle: TextStyle(fontSize: height * 2.5 / 64)),
                  ),
                  onTap: () {
                    print("skip");
                    controller.animateToPage(sliderCards.length - 1,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInToLinear);
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    sliderCards.length,
                    (index) => buildDot(index: index, height: height),
                  ),
                ),
                GestureDetector(
                  child: AutoSizeText(
                    lang==0?"next":"التالي",
                    style: GoogleFonts.aBeeZee(
                      textStyle: TextStyle(fontSize: height * 2.5 / 64),
                    ),
                  ),
                  onTap: () {
                    print("next");
                    controller.animateToPage(currentPage + 1,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInToLinear);
                  },
                ),

              ],
            ),
          );
  }


}
