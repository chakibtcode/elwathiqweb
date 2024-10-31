// import 'package:ecomdz_profit/functions/sound_player.dart';
// import 'package:ecomdz_profit/routes/veiworder_screen/editorder_screen/editorder_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ecomdz_profit/constants/colors_const.dart';
// import 'package:ecomdz_profit/widgets/custom_button/custom_button.dart';

// class ConfirmNotefication extends StatelessWidget {
//   final String titel;
//   final String message;
//   final Function onTapYes;

//   //تايب عابرة عن حالة حيث 1 غير اكتيف و 2 اكتيف 3 تم لكتابة
//   //final num? type;

//    ConfirmNotefication({
//     Key? key,
//     required this.titel,
//     required this.message,
//     required this.onTapYes,

//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//    notificationSound();

//     return WillPopScope(
//         onWillPop: () async {
//           return true;
//         },
//         child: Dialog(
//           backgroundColor: Color.fromARGB(47, 99, 99, 99),
//           child: Container(
//             height: 315,
//             width: Get.width * 0.8,
//             padding: EdgeInsets.all(14),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(21),
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(
//                   Icons.error_outline_rounded,
//                   size: 120,
//                   color: Colors.orange,
//                 ),
//                 Text(
//                   titel,
//                   style: TextStyle(
//                       fontSize: 24,
//                       color: Colors.orange,
//                       fontWeight: FontWeight.w800,
//                       fontFamily: 'Cairo',
//                       letterSpacing: 1.3),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   message,
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontSize: 14,
//                       color: blackColor,
//                       fontWeight: FontWeight.w800,
//                       fontFamily: 'Cairo',
//                       letterSpacing: 1.3),
//                 ),
//                 SizedBox(
//                   height: 14,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     CustomButton(
//                       width:  Get.width * 0.25,
//                       onTap: () {
//                         onTapYes();
                         
//                       },
//                       titel: "yes",
//                       titelColor: witheColor,
//                       color: greenColor,
//                       colorBord: greenColor,
//                     ),
//                     SizedBox(width: 5,),
//                      CustomButton(
//                         width:  Get.width * 0.25,
//                       onTap: () {
//                         Get.back();
//                       },
//                       titel: "no",
//                       titelColor: witheColor,
//                       color: redColor,
//                       colorBord: redColor,
//                     ),
//                   ],
//                 ),
//                 // CustomButton3(
//                 //   text: "موافق",
//                 //   color: mainColor,
//                 //   onTap: () {
//                 //     Navigator.of(context).pop();
//                 //   },
//                 // ),
//               ],
//             ),
//           ),
//         ));
//   }
// }
