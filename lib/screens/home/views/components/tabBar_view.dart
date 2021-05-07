import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:university_ecommerce_app/configuration/size_config.dart';


class MyTabBar extends StatefulWidget {
  @override
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: getProportionateScreenWidth(25),),
            AutoSizeText("Featured",minFontSize: 24,style: TextStyle(fontWeight: FontWeight.bold,),),
            Spacer(),
          AutoSizeText("All",minFontSize: 16,style: TextStyle(decoration: TextDecoration.underline),),
            SizedBox(width: getProportionateScreenWidth(25),),
          ],
        ),
        SizedBox(height: getProportionateScreenHeight(15),),
        Container(
          height: getProportionateScreenHeight(280),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) => index==9?
              Container( width:
              220,
                height:
                MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(24),
                ),
                margin:
                EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.all(16),
                child: Center(child: Text("See All",style: TextStyle(color: Colors.white,fontSize:MediaQuery.of(context)
                    .size
                    .height *
                    3 /
                    64, ),),),
              ):
              Container(
                width:
                220,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(24),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1531310197839-ccf54634509e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=701&q=80"),
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.2),
                            BlendMode.darken))),
                margin:
                EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Spacer(),
                        CircleAvatar(
                            backgroundColor: Colors.orange,
                            child: IconButton(
                              icon: Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ))
                      ],
                    ),
                    Spacer(),
                    Text(
                      "Leather\n     shoes",
                      style: TextStyle(
                        color:
                        Colors.white.withOpacity(0.8),
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context)
                            .size
                            .height *
                            3 /
                            64,
                      ),
                    ),
                    Row(
                      children: [
                        ...List<Widget>.generate(
                            5,
                                (index) => Icon(
                              Icons.star,
                              color: Colors.orange,
                              size:
                              MediaQuery.of(context)
                                  .size
                                  .height *
                                  1.6 /
                                  64,
                            )).toList(),
                        Text(
                          "(32)",
                          style: TextStyle(
                            color: Colors.white
                                .withOpacity(0.6),
                            fontSize: MediaQuery.of(context)
                                .size
                                .height *
                                1 /
                                64,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal:MediaQuery.of(context).size.height *
                            0.1 /
                            64,
                      ),
                      child: Container(
                        height: 38,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Stack(
                                children: [
                                  Positioned(
                                      left: 0,
                                      right: 0,
                                      bottom: 0,
                                      top: 0,
                                      child:CircleAvatar(
                                        radius: 16,
                                        // radius: MediaQuery.of(context).size.height*5/64,
                                        backgroundColor: Colors.white,
                                        child: Image.asset(
                                          "assets/images/Profile Image.png",
                                        ),
                                      )),
                                  Positioned(
                                      left: 16,
                                      right: 0,
                                      bottom: 0,
                                      top: 0,
                                      child:CircleAvatar(
                                        radius: 16,
                                        backgroundColor: Colors.white,
                                        child: Image.asset(
                                          "assets/images/Profile Image.png",
                                        ),
                                      )),
                                  Positioned(
                                      left: 32,
                                      right: 0,
                                      bottom: 0,
                                      top: 0,
                                      child:CircleAvatar(
                                        radius: 16,
                                        backgroundColor: Colors.white,
                                        child: Image.asset(
                                          "assets/images/Profile Image.png",
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            Expanded(child: Container()),
                            Expanded(
                                flex: 2,
                                child: Text("US \$149.89",
                                    style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: MediaQuery.of(
                                          context)
                                          .size
                                          .height *
                                          1 /
                                          64,
                                    ))),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ),
      ],
    );
  }
}
