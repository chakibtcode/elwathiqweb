import 'package:elwathiqweb/constants.dart';
import 'package:elwathiqweb/constants/colors_const.dart';
import 'package:elwathiqweb/widgets/circular.dart';
import 'package:elwathiqweb/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';



class CardStatic5 extends StatelessWidget {
final String title ;
final String topTitle ;
final String subtitle ;
final double prix ;
final Color color ;
final double porsontage ;


  //type
  //pricePoint
  //countValue

  CardStatic5({
    Key? key,
     required this.title, required this.prix, required this.subtitle, required this.topTitle, required this.color, required this.porsontage,
  }) : super(key: key);

  @override
  ScrollController con = ScrollController();
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
   height: 210,     // width: double.maxFinite,
     padding: EdgeInsets.all(defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
       TextWidget(color: colorGray1,size: 18,titel: topTitle,weight: FontWeight.w700,),

       TextWidget(color: colorGray1,size: 18,titel: title,weight: FontWeight.w700,),
         SizedBox(height: 5,),
      
          TextWidget(color: blackColor,size: 25,titel: "$prix",weight: FontWeight.w700,),
         SizedBox(height: 5,),
       
          TextWidget(color: colorGray1,size: 14,titel:subtitle,weight: FontWeight.w500,),
         SizedBox(height: 5,),
         
        
        ],
      ),
      Container(
       margin: EdgeInsets.symmetric(horizontal: 8),
        color: colorGray1,width: 3, height: 100,),
    
             SingleChildScrollView(
                primary: false,
                    controller: con,
        
scrollDirection : Axis.horizontal,
              child: Circular(radius:  55, nbr_done: 50, nbr_no_done: 100, color: color, porsontage:porsontage,))
      
          
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

