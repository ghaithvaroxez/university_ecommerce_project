import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:university_ecommerce_app/configuration/size_config.dart';
import 'package:university_ecommerce_app/screens/about/models/about_model.dart';
import 'about_wave_clipper.dart';

class AboutBody extends AnimatedWidget {
  final Animation<double> animation;

  AboutBody({
    this.animation,
  }) : super(listenable: animation);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(children: [
        Container(
            height: getProportionateScreenHeight(100), color: Colors.amber),
        Positioned(
          top: getProportionateScreenHeight(100),
          right: animation.value,
          child: ClipPath(
            clipper: BottomWaveClipper(),
            child: Container(
              color: Colors.amber,
              width: 2000,
              height: 200,
            ),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: getProportionateScreenHeight(12),
              ),
              Container(
                child: Icon(
                  Icons.account_balance_outlined,
                  size: getProportionateScreenHeight(100),
                ),
                // height: height * 10 / 64,
                // width: height * 10 / 64,
              ),
              SizedBox(
                height: getProportionateScreenHeight(56),
              ),
              ...List.generate(descriptions.length, (index) {
                return Container(
                  child: Column(
                    children: [
                      Container(child: Center(
                        // widthFactor: 0,
                        child: AutoSizeText(
                          descriptions[index].title,
                          style: TextStyle(
                              fontSize: getProportionateScreenHeight(28),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 5, 20, 50),
                          child: AutoSizeText(
                            descriptions[index].description,
                            style: TextStyle(
                                fontSize: getProportionateScreenHeight(16),
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ],
          ),
        ),
      ]),
    );
  }
}