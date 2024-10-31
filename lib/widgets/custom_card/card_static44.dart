import 'package:elwathiqweb/constants.dart';
import 'package:elwathiqweb/constants/colors_const.dart';
import 'package:elwathiqweb/widgets/circular.dart';
import 'package:elwathiqweb/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';



class CardStatic4X extends StatelessWidget {
final String title ;
final String subtitle ;
final double prix ;

  //type
  //pricePoint
  //countValue

  CardStatic4X({
    Key? key,
     required this.title, required this.prix, required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
      height: 210,
     // width: double.maxFinite,
     padding: EdgeInsets.all(defaultPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Row(children: [],),
       TextWidget(color: colorGray1,size: 16,titel: subtitle,weight: FontWeight.w700,),
         SizedBox(height: 18,),
      
          TextWidget(color: blackColor,size: 27,titel: '$prix',weight: FontWeight.w700,),
         SizedBox(height: 18,),
       
          TextWidget(color: colorGray1,size: 16,titel: title,weight: FontWeight.w700,),
     

         
        ],
      ),
      //
      
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            //ifs select change shadow color
            color: colorShadow,
            offset: Offset(
              0.0,
              0.40,
            ),
            blurRadius: 5.0,
            spreadRadius: 0.1,
          ),
          //BoxShadow
          BoxShadow(
            color: Colors.white,
            offset: Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ) //BoxShadow
        ],
      ),
    );
  }
}

