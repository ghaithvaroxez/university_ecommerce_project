import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'file:///C:/Users/Varoxez/AndroidStudioProjects/university_ecommerce_app/lib/configuration/size_config.dart';

class OnboardingCard extends StatefulWidget {
  //final String imageAsseest;
  final String titleDescriptions;
  final String descriptions;
  final String animationassest;

  const OnboardingCard(
      {@required this.animationassest,
      @required this.titleDescriptions,
      @required this.descriptions});

  @override
  _OnboardingCardState createState() => _OnboardingCardState();
}

class _OnboardingCardState extends State<OnboardingCard> with TickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    )..addListener(() {
        print(_controller.duration);
      });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: getProportionateScreenHeight(82),
          ),
          Lottie.asset(
            widget.animationassest,
            repeat: true,
            width: width / 1.5,
            height: width / 1.5,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: getProportionateScreenHeight(25),
          ),
          // Image(
          //   image: AssetImage(widget.imageAsseest),
          // ),
          AutoSizeText(
            widget.titleDescriptions,
            style: GoogleFonts.aBeeZee(textStyle: TextStyle(fontSize: 32),fontWeight: FontWeight.bold),
          ),
          AutoSizeText(
            widget.descriptions,
            style: GoogleFonts.aBeeZee(textStyle: TextStyle(fontSize: 22)),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
