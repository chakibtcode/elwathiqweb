import 'package:elwathiqweb/constants.dart';
import 'package:elwathiqweb/constants/colors_const.dart';
import 'package:elwathiqweb/widgets/circular.dart';
import 'package:elwathiqweb/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';



class CardStatic3 extends StatelessWidget {
final String title ;
final String subtitle ;
final int numProviderOnline ;
final int numAllProvider ;

  //type
  //pricePoint
  //countValue
 double porsontage = 0 ;
  CardStatic3({
    Key? key,
     required this.title, required this.numProviderOnline, required this.subtitle, required this.numAllProvider, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    porsontage = ((numProviderOnline)/numAllProvider);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
      height: 350,
     // width: double.maxFinite,
     padding: EdgeInsets.all(defaultPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
         Row(children: [],),
       TextWidget(color: colorGray1,size: 16,titel: subtitle,weight: FontWeight.w700,),
         SizedBox(height: 5,),
      
          TextWidget(color: blackColor,size: 27,titel: '$numProviderOnline',weight: FontWeight.w700,),
         SizedBox(height: 5,),
       
          TextWidget(color: colorGray1,size: 16,titel: title,weight: FontWeight.w700,),
         SizedBox(height: 5,),
            Container(
       margin: EdgeInsets.symmetric(horizontal: 15),
        color: colorGray1, height: 3,),
         SizedBox(height: 5,),

         Circular(radius:  55, nbr_done: 50, nbr_no_done: 100, color: porsontage == 1 ? blackColor : 
              (porsontage < 1 && porsontage >=0.75   ? greenColor : porsontage < 0.74 && porsontage >=0.45 ? orangeColor : 
              ( porsontage <0.44 && porsontage >=0.25  ? yellowColor : redColor))
              , porsontage:porsontage)
         
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

