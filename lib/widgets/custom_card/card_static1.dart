import 'package:elwathiqweb/constants.dart';
import 'package:elwathiqweb/constants/colors_const.dart';
import 'package:elwathiqweb/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';



class CardStatic1 extends StatelessWidget {
final String title ;
final String subtitle ;
final double prix ;

  //type
  //pricePoint
  //countValue

  CardStatic1({
    Key? key,
     required this.title, required this.prix, required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
      height: 153,
     // width: double.maxFinite,
     padding: EdgeInsets.all(defaultPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Row(children: [],),
       TextWidget(color: colorGray1,size: 18,titel: subtitle,weight: FontWeight.w700,),
         SizedBox(height: 10,),
      
          TextWidget(color: blackColor,size: 27,titel: '${prix.ceil()
          } DA',weight: FontWeight.w700,),
         SizedBox(height: 10,),
       
          TextWidget(color: colorGray1,size: 16,titel: title,weight: FontWeight.w500,),
         SizedBox(height: 5,),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //    porsontage == 0 ? CircleAvatar(radius: 11, backgroundColor: orangeColor,) :     porsontage.isNegative ? RotatedBox(
          //      quarterTurns: 2,
          //      child: ClipPath(
          //         child: Container(height: 22 , width: 22, color:redColor ,),
          //        clipper: ArrowTopClipper()
               
          //      ),
          //    )  :  ClipPath(
          //       child: Container(height: 22 , width: 22, color: greenColor,),
          //      clipper: ArrowTopClipper()
          //    )  ,  
             
         
          //    SizedBox(width: 5,),
              
          
             
          //     TextWidget(color:    porsontage == 0 ? orangeColor :     porsontage.isNegative ? redColor :   greenColor ,size: 26,titel: '${porsontage.ceil()} %',weight: FontWeight.w600,),
          //   ],
          // ),
        
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

