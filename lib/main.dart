import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:university_ecommerce_app/home/views/home_view.dart';
import 'package:university_ecommerce_app/themes/theme.dart';
import 'file:///C:/Users/Varoxez/AndroidStudioProjects/university_ecommerce_app/lib/configuration/size_config.dart';

import 'about/views/about_view.dart';
import 'onboardingscreen/views/on_boarding_view.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
theme: AppTheme.darkTheme,
      home:BlaBla(),
// home: AboutScreen(),

    );
  }
}

class BlaBla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).size.width);
    SizeConfig.init(context);
    return  Scaffold(
      body: SafeArea(
        // child: AboutScreen(),
        // child: OnBoarding(),
        child: HomeView(),
      ),
    );
  }
}
