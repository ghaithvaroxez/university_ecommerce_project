import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:university_ecommerce_app/configuration/size_config.dart';

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: SizeConfig.screenHeight*2,
              width: SizeConfig.screenWidth,
              child: Stack(
                children: [
                  Positioned(
                    width: SizeConfig.screenWidth,
                    height: getProportionateScreenHeight(250),
                    child: Container(
                      decoration: BoxDecoration(
                        // color: Colors.blue,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          colorFilter:
                              ColorFilter.mode(Colors.blueAccent, BlendMode.color),
                          image: AssetImage("assets/images/background.png"),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    height: getProportionateScreenHeight(1255),
                    width: SizeConfig.screenWidth,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.white70,
                            Colors.white70,
                            Colors.white70,
                            Colors.blue,
                          ],
                          end: Alignment.topCenter,
                          begin: Alignment.bottomCenter,
                          // tileMode: TileMode.mirror
                        ),

                        // border:BorderRadius.only(),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      // child: Placeholder(color: Colors.green,),
                    ),
                  ),
                  
                  Positioned(
                    right: getProportionateScreenWidth(25),
                    top: getProportionateScreenWidth(25),
                    child: Container(
                      height: getProportionateScreenHeight(50),
                      width: getProportionateScreenWidth(50),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: getProportionateScreenWidth(25),
                    top: getProportionateScreenWidth(25),
                    child: Container(
                      height: getProportionateScreenHeight(50),
                      width: getProportionateScreenWidth(50),
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(1),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_back_ios_outlined,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ),
                  
                  Positioned(top: 100,left: SizeConfig.screenWidth/2-150,height: getProportionateScreenHeight(250),width:getProportionateScreenWidth(300),child:       Container(
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
                  ),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
