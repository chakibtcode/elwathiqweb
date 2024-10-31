import 'package:elwathiqweb/constants.dart';
import 'package:elwathiqweb/constants/colors_const.dart';
import 'package:elwathiqweb/widgets/circular.dart';
import 'package:elwathiqweb/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';



class CardStatic2 extends StatelessWidget {
final int numOrder ;
final int numDone ;
final int  numCanaled ;

  //type
  //pricePoint
  //countValue

  CardStatic2({
    Key? key,required this.numOrder, required this.numDone, required this.numCanaled,
  }) : super(key: key);

  @override
  double porsontage = 0 ;
  Widget build(BuildContext context) {
    // porsontage = ((numDone*100)/numOrder);
     porsontage = ((numDone)/numOrder);
  //   porsontage =1;
   //  porsontage =0.9;

   //  porsontage =0.8;

  //   porsontage =0.75;
   //  porsontage =0.6;
   //  porsontage =0.5;
   //  porsontage =0.4;
  //   porsontage =0.3;
   //  porsontage =0.2;

//    porsontage = 0.1;

    //  double percent = nbr_done! / (nbr_no_done! + nbr_done!);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
      height: 153,
     // width: double.maxFinite,
     padding: EdgeInsets.all(defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
       TextWidget(color: colorGray1,size: 18,titel: 'All order',weight: FontWeight.w700,),
         SizedBox(height: 5,),
      
          TextWidget(color: blackColor,size: 25,titel: '$numOrder',weight: FontWeight.w700,),
         SizedBox(height: 5,),
       
          TextWidget(color: colorGray1,size: 16,titel: 'this day',weight: FontWeight.w500,),
         SizedBox(height: 5,),
         
        
        ],
      ),
      Container(
       margin: EdgeInsets.symmetric(horizontal: 8),
        color: colorGray1,width: 3, height: 100,),
       Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
       TextWidget(color: colorGray1,size: 14,titel: 'done order',weight: FontWeight.w500,),
         SizedBox(height: 5,),
      
          TextWidget(color: blackColor,size: 25,titel: '$numDone',weight: FontWeight.w700,),
         SizedBox(height: 5,),
       Container(
       margin: EdgeInsets.symmetric(horizontal: 8),
        color: colorGray1,width:100, height: 3,),
             SizedBox(height: 5,),
           TextWidget(color: colorGray1,size: 14,titel: 'canceled order',weight: FontWeight.w500,),
         SizedBox(height: 5,),
      
          TextWidget(color: blackColor,size: 25,titel: '$numCanaled',weight: FontWeight.w700,),
         SizedBox(height: 5,),
         
        
        ],
      ),     Container(
       margin: EdgeInsets.symmetric(horizontal: 8),
        color: colorGray1,width: 3, height: 100,),
             SingleChildScrollView(
scrollDirection : Axis.horizontal,
              child: Circular(radius:  55, nbr_done: 50, nbr_no_done: 100, color: porsontage == 1 ? blackColor : 
              (porsontage < 1 && porsontage >=0.75   ? greenColor : porsontage < 0.74 && porsontage >=0.45 ? orangeColor : 
              ( porsontage <0.44 && porsontage >=0.25  ? yellowColor : redColor))
              , porsontage:porsontage))
      
          
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

