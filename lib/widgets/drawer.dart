import 'package:flutter/material.dart';
import 'package:university_ecommerce_app/themes/light_color.dart';


class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(

        color: Colors.white,
        child: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Container(
              //   width: 100,
              //   height: 100,
              //   decoration: BoxDecoration(
              //     // shape: BoxShape.circle,
              //
              //     image: DecorationImage(
              //       fit: BoxFit.fitHeight,
              //       image: AssetImage( "assets/images/Profile Image.png",),
              //     ),
              //   ),
              // ),
              Row(
                children: [
                  Container(
                    // width:MediaQuery.of(context).size.width-100,
                    width: 260,
                    // height: MediaQuery.of(context).size.height/2.5,
                    height: 350,
                    child: Stack(
                      children: [
                        // Positioned(bottom: 130,right:60,child: CircleAvatar(backgroundColor: Colors.white.withOpacity(0.2),radius: min(getProportionateScreenWidth(125),getProportionateScreenHeight(125)),)),//125
                        Positioned(bottom: 130,right:60,child: CircleAvatar(backgroundColor: Colors.blue.withOpacity(0.2),radius: 150)),//125
                        Positioned(bottom: 100,right:20,child: CircleAvatar(backgroundColor: Colors.blue.withOpacity(0.4),radius: 180)),//150
                        Positioned(bottom: 180,right: 120,child: CircleAvatar(backgroundColor: Colors.blue.withOpacity(0.6),radius: 110)),//80
                        // Positioned(top:3,left:3,child: CircleAvatar(backgroundColor: Colors.blue.withOpacity(0.8),radius: 60,)),
                        Positioned(bottom:240,right: 180,child:  CircleAvatar(backgroundColor: Colors.blue,radius: 50,backgroundImage: AssetImage("assets/images/1.jpg"),)),
                        // Positioned(bottom:285,right: 0,child:  Text('Ahmad alblabla',style: TextStyle(color: Colors.black54,fontSize: 22,fontWeight: FontWeight.bold),)),
                        // Positioned(bottom:260,right: 25,child:  Text('\099452182668',style: TextStyle(color: Colors.black54,fontSize: 18,fontWeight: FontWeight.w300),)),
                        Positioned(bottom:50,left: 25,child:  Text('Ahmad alblabla',style: TextStyle(color: Colors.blue.withOpacity(0.8),fontSize: 22,fontWeight: FontWeight.bold),)),
                        Positioned(bottom:25,left: 25,child:  Text('\099452182668',style: TextStyle(color: Colors.blue.withOpacity(0.6),fontSize: 18,fontWeight: FontWeight.w300),)),
                      ],
                    ),
                  ),

                  // SizedBox(width:40)
                ],
              ),


              ListTile(
                leading: Icon(
                  Icons.home_outlined,
                  // color: Color(0xfffbba01).withOpacity(0.8),
                  color: Colors.blue.withOpacity(0.8),
                ),
                title: true
                    ? Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 18,
                    // color: Color(0xfffbba01).withOpacity(0.8),
                    color: Colors.blue.withOpacity(0.8),
                  ),
                )
                    : Text(
                  'الرئيسية',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF595959),
                  ),
                ),
                onTap: () {
                  // for (int i = 0; i < layer; i++) Navigator.pop(context);
                  // Navigator.popUntil(context, ModalRoute.withName('/'));
                },
              ),
              //: Opacity(opacity: 0),
              ListTile(
                leading: Icon(Icons.replay_outlined,
                  // color: Color(0xfffbba01).withOpacity(0.8),
                  color: Colors.blue.withOpacity(0.8),),
                title: true
                    ? Text(
                  'Saved',
                  style: TextStyle(
                    // color: Color(0xfffbba01).withOpacity(0.8),
                    color: Colors.blue.withOpacity(0.8),
                    fontSize: 18,
                  ),
                )
                    : Text(
                  'الشركات المحفوظة',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: Color(0xFF595959),
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: ((context) => SavedCompaniesScreen(language
                  //             ? "Saved Companies"
                  //             : "الشركات المحفوظة"))));
                },
              ),
              ListTile(
                leading: Icon(Icons.contact_support_outlined,
                  color: Colors.blue.withOpacity(0.8),
                  // color: Color(0xfffbba01).withOpacity(0.8),
                ),
                title: true
                    ? Text(
                  'Contact',
                  style: TextStyle(
                    // color: Color(0xfffbba01).withOpacity(0.8),
                    fontSize: 18,
                    color: Colors.blue.withOpacity(0.8),
                  ),
                )
                    : Text(
                  'التواصل',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: Color(0xFF595959),
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  // Navigator.push(context,
                  // MaterialPageRoute(builder: ((context) => ContactScreen())));
                },
              ),
              ListTile(
                leading: Icon(Icons.info_outline,
                  // color: Color(0xfffbba01).withOpacity(0.8),
                  // color: Colors.blue.withOpacity(0.8),
                  color: Colors.blue.withOpacity(0.8),
                ),
                title: true
                    ? Text(
                  'About',
                  style: TextStyle(
                    fontSize: 18,
                    // color: Color(0xfffbba01).withOpacity(0.8),
                    color: Colors.blue.withOpacity(0.8),
                  ),
                )
                    : Text(
                  ' حَول التطبيق',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF595959),
                  ),
                ),
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder:(context)=>AboutScreen()));
                },
              ),
              ListTile(
                leading: Icon(Icons.translate_outlined,

                  // color: Color(0xfffbba01).withOpacity(0.8),
                  color: Colors.blue.withOpacity(0.8),
                ),
                title: true
                    ? Text(
                  'Language',
                  style: TextStyle(
                    fontSize: 18,
                    // color: Color(0xfffbba01).withOpacity(0.8),
                    color: Colors.blue.withOpacity(0.8),
                  ),
                )
                    : Text(
                  'اللغة',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF595959),
                  ),
                ),
                // onTap: changeLanguage,

                // Navigator.of(context).pushNamed('/strategies');
              )
            ],
          ),
        ),
      ),
    ) ;
  }
}
