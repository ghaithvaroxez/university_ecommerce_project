import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:university_ecommerce_app/configuration/size_config.dart';
import 'package:university_ecommerce_app/widgets/item_card_0.dart';

import 'history_cards.dart';

class SearchBody extends StatelessWidget {
  final Set<String> searchHistory;
  final searchWord;
  SearchBody(this.searchHistory, this.searchWord);
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Expanded(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double height = constraints.maxHeight;
          double width = constraints.maxWidth;
          print(height);
          return ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20,),
                  AutoSizeText("Search History ",minFontSize: 25,style: TextStyle(fontWeight: FontWeight.w600),)
                ],),
              Container(
                padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                height: height * .80,
                width: double.infinity,
                child: SingleChildScrollView(
                  child: HistoryCards(searchHistory: searchHistory),
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: getProportionateScreenWidth(20),
                      ),
                      Text(
                        "Featured",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      Spacer(),
                      GestureDetector(
                          onTap: () {},
                          child: Text(
                            "All",
                            style:
                            TextStyle(decoration: TextDecoration.underline),
                          )),
                      SizedBox(
                        width: getProportionateScreenWidth(25),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(15),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    height: 420,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 15,
                      itemBuilder: (context,index)=>index==0?
                      Container(height: 250,width: 300,child: ItemCard0(),)
                          :
                      Container(

                        child: Column(
                          children: [
                            Container(height: 205,width: 220,child: ItemCard0(),),
                            SizedBox(height: 10,),
                            Container(height: 205,width: 220,child: ItemCard0(),),
                          ],
                        ),
                      ),

                    ),
                  ),
                ],
              ),
              SizedBox(height: 25,),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: getProportionateScreenWidth(20),
                      ),
                      Text(
                        "Best seller",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      Spacer(),
                      GestureDetector(
                          onTap: () {},
                          child: Text(
                            "All",
                            style:
                            TextStyle(decoration: TextDecoration.underline),
                          )),
                      SizedBox(
                        width: getProportionateScreenWidth(25),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(15),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    height: 220,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 15,
                      itemBuilder: (context,index)=>
                          Container(margin: EdgeInsets.only(right: 5),height: 210,width: 220,child: ItemCard0(),),

                    ),

                  ),

                ],
              ),//
              SizedBox(height: 25,),
            ],
          );
        },
      ),
    );
  }
}
