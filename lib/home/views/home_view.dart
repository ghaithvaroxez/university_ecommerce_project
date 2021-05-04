// import 'dart:html';
// import 'dart:math';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:university_ecommerce_app/configuration/size_config.dart';
import 'package:university_ecommerce_app/home/model/constants.dart';
import 'package:university_ecommerce_app/home/views/components/changing_theme_button.dart';
import 'package:university_ecommerce_app/home/views/components/story_circle.dart';
import 'package:university_ecommerce_app/home/views/components/tabBar_view.dart';
import 'package:university_ecommerce_app/themes/light_color.dart';
import 'package:university_ecommerce_app/themes/theme.dart';
import 'package:university_ecommerce_app/widgets/bottom_navigation_bar.dart';
import 'package:university_ecommerce_app/widgets/drawer.dart';
import 'package:get/get.dart';

import 'components/SearchBar.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      floatingActionButton: ChangeThemebutton(),
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: MyBottomNavigationBar(),
      // backgroundColor: Color(0XFFFFF4A1),
      drawer: MyDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: getProportionateScreenHeight(27),
              ),
              Row(
                children: [
                  SizedBox(
                    width: getProportionateScreenWidth(25),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      "assets/images/1.jpg",
                    ),
                    backgroundColor: Colors.blue,
                    radius: 25,
                  ),

                  ///person image

                  SizedBox(
                    width: getProportionateScreenWidth(18),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText("Good Afternoon"),
                      Row(
                        children: [
                          SizedBox(
                            width: getProportionateScreenWidth(5),
                          ),
                          AutoSizeText(
                            "Ahmad alblabla",
                            minFontSize: 22,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  ///middle text

                  Spacer(),
                  Container(
                    height: 42,
                    width: 42,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: Colors.grey.withOpacity(0.6)),
                        borderRadius: BorderRadius.circular(16)),
                    padding: EdgeInsets.all(1),
                    child: GestureDetector(
                      child: Container(
                        height: 24,
                        width: 24,
                        child: Center(
                          child: Icon(
                            Icons.search,
                            // color: Colors.black,
                            size: 28,
                          ),
                        ),
                        // child: Image.asset(
                        //   "assets/images/drawer.png",
                        //   fit: BoxFit.contain,
                        // ),
                      ),
                      onTap: () {},
                    ),
                  ),

                  ///menu icon

                  SizedBox(
                    width: getProportionateScreenWidth(25),
                  ),
                ],
              ),

              ///top Row
// SizedBox(height: getProportionateScreenHeight(25),),
              // SearchBar(),///search bar
              SizedBox(
                height: getProportionateScreenHeight(25),
              ),
              Container(
                height: getProportionateScreenHeight(180),
                width: getProportionateScreenWidth(370),
                child: Swiper(
                  autoplay: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: EdgeInsets.all(25),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        "assets/images/${index + 1}.png",
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                  itemCount: 4,
                  // pagination: new SwiperPagination(),
                  // control: new SwiperControl(),
                ),
              ),

              ///image Swiper
              SizedBox(
                height: getProportionateScreenHeight(25),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: getProportionateScreenWidth(25),
                      ),
                      AutoSizeText(
                        "Stories",
                        minFontSize: 24,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      GestureDetector(
                          onTap: () {},
                          child: AutoSizeText(
                            "All",
                            minFontSize: 12,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              // color: Colors.black.withOpacity(0.6)
                            ),
                          )),
                      SizedBox(
                        width: getProportionateScreenWidth(25),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(25),
                  ),
                  Container(
                    height: getProportionateScreenHeight(59),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        StoryCircle(
                          imgUlr:
                              "https://scontent-lga3-1.xx.fbcdn.net/v/t1.6435-1/p160x160/180025269_1565745993634931_7211157477278369925_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=7206a8&_nc_ohc=dQOBCU7ssQYAX-ZIE97&_nc_ht=scontent-lga3-1.xx&tp=6&oh=dee448f3d907a217d204333b508f1b51&oe=60B45AF7",
                          Online: true,
                        ),
                        StoryCircle(
                          imgUlr:
                              "https://scontent-lga3-1.xx.fbcdn.net/v/t1.6435-1/p200x200/67593383_2417135721897117_7627963566686994432_n.jpg?_nc_cat=106&ccb=1-3&_nc_sid=7206a8&_nc_ohc=ODKhU-juIk0AX_-JLUl&_nc_ht=scontent-lga3-1.xx&tp=6&oh=9d770f11b9e2420a0ee8f6b0a4ff791a&oe=60B5792F",
                          Online: true,
                        ),
                        StoryCircle(
                          imgUlr:
                              "https://scontent-lga3-1.xx.fbcdn.net/v/t1.6435-9/148938765_1546011065788564_9018204076717544132_n.jpg?_nc_cat=106&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=vL7jb8x3-PoAX85ZacK&_nc_ht=scontent-lga3-1.xx&oh=3abbd0c861b284d7c2f16f8187217fa5&oe=60B2DAD1",
                          Online: true,
                        ),
                        StoryCircle(
                          imgUlr:
                              "https://scontent-lga3-1.xx.fbcdn.net/v/t1.6435-9/81431562_2444093872498116_5281093625407602688_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=ad2b24&_nc_ohc=l82O87UPB-cAX_wwvtW&_nc_ht=scontent-lga3-1.xx&oh=bebad62a922246a7256754253126bda9&oe=60B48528",
                          Online: true,
                        ),
                        StoryCircle(
                          imgUlr:
                              "https://scontent-lga3-1.xx.fbcdn.net/v/t1.6435-0/p180x540/109824214_1814738728689216_204717310422516927_n.jpg?_nc_cat=110&ccb=1-3&_nc_sid=e3f864&_nc_ohc=S2_oEtp75s8AX9P3ZLj&_nc_ht=scontent-lga3-1.xx&tp=6&oh=79b81dc62974dd0207b220d7cb966db2&oe=60B4A664",
                          Online: true,
                        ),
                        StoryCircle(
                          imgUlr:
                              "https://scontent-lga3-1.xx.fbcdn.net/v/t1.6435-9/154965449_1952834188190221_3171483349959622558_n.jpg?_nc_cat=106&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=bd9AvSIwSZwAX-OlR0_&_nc_ht=scontent-lga3-1.xx&oh=21753cab27c487c11a73e880022bf5aa&oe=60B386B9",
                          Online: true,
                        ),
                        StoryCircle(
                          imgUlr:
                              "https://scontent-lga3-1.xx.fbcdn.net/v/t1.6435-1/s200x200/142857050_1841961825954007_1148348261400056320_n.jpg?_nc_cat=110&ccb=1-3&_nc_sid=7206a8&_nc_ohc=wH2Gi_Ef7WkAX8PoX6o&_nc_ht=scontent-lga3-1.xx&tp=7&oh=1ac06375d1ae0bdea3bc8220a348a46d&oe=60B3BA15",
                          Online: true,
                        ),
                        StoryCircle(
                          imgUlr:
                              "https://scontent-lga3-1.xx.fbcdn.net/v/t1.6435-1/p160x160/180025269_1565745993634931_7211157477278369925_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=7206a8&_nc_ohc=dQOBCU7ssQYAX-ZIE97&_nc_ht=scontent-lga3-1.xx&tp=6&oh=dee448f3d907a217d204333b508f1b51&oe=60B45AF7",
                          Online: true,
                        ),
                        StoryCircle(
                          imgUlr:
                              "https://scontent-lga3-1.xx.fbcdn.net/v/t1.6435-1/p200x200/67593383_2417135721897117_7627963566686994432_n.jpg?_nc_cat=106&ccb=1-3&_nc_sid=7206a8&_nc_ohc=ODKhU-juIk0AX_-JLUl&_nc_ht=scontent-lga3-1.xx&tp=6&oh=9d770f11b9e2420a0ee8f6b0a4ff791a&oe=60B5792F",
                          Online: true,
                        ),
                        StoryCircle(
                          imgUlr:
                              "https://scontent-lga3-1.xx.fbcdn.net/v/t1.6435-9/148938765_1546011065788564_9018204076717544132_n.jpg?_nc_cat=106&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=vL7jb8x3-PoAX85ZacK&_nc_ht=scontent-lga3-1.xx&oh=3abbd0c861b284d7c2f16f8187217fa5&oe=60B2DAD1",
                          Online: true,
                        ),
                        StoryCircle(
                          imgUlr:
                              "https://scontent-lga3-1.xx.fbcdn.net/v/t1.6435-9/81431562_2444093872498116_5281093625407602688_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=ad2b24&_nc_ohc=l82O87UPB-cAX_wwvtW&_nc_ht=scontent-lga3-1.xx&oh=bebad62a922246a7256754253126bda9&oe=60B48528",
                          Online: true,
                        ),
                        StoryCircle(
                          imgUlr:
                              "https://scontent-lga3-1.xx.fbcdn.net/v/t1.6435-0/p180x540/109824214_1814738728689216_204717310422516927_n.jpg?_nc_cat=110&ccb=1-3&_nc_sid=e3f864&_nc_ohc=S2_oEtp75s8AX9P3ZLj&_nc_ht=scontent-lga3-1.xx&tp=6&oh=79b81dc62974dd0207b220d7cb966db2&oe=60B4A664",
                          Online: true,
                        ),
                        StoryCircle(
                          imgUlr:
                              "https://scontent-lga3-1.xx.fbcdn.net/v/t1.6435-9/154965449_1952834188190221_3171483349959622558_n.jpg?_nc_cat=106&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=bd9AvSIwSZwAX-OlR0_&_nc_ht=scontent-lga3-1.xx&oh=21753cab27c487c11a73e880022bf5aa&oe=60B386B9",
                          Online: true,
                        ),
                        StoryCircle(
                          imgUlr:
                              "https://scontent-lga3-1.xx.fbcdn.net/v/t1.6435-1/s200x200/142857050_1841961825954007_1148348261400056320_n.jpg?_nc_cat=110&ccb=1-3&_nc_sid=7206a8&_nc_ohc=wH2Gi_Ef7WkAX8PoX6o&_nc_ht=scontent-lga3-1.xx&tp=7&oh=1ac06375d1ae0bdea3bc8220a348a46d&oe=60B3BA15",
                          Online: true,
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              ///story
              SizedBox(
                height: getProportionateScreenHeight(25),
              ),

              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: getProportionateScreenWidth(20),
                      ),
                      Text(
                        "Categories",
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
                    height: getProportionateScreenHeight(10),
                  ),
                  Container(
                      height: getProportionateScreenHeight(70),
                      width: getProportionateScreenWidth(370),
                      // color: Colors.red,
                      padding:
                          EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 7,
                        itemBuilder: (context, index) => Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  // gradient: LinearGradient(colors: [Colors.blue.withOpacity(0.2),Colors.blue.withOpacity(0.4)],begin:Alignment.bottomCenter,end: Alignment.topCenter ),
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                    image: NetworkImage(categoriesUrl[index]),
                                    fit: BoxFit.fill,
                                  )),
                              width: getProportionateScreenWidth(110),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                // gradient: LinearGradient(colors: [Colors.blue.withOpacity(0.2),Colors.blue.withOpacity(0.4)],begin:Alignment.bottomCenter,end: Alignment.topCenter ),
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.black.withOpacity(0.2),
                              ),
                              width: getProportionateScreenWidth(110),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                // gradient: LinearGradient(colors: [Colors.blue.withOpacity(0.2),Colors.blue.withOpacity(0.4)],begin:Alignment.bottomCenter,end: Alignment.topCenter ),
                                borderRadius: BorderRadius.circular(12),
                                // color: Colors.black.withOpacity(0.9),
                              ),
                              child: Center(
                                child: Text(
                                  categoriesName[index],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              width: getProportionateScreenWidth(110),
                            ),
                          ],
                        ),
                      )),
                ],
              ),

              ///categories
              SizedBox(
                height: getProportionateScreenHeight(25),
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
                    height: 250,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 15,
                        itemBuilder: (context,index)=>index==0?
                            Container(margin: EdgeInsets.only(right: 5),height: 180,width: 160,color: Colors.red,)
                            :
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Column(
    children: [
      Container(height: 120,width: 90,color: Colors.red,),
      SizedBox(height: 10,),
      Container(height: 120,width: 90,color: Colors.red,)
    ],
    ),
                      ),

                    ),
                  ),
                ],
              ),///featured
              SizedBox(
                height: getProportionateScreenHeight(25),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: getProportionateScreenWidth(20),
                      ),
                      Text(
                        "Most Liked",
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
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 15,
                        itemBuilder: (context,index)=>
                            Container(margin: EdgeInsets.only(right: 5),height: 180,width: 160,color: Colors.red,),

                      ),

                    ),

                ],
              ),///featured

              // TabBar(
              //   isScrollable: true,
              //   labelColor: Colors.blue.withOpacity(0.6),
              //   unselectedLabelColor: Colors.grey.withOpacity(0.9),
              //   labelStyle: TextStyle(
              //     fontSize: MediaQuery.of(context).size.height * 1.4 / 64,
              //   ),
              //   indicatorColor: Colors.blue,
              //   indicatorPadding: EdgeInsets.symmetric(horizontal: 8),
              //   indicatorSize: TabBarIndicatorSize.label,
              //   indicatorWeight: 3,
              //   tabs: [
              //     Tab(
              //       text: "Men",
              //     ),
              //     Tab(
              //       text: "Women",
              //     ),
              //     Tab(
              //       text: "Childs",
              //     ),
              //     Tab(
              //       text: "Sports",
              //     ),
              //     Tab(
              //       text: "Electronics",
              //     ),
              //     Tab(
              //       text: "Mobiles",
              //     ),
              //   ],
              //   controller: _tabController,
              // ),

              SizedBox(
                height: getProportionateScreenHeight(25),
              ),
              //       Container(
              // height: 800,
              //         child: TabBarView(
              //           // physics: ScrollPhysics,
              //           // dragStartBehavior: DragStartBehavior.down,
              //           controller: _tabController,
              //           children: [
              //             MyTabBar(),
              //
              //             //2
              //             ListView.builder(
              //                 scrollDirection: Axis.horizontal,
              //                 itemCount: 10,
              //                 itemBuilder: (context, index) => index==9?Container( width:
              //                 220,
              //                   height:
              //                   MediaQuery.of(context).size.height / 4,
              //                   decoration: BoxDecoration(
              //                     color: Colors.orange,
              //                     borderRadius: BorderRadius.circular(24),
              //                   ),
              //                   margin:
              //                   EdgeInsets.symmetric(horizontal: 20),
              //                   padding: EdgeInsets.all(16),
              //                   child: Center(child: Text("See All",style: TextStyle(color: Colors.white,fontSize:MediaQuery.of(context)
              //                       .size
              //                       .height *
              //                       3 /
              //                       64, ),),),
              //                 ):Container(
              //                   width:
              //                   220,
              //                   height:
              //                   MediaQuery.of(context).size.height / 4,
              //                   decoration: BoxDecoration(
              //                       color: Colors.red,
              //                       borderRadius: BorderRadius.circular(24),
              //                       image: DecorationImage(
              //                           fit: BoxFit.fill,
              //                           image: NetworkImage(
              //                               "https://images.unsplash.com/photo-1531310197839-ccf54634509e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=701&q=80"),
              //                           colorFilter: ColorFilter.mode(
              //                               Colors.black.withOpacity(0.2),
              //                               BlendMode.darken))),
              //                   margin:
              //                   EdgeInsets.symmetric(horizontal: 20),
              //                   padding: EdgeInsets.all(16),
              //                   child: Column(
              //                     crossAxisAlignment:
              //                     CrossAxisAlignment.start,
              //                     children: [
              //                       Row(
              //                         children: [
              //                           Spacer(),
              //                           CircleAvatar(
              //                               backgroundColor: Colors.orange,
              //                               child: IconButton(
              //                                 icon: Icon(
              //                                   Icons.favorite,
              //                                   color: Colors.white,
              //                                 ),
              //                                 onPressed: () {},
              //                               ))
              //                         ],
              //                       ),
              //                       Spacer(),
              //                       Text(
              //                         "Leather\n     shoes",
              //                         style: TextStyle(
              //                           color:
              //                           Colors.white.withOpacity(0.8),
              //                           fontWeight: FontWeight.bold,
              //                           fontSize: MediaQuery.of(context)
              //                               .size
              //                               .height *
              //                               3 /
              //                               64,
              //                         ),
              //                       ),
              //                       Row(
              //                         children: [
              //                           ...List<Widget>.generate(
              //                               5,
              //                                   (index) => Icon(
              //                                 Icons.star,
              //                                 color: Colors.orange,
              //                                 size:
              //                                 MediaQuery.of(context)
              //                                     .size
              //                                     .height *
              //                                     1.6 /
              //                                     64,
              //                               )).toList(),
              //                           Text(
              //                             "(32)",
              //                             style: TextStyle(
              //                               color: Colors.white
              //                                   .withOpacity(0.6),
              //                               fontSize: MediaQuery.of(context)
              //                                   .size
              //                                   .height *
              //                                   1 /
              //                                   64,
              //                             ),
              //                           )
              //                         ],
              //                       ),
              //                       Padding(
              //                         padding: EdgeInsets.symmetric(
              //                           horizontal:MediaQuery.of(context).size.height *
              //                               0.1 /
              //                               64,
              //                         ),
              //                         child: Container(
              //                           height: 38,
              //                           child: Row(
              //                             children: [
              //                               Expanded(
              //                                 flex: 2,
              //                                 child: Stack(
              //                                   children: [
              //                                     Positioned(
              //                                         left: 0,
              //                                         right: 0,
              //                                         bottom: 0,
              //                                         top: 0,
              //                                         child:CircleAvatar(
              //                                           radius: 16,
              //                                           // radius: MediaQuery.of(context).size.height*5/64,
              //                                           backgroundColor: Colors.white,
              //                                           child: Image.asset(
              //                                             "assets/images/Profile Image.png",
              //                                           ),
              //                                         )),
              //                                     Positioned(
              //                                         left: 16,
              //                                         right: 0,
              //                                         bottom: 0,
              //                                         top: 0,
              //                                         child:CircleAvatar(
              //                                           radius: 16,
              //                                           backgroundColor: Colors.white,
              //                                           child: Image.asset(
              //                                             "assets/images/Profile Image.png",
              //                                           ),
              //                                         )),
              //                                     Positioned(
              //                                         left: 32,
              //                                         right: 0,
              //                                         bottom: 0,
              //                                         top: 0,
              //                                         child:CircleAvatar(
              //                                           radius: 16,
              //                                           backgroundColor: Colors.white,
              //                                           child: Image.asset(
              //                                             "assets/images/Profile Image.png",
              //                                           ),
              //                                         )),
              //                                   ],
              //                                 ),
              //                               ),
              //                               Expanded(child: Container()),
              //                               Expanded(
              //                                   flex: 2,
              //                                   child: Text("US \$149.89",
              //                                       style: TextStyle(
              //                                         color: Colors.orange,
              //                                         fontSize: MediaQuery.of(
              //                                             context)
              //                                             .size
              //                                             .height *
              //                                             1 /
              //                                             64,
              //                                       ))),
              //                             ],
              //                           ),
              //                         ),
              //                       )
              //                     ],
              //                   ),
              //                 )),
              //             //3
              //             ListView.builder(
              //                 scrollDirection: Axis.horizontal,
              //                 itemCount: 10,
              //                 itemBuilder: (context, index) => index==9?Container( width:
              //                 220,
              //                   height:
              //                   MediaQuery.of(context).size.height / 4,
              //                   decoration: BoxDecoration(
              //                     color: Colors.orange,
              //                     borderRadius: BorderRadius.circular(24),
              //                   ),
              //                   margin:
              //                   EdgeInsets.symmetric(horizontal: 20),
              //                   padding: EdgeInsets.all(16),
              //                   child: Center(child: Text("See All",style: TextStyle(color: Colors.white,fontSize:MediaQuery.of(context)
              //                       .size
              //                       .height *
              //                       3 /
              //                       64, ),),),
              //                 ):Container(
              //                   width:
              //                   220,
              //                   height:
              //                   MediaQuery.of(context).size.height / 4,
              //                   decoration: BoxDecoration(
              //                       color: Colors.red,
              //                       borderRadius: BorderRadius.circular(24),
              //                       image: DecorationImage(
              //                           fit: BoxFit.fill,
              //                           image: NetworkImage(
              //                               "https://images.unsplash.com/photo-1531310197839-ccf54634509e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=701&q=80"),
              //                           colorFilter: ColorFilter.mode(
              //                               Colors.black.withOpacity(0.2),
              //                               BlendMode.darken))),
              //                   margin:
              //                   EdgeInsets.symmetric(horizontal: 20),
              //                   padding: EdgeInsets.all(16),
              //                   child: Column(
              //                     crossAxisAlignment:
              //                     CrossAxisAlignment.start,
              //                     children: [
              //                       Row(
              //                         children: [
              //                           Spacer(),
              //                           CircleAvatar(
              //                               backgroundColor: Colors.orange,
              //                               child: IconButton(
              //                                 icon: Icon(
              //                                   Icons.favorite,
              //                                   color: Colors.white,
              //                                 ),
              //                                 onPressed: () {},
              //                               ))
              //                         ],
              //                       ),
              //                       Spacer(),
              //                       Text(
              //                         "Leather\n     shoes",
              //                         style: TextStyle(
              //                           color:
              //                           Colors.white.withOpacity(0.8),
              //                           fontWeight: FontWeight.bold,
              //                           fontSize: MediaQuery.of(context)
              //                               .size
              //                               .height *
              //                               3 /
              //                               64,
              //                         ),
              //                       ),
              //                       Row(
              //                         children: [
              //                           ...List<Widget>.generate(
              //                               5,
              //                                   (index) => Icon(
              //                                 Icons.star,
              //                                 color: Colors.orange,
              //                                 size:
              //                                 MediaQuery.of(context)
              //                                     .size
              //                                     .height *
              //                                     1.6 /
              //                                     64,
              //                               )).toList(),
              //                           Text(
              //                             "(32)",
              //                             style: TextStyle(
              //                               color: Colors.white
              //                                   .withOpacity(0.6),
              //                               fontSize: MediaQuery.of(context)
              //                                   .size
              //                                   .height *
              //                                   1 /
              //                                   64,
              //                             ),
              //                           )
              //                         ],
              //                       ),
              //                       Padding(
              //                         padding: EdgeInsets.symmetric(
              //                           horizontal:MediaQuery.of(context).size.height *
              //                               0.1 /
              //                               64,
              //                         ),
              //                         child: Container(
              //                           height: 38,
              //                           child: Row(
              //                             children: [
              //                               Expanded(
              //                                 flex: 2,
              //                                 child: Stack(
              //                                   children: [
              //                                     Positioned(
              //                                         left: 0,
              //                                         right: 0,
              //                                         bottom: 0,
              //                                         top: 0,
              //                                         child:CircleAvatar(
              //                                           radius: 16,
              //                                           // radius: MediaQuery.of(context).size.height*5/64,
              //                                           backgroundColor: Colors.white,
              //                                           child: Image.asset(
              //                                             "assets/images/Profile Image.png",
              //                                           ),
              //                                         )),
              //                                     Positioned(
              //                                         left: 16,
              //                                         right: 0,
              //                                         bottom: 0,
              //                                         top: 0,
              //                                         child:CircleAvatar(
              //                                           radius: 16,
              //                                           backgroundColor: Colors.white,
              //                                           child: Image.asset(
              //                                             "assets/images/Profile Image.png",
              //                                           ),
              //                                         )),
              //                                     Positioned(
              //                                         left: 32,
              //                                         right: 0,
              //                                         bottom: 0,
              //                                         top: 0,
              //                                         child:CircleAvatar(
              //                                           radius: 16,
              //                                           backgroundColor: Colors.white,
              //                                           child: Image.asset(
              //                                             "assets/images/Profile Image.png",
              //                                           ),
              //                                         )),
              //                                   ],
              //                                 ),
              //                               ),
              //                               Expanded(child: Container()),
              //                               Expanded(
              //                                   flex: 2,
              //                                   child: Text("US \$149.89",
              //                                       style: TextStyle(
              //                                         color: Colors.orange,
              //                                         fontSize: MediaQuery.of(
              //                                             context)
              //                                             .size
              //                                             .height *
              //                                             1 /
              //                                             64,
              //                                       ))),
              //                             ],
              //                           ),
              //                         ),
              //                       )
              //                     ],
              //                   ),
              //                 )),
              //             //4
              //             ListView.builder(
              //                 scrollDirection: Axis.horizontal,
              //                 itemCount: 10,
              //                 itemBuilder: (context, index) => index==9?Container( width:
              //                 220,
              //                   height:
              //                   MediaQuery.of(context).size.height / 4,
              //                   decoration: BoxDecoration(
              //                     color: Colors.orange,
              //                     borderRadius: BorderRadius.circular(24),
              //                   ),
              //                   margin:
              //                   EdgeInsets.symmetric(horizontal: 20),
              //                   padding: EdgeInsets.all(16),
              //                   child: Center(child: Text("See All",style: TextStyle(color: Colors.white,fontSize:MediaQuery.of(context)
              //                       .size
              //                       .height *
              //                       3 /
              //                       64, ),),),
              //                 ):Container(
              //                   width:
              //                   220,
              //                   height:
              //                   MediaQuery.of(context).size.height / 4,
              //                   decoration: BoxDecoration(
              //                       color: Colors.red,
              //                       borderRadius: BorderRadius.circular(24),
              //                       image: DecorationImage(
              //                           fit: BoxFit.fill,
              //                           image: NetworkImage(
              //                               "https://images.unsplash.com/photo-1531310197839-ccf54634509e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=701&q=80"),
              //                           colorFilter: ColorFilter.mode(
              //                               Colors.black.withOpacity(0.2),
              //                               BlendMode.darken))),
              //                   margin:
              //                   EdgeInsets.symmetric(horizontal: 20),
              //                   padding: EdgeInsets.all(16),
              //                   child: Column(
              //                     crossAxisAlignment:
              //                     CrossAxisAlignment.start,
              //                     children: [
              //                       Row(
              //                         children: [
              //                           Spacer(),
              //                           CircleAvatar(
              //                               backgroundColor: Colors.orange,
              //                               child: IconButton(
              //                                 icon: Icon(
              //                                   Icons.favorite,
              //                                   color: Colors.white,
              //                                 ),
              //                                 onPressed: () {},
              //                               ))
              //                         ],
              //                       ),
              //                       Spacer(),
              //                       Text(
              //                         "Leather\n     shoes",
              //                         style: TextStyle(
              //                           color:
              //                           Colors.white.withOpacity(0.8),
              //                           fontWeight: FontWeight.bold,
              //                           fontSize: MediaQuery.of(context)
              //                               .size
              //                               .height *
              //                               3 /
              //                               64,
              //                         ),
              //                       ),
              //                       Row(
              //                         children: [
              //                           ...List<Widget>.generate(
              //                               5,
              //                                   (index) => Icon(
              //                                 Icons.star,
              //                                 color: Colors.orange,
              //                                 size:
              //                                 MediaQuery.of(context)
              //                                     .size
              //                                     .height *
              //                                     1.6 /
              //                                     64,
              //                               )).toList(),
              //                           Text(
              //                             "(32)",
              //                             style: TextStyle(
              //                               color: Colors.white
              //                                   .withOpacity(0.6),
              //                               fontSize: MediaQuery.of(context)
              //                                   .size
              //                                   .height *
              //                                   1 /
              //                                   64,
              //                             ),
              //                           )
              //                         ],
              //                       ),
              //                       Padding(
              //                         padding: EdgeInsets.symmetric(
              //                           horizontal:MediaQuery.of(context).size.height *
              //                               0.1 /
              //                               64,
              //                         ),
              //                         child: Container(
              //                           height: 38,
              //                           child: Row(
              //                             children: [
              //                               Expanded(
              //                                 flex: 2,
              //                                 child: Stack(
              //                                   children: [
              //                                     Positioned(
              //                                         left: 0,
              //                                         right: 0,
              //                                         bottom: 0,
              //                                         top: 0,
              //                                         child:CircleAvatar(
              //                                           radius: 16,
              //                                           // radius: MediaQuery.of(context).size.height*5/64,
              //                                           backgroundColor: Colors.white,
              //                                           child: Image.asset(
              //                                             "assets/images/Profile Image.png",
              //                                           ),
              //                                         )),
              //                                     Positioned(
              //                                         left: 16,
              //                                         right: 0,
              //                                         bottom: 0,
              //                                         top: 0,
              //                                         child:CircleAvatar(
              //                                           radius: 16,
              //                                           backgroundColor: Colors.white,
              //                                           child: Image.asset(
              //                                             "assets/images/Profile Image.png",
              //                                           ),
              //                                         )),
              //                                     Positioned(
              //                                         left: 32,
              //                                         right: 0,
              //                                         bottom: 0,
              //                                         top: 0,
              //                                         child:CircleAvatar(
              //                                           radius: 16,
              //                                           backgroundColor: Colors.white,
              //                                           child: Image.asset(
              //                                             "assets/images/Profile Image.png",
              //                                           ),
              //                                         )),
              //                                   ],
              //                                 ),
              //                               ),
              //                               Expanded(child: Container()),
              //                               Expanded(
              //                                   flex: 2,
              //                                   child: Text("US \$149.89",
              //                                       style: TextStyle(
              //                                         color: Colors.orange,
              //                                         fontSize: MediaQuery.of(
              //                                             context)
              //                                             .size
              //                                             .height *
              //                                             1 /
              //                                             64,
              //                                       ))),
              //                             ],
              //                           ),
              //                         ),
              //                       )
              //                     ],
              //                   ),
              //                 )),
              //
              //             //5
              //             ListView.builder(
              //                 scrollDirection: Axis.horizontal,
              //                 itemCount: 10,
              //                 itemBuilder: (context, index) => index==9?Container( width:
              //                 220,
              //                   height:
              //                   MediaQuery.of(context).size.height / 4,
              //                   decoration: BoxDecoration(
              //                     color: Colors.orange,
              //                     borderRadius: BorderRadius.circular(24),
              //                   ),
              //                   margin:
              //                   EdgeInsets.symmetric(horizontal: 20),
              //                   padding: EdgeInsets.all(16),
              //                   child: Center(child: Text("See All",style: TextStyle(color: Colors.white,fontSize:MediaQuery.of(context)
              //                       .size
              //                       .height *
              //                       3 /
              //                       64, ),),),
              //                 ):Container(
              //                   width:
              //                   220,
              //                   height:
              //                   MediaQuery.of(context).size.height / 4,
              //                   decoration: BoxDecoration(
              //                       color: Colors.red,
              //                       borderRadius: BorderRadius.circular(24),
              //                       image: DecorationImage(
              //                           fit: BoxFit.fill,
              //                           image: NetworkImage(
              //                               "https://images.unsplash.com/photo-1531310197839-ccf54634509e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=701&q=80"),
              //                           colorFilter: ColorFilter.mode(
              //                               Colors.black.withOpacity(0.2),
              //                               BlendMode.darken))),
              //                   margin:
              //                   EdgeInsets.symmetric(horizontal: 20),
              //                   padding: EdgeInsets.all(16),
              //                   child: Column(
              //                     crossAxisAlignment:
              //                     CrossAxisAlignment.start,
              //                     children: [
              //                       Row(
              //                         children: [
              //                           Spacer(),
              //                           CircleAvatar(
              //                               backgroundColor: Colors.orange,
              //                               child: IconButton(
              //                                 icon: Icon(
              //                                   Icons.favorite,
              //                                   color: Colors.white,
              //                                 ),
              //                                 onPressed: () {},
              //                               ))
              //                         ],
              //                       ),
              //                       Spacer(),
              //                       Text(
              //                         "Leather\n     shoes",
              //                         style: TextStyle(
              //                           color:
              //                           Colors.white.withOpacity(0.8),
              //                           fontWeight: FontWeight.bold,
              //                           fontSize: MediaQuery.of(context)
              //                               .size
              //                               .height *
              //                               3 /
              //                               64,
              //                         ),
              //                       ),
              //                       Row(
              //                         children: [
              //                           ...List<Widget>.generate(
              //                               5,
              //                                   (index) => Icon(
              //                                 Icons.star,
              //                                 color: Colors.orange,
              //                                 size:
              //                                 MediaQuery.of(context)
              //                                     .size
              //                                     .height *
              //                                     1.6 /
              //                                     64,
              //                               )).toList(),
              //                           Text(
              //                             "(32)",
              //                             style: TextStyle(
              //                               color: Colors.white
              //                                   .withOpacity(0.6),
              //                               fontSize: MediaQuery.of(context)
              //                                   .size
              //                                   .height *
              //                                   1 /
              //                                   64,
              //                             ),
              //                           )
              //                         ],
              //                       ),
              //                       Padding(
              //                         padding: EdgeInsets.symmetric(
              //                           horizontal:MediaQuery.of(context).size.height *
              //                               0.1 /
              //                               64,
              //                         ),
              //                         child: Container(
              //                           height: 38,
              //                           child: Row(
              //                             children: [
              //                               Expanded(
              //                                 flex: 2,
              //                                 child: Stack(
              //                                   children: [
              //                                     Positioned(
              //                                         left: 0,
              //                                         right: 0,
              //                                         bottom: 0,
              //                                         top: 0,
              //                                         child:CircleAvatar(
              //                                           radius: 16,
              //                                           // radius: MediaQuery.of(context).size.height*5/64,
              //                                           backgroundColor: Colors.white,
              //                                           child: Image.asset(
              //                                             "assets/images/Profile Image.png",
              //                                           ),
              //                                         )),
              //                                     Positioned(
              //                                         left: 16,
              //                                         right: 0,
              //                                         bottom: 0,
              //                                         top: 0,
              //                                         child:CircleAvatar(
              //                                           radius: 16,
              //                                           backgroundColor: Colors.white,
              //                                           child: Image.asset(
              //                                             "assets/images/Profile Image.png",
              //                                           ),
              //                                         )),
              //                                     Positioned(
              //                                         left: 32,
              //                                         right: 0,
              //                                         bottom: 0,
              //                                         top: 0,
              //                                         child:CircleAvatar(
              //                                           radius: 16,
              //                                           backgroundColor: Colors.white,
              //                                           child: Image.asset(
              //                                             "assets/images/Profile Image.png",
              //                                           ),
              //                                         )),
              //                                   ],
              //                                 ),
              //                               ),
              //                               Expanded(child: Container()),
              //                               Expanded(
              //                                   flex: 2,
              //                                   child: Text("US \$149.89",
              //                                       style: TextStyle(
              //                                         color: Colors.orange,
              //                                         fontSize: MediaQuery.of(
              //                                             context)
              //                                             .size
              //                                             .height *
              //                                             1 /
              //                                             64,
              //                                       ))),
              //                             ],
              //                           ),
              //                         ),
              //                       )
              //                     ],
              //                   ),
              //                 )),
              //             //6
              //             ListView.builder(
              //                 scrollDirection: Axis.horizontal,
              //                 itemCount: 10,
              //                 itemBuilder: (context, index) => index==9?Container( width:
              //                 220,
              //                   height:
              //                   MediaQuery.of(context).size.height / 4,
              //                   decoration: BoxDecoration(
              //                     color: Colors.orange,
              //                     borderRadius: BorderRadius.circular(24),
              //                   ),
              //                   margin:
              //                   EdgeInsets.symmetric(horizontal: 20),
              //                   padding: EdgeInsets.all(16),
              //                   child: Center(child: Text("See All",style: TextStyle(color: Colors.white,fontSize:MediaQuery.of(context)
              //                       .size
              //                       .height *
              //                       3 /
              //                       64, ),),),
              //                 ):Container(
              //                   width:
              //                   220,
              //                   height:
              //                   MediaQuery.of(context).size.height / 4,
              //                   decoration: BoxDecoration(
              //                       color: Colors.red,
              //                       borderRadius: BorderRadius.circular(24),
              //                       image: DecorationImage(
              //                           fit: BoxFit.fill,
              //                           image: NetworkImage(
              //                               "https://images.unsplash.com/photo-1531310197839-ccf54634509e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=701&q=80"),
              //                           colorFilter: ColorFilter.mode(
              //                               Colors.black.withOpacity(0.2),
              //                               BlendMode.darken))),
              //                   margin:
              //                   EdgeInsets.symmetric(horizontal: 20),
              //                   padding: EdgeInsets.all(16),
              //                   child: Column(
              //                     crossAxisAlignment:
              //                     CrossAxisAlignment.start,
              //                     children: [
              //                       Row(
              //                         children: [
              //                           Spacer(),
              //                           CircleAvatar(
              //                               backgroundColor: Colors.orange,
              //                               child: IconButton(
              //                                 icon: Icon(
              //                                   Icons.favorite,
              //                                   color: Colors.white,
              //                                 ),
              //                                 onPressed: () {},
              //                               ))
              //                         ],
              //                       ),
              //                       Spacer(),
              //                       Text(
              //                         "Leather\n     shoes",
              //                         style: TextStyle(
              //                           color:
              //                           Colors.white.withOpacity(0.8),
              //                           fontWeight: FontWeight.bold,
              //                           fontSize: MediaQuery.of(context)
              //                               .size
              //                               .height *
              //                               3 /
              //                               64,
              //                         ),
              //                       ),
              //                       Row(
              //                         children: [
              //                           ...List<Widget>.generate(
              //                               5,
              //                                   (index) => Icon(
              //                                 Icons.star,
              //                                 color: Colors.orange,
              //                                 size:
              //                                 MediaQuery.of(context)
              //                                     .size
              //                                     .height *
              //                                     1.6 /
              //                                     64,
              //                               )).toList(),
              //                           Text(
              //                             "(32)",
              //                             style: TextStyle(
              //                               color: Colors.white
              //                                   .withOpacity(0.6),
              //                               fontSize: MediaQuery.of(context)
              //                                   .size
              //                                   .height *
              //                                   1 /
              //                                   64,
              //                             ),
              //                           )
              //                         ],
              //                       ),
              //                       Padding(
              //                         padding: EdgeInsets.symmetric(
              //                           horizontal:MediaQuery.of(context).size.height *
              //                               0.1 /
              //                               64,
              //                         ),
              //                         child: Container(
              //                           height: 38,
              //                           child: Row(
              //                             children: [
              //                               Expanded(
              //                                 flex: 2,
              //                                 child: Stack(
              //                                   children: [
              //                                     Positioned(
              //                                         left: 0,
              //                                         right: 0,
              //                                         bottom: 0,
              //                                         top: 0,
              //                                         child:CircleAvatar(
              //                                           radius: 16,
              //                                           // radius: MediaQuery.of(context).size.height*5/64,
              //                                           backgroundColor: Colors.white,
              //                                           child: Image.asset(
              //                                             "assets/images/Profile Image.png",
              //                                           ),
              //                                         )),
              //                                     Positioned(
              //                                         left: 16,
              //                                         right: 0,
              //                                         bottom: 0,
              //                                         top: 0,
              //                                         child:CircleAvatar(
              //                                           radius: 16,
              //                                           backgroundColor: Colors.white,
              //                                           child: Image.asset(
              //                                             "assets/images/Profile Image.png",
              //                                           ),
              //                                         )),
              //                                     Positioned(
              //                                         left: 32,
              //                                         right: 0,
              //                                         bottom: 0,
              //                                         top: 0,
              //                                         child:CircleAvatar(
              //                                           radius: 16,
              //                                           backgroundColor: Colors.white,
              //                                           child: Image.asset(
              //                                             "assets/images/Profile Image.png",
              //                                           ),
              //                                         )),
              //                                   ],
              //                                 ),
              //                               ),
              //                               Expanded(child: Container()),
              //                               Expanded(
              //                                   flex: 2,
              //                                   child: Text("US \$149.89",
              //                                       style: TextStyle(
              //                                         color: Colors.orange,
              //                                         fontSize: MediaQuery.of(
              //                                             context)
              //                                             .size
              //                                             .height *
              //                                             1 /
              //                                             64,
              //                                       ))),
              //                             ],
              //                           ),
              //                         ),
              //                       )
              //                     ],
              //                   ),
              //                 )),
              //             //7
              //
              //           ],
              //         ),
              //       ),
            ],
          ),
        ),
      ),
    );
  }
}
