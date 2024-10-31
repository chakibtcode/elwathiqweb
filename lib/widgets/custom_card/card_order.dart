// import 'package:elwathiqweb/models/order_model.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';

// import 'package:elwathiqweb/constants/colors_const.dart';
// import 'package:elwathiqweb/widgets/custom_text/custom_text.dart';

// class CardOrder extends StatelessWidget {
//   final Function? onTap;
//   final OrderModel model;


//   //type
//   //pricePoint
//   //countValue

//   CardOrder({
//     Key? key,
//     this.onTap,required this.model,
//   }) : super(key: key);

//   @override
 
//   Widget build(BuildContext context) {
         

//     return InkWell(
//       onTap: (){
//         onTap!();
//       },
//       child: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
//         margin: EdgeInsets.symmetric(vertical: 5),
//         height: 111,
       
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
       
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Expanded(
//                   child: TextWidget(
//                    // maxLines: 1,
//                     color: blackColor,size: 14,titel:
//                     model.titel_proudct
//                      //'Watch pico  Watch pico 25X'
//                      ,weight: FontWeight.w500,overflow:TextOverflow.ellipsis ),
//                 ),
//               SizedBox(width: 5,),
//               Container(
//                 height: 21,
//                 padding: EdgeInsets.symmetric(horizontal: 3),
//                 child: Center(
//                   child: TextWidget(
//                      // maxLines: 1,
//                       color: blackColor,size: 14,titel: model.code_proudct,weight: FontWeight.w700, ),
//                 ),
//                decoration: BoxDecoration(
//           color: secondColor2,
//           borderRadius: BorderRadius.circular(3),
         
//         ),
//               )
//               ],
//             ),
//            SizedBox(height: 5,),
         
//             Row(
//               children: [
//                 TextWidget(color: blackColor,size: 16,titel: 
//                // '20000 DA'
//                    model.profit.ceil().toString() +  ' DA'
//                 ,weight: FontWeight.w700,),
//               SizedBox(width: 5,),
//               Container(
//                 height: 21,
//                 padding: EdgeInsets.symmetric(horizontal: 3),
//                 child: Center(
//                   child: TextWidget(
//                      // maxLines: 1,
//                       color: blackColor,size: 14,titel:
//                  '${( ( (model.revenue - model.expenseve ) *100)/ model.revenue ).ceil() }%'
//                    //    ' 25% '
//                        ,weight: FontWeight.w500, ),
//                 ),
//                decoration: BoxDecoration(
//           color: secondColor2,
//           borderRadius: BorderRadius.circular(3),
         
//         ),
//               )
//               ],
//             ),
//            SizedBox(height: 5,),
          
//             Row(
//               children: [
//                 TextWidget(color: colorGray2,size: 14,titel: 'revenue :',weight: FontWeight.w700,),
//              TextWidget(color: greenColor,size: 15,titel:
//            ' + '    +     model.revenue.ceil().toString() +  ' DA'
//            //   ' + 50000 DA'
//               ,weight: FontWeight.w700,),
//               ],
//             ),
//            SizedBox(height: 5,),
       
//        Row(
//        children: [
//          TextWidget(color: colorGray2,size: 14,titel: 'expenses :',weight: FontWeight.w700,),
//          TextWidget(color: redColor,size: 15,titel: 
//            ' - '    +     model.expenseve.ceil().toString() +  ' DA'
         
//      //    ' - 50000 DA'
//          ,weight: FontWeight.w700,),
    
//        ],
//        ),
    
//           ],
//         ),
//         //
    
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(12),
//           boxShadow: const [
//             BoxShadow(
//               //ifs select change shadow color
//               color: colorShadow,
//               offset: Offset(
//                 0.0,
//                 0.40,
//               ),
//               blurRadius: 5.0,
//               spreadRadius: 0.1,
//             ),
//             //BoxShadow
//             BoxShadow(
//               color: Colors.white,
//               offset: Offset(0.0, 0.0),
//               blurRadius: 0.0,
//               spreadRadius: 0.0,
//             ) //BoxShadow
//           ],
//         ),
//       ),
//     );
//   }
// }

