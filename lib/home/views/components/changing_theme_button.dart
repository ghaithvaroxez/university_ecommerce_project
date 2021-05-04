import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:university_ecommerce_app/home/model/constants.dart';

class ChangeThemebutton extends StatefulWidget {
  @override
  _ChangeThemebuttonState createState() => _ChangeThemebuttonState();
}

class _ChangeThemebuttonState extends State<ChangeThemebutton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: theme?Icon(Icons.wb_sunny_outlined):Icon(Icons.nightlight_round),
      onPressed: (){
        setState(() {
          // language=!language;
          if(theme)
          {Get.changeTheme(ThemeData.dark());
          theme=!theme;}
          else {Get.changeTheme(ThemeData.light());
          theme=!theme;};
        });
      },
    );
  }
}
