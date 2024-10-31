// import 'package:ecomdz_profit/widgets/silde_statue_widget/statue_card.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';

// import 'package:ecomdz_profit/constants/colors_const.dart';
// import 'package:ecomdz_profit/widgets/custom_text/custom_text.dart';

// class SlideStatue extends StatelessWidget {
//   final int statueBox;
//   final ValueSetter onTap;


//   //type
//   //pricePoint
//   //countValue

//   SlideStatue({
//     Key? key,
//    required this.statueBox,
//    required this.onTap,


//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 52,
//       child: Stack(
//         children: [
//            Center(
//      child: Row(
//       crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
//       children: [
//       Expanded(child: Container(height: 8, color: statueBox >=2 ? primryColor : colorGray1 ,)) ,
//       Expanded(child: Container(height: 8, color: statueBox >= 3 ? primryColor : colorGray1 ,)) ,
//       Expanded(child: Container(height: 8, color: statueBox >= 4 ? primryColor : colorGray1 ,)) ,
     
//      ],),
//    ),
//        Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//          children: [
//            InkWell(
//             onTap: (){
//               onTap(1);
//             },
//             child: StatueCard(icon: Icons.person_2_outlined, color: statueBox == 1 ? secondColor2 : statueBox >= 2 ?primryColor : colorGray1,)),  
//       InkWell(
//             onTap: (){
//               onTap(2);
//             },child: StatueCard(icon: Icons.shopping_bag_outlined, color: statueBox == 2 ? secondColor2 : statueBox >= 3 ?primryColor : colorGray1,)),  
//       InkWell(
//             onTap: (){
//               onTap(3);
//             },child: StatueCard(icon: Icons.lock_outline, color: statueBox == 3 ? secondColor2 : statueBox >= 4 ?primryColor : colorGray1,)),  
//      InkWell(
//             onTap: (){
//               onTap(4);
//             },child: StatueCard(icon: Icons.key, color: statueBox == 4 ? secondColor2 : statueBox >= 4 ?primryColor : colorGray1,)),  


//          ],
//        ),
  
//         ],
//       ),
//     );
//   }
// }
