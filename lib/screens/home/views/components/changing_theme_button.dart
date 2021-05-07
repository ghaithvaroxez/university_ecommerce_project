import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:university_ecommerce_app/screens/home/model/constants.dart';


class ChangeThemebutton extends StatefulWidget {
  @override
  _ChangeThemebuttonState createState() => _ChangeThemebuttonState();
}

class _ChangeThemebuttonState extends State<ChangeThemebutton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: theme.value==true?Colors.white70:Colors.black.withOpacity(0.7),
      child: theme.value==true?Icon(Icons.wb_sunny_outlined,color: Colors.black,):Icon(Icons.nightlight_round,color: Colors.white,),
      onPressed: (){
        setState(() {
          // language=!language;
          if(theme.value ==true)
          {Get.changeTheme(ThemeData.dark());
          theme.value=false;}
          else {Get.changeTheme(ThemeData.light());
          theme.value=true;};
        });
      },
    );
  }
}
