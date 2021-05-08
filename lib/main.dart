import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:university_ecommerce_app/screens/details/view/details_view.dart';
import 'package:university_ecommerce_app/themes/theme.dart';
import 'configuration/size_config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme.darkTheme,
      home: BlaBla(),
// screens.home: AboutScreen(),
    );
  }
}

class BlaBla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: SafeArea(
        // child: AboutScreen(),
        // child: OnBoarding(),
        // child: SearchScreen(),
        child: DetailsScreen(),
      ),
    );
  }
}
