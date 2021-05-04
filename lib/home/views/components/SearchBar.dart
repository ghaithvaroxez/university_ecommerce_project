import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:university_ecommerce_app/configuration/size_config.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: getProportionateScreenWidth(20),),
        GestureDetector(
          onTap: () {
            //go to search screen
          },
          child: Container(
            width: getProportionateScreenWidth(370),
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey.withOpacity(0.2)),
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.search,
                  size: 35,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Center(
                  child: AutoSizeText(
                    "Search items...",
                    minFontSize: 18,
                    style:
                    TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: (){
                    //setting
                  },
                  child: Container(
                    width: 25,
                    height: 25,
                    child: Image.asset("assets/images/filter_icon.png"),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: getProportionateScreenWidth(20),),
      ],
    );
  }
}
