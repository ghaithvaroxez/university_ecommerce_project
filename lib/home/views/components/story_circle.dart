import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:university_ecommerce_app/configuration/size_config.dart';

class StoryCircle extends StatelessWidget {
  final String imgUlr;
  final bool Online;

  const StoryCircle({Key key, this.imgUlr, this.Online}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        //open image
      },
      child: Container(decoration: BoxDecoration(border: Border.all(color: Colors.indigoAccent,width: 2.5),borderRadius: BorderRadius.circular(50)),margin: EdgeInsets.symmetric(horizontal: 10),child: Stack(
        children: [
          CircleAvatar(backgroundImage:NetworkImage(imgUlr),radius: getProportionateScreenHeight(27),),
          Positioned(bottom: 0,right:0,child: CircleAvatar(backgroundColor: Online?Colors.green.shade800:Colors.transparent,radius: 8,))
        ],
      ),
      ),
    );
  }
}
