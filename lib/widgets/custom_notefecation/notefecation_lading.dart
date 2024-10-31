// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ecomdz_profit/constants/colors_const.dart';

// class LadingNotefication extends StatelessWidget {
//   //تايب عابرة عن حالة حيث 1 غير اكتيف و 2 اكتيف 3 تم لكتابة
//   //final num? type;

//   const LadingNotefication({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//   //  notificationSound();

//     return WillPopScope(
//         onWillPop: () async {
//           return false;
//         },
//         child: Dialog(
//           backgroundColor: Color.fromARGB(47, 99, 99, 99),
//           child: Container(
//             height: 73,
//             width: Get.width * 0.8,
//             padding: EdgeInsets.all(14),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(21),
//             ),
//             child: Row(
//               children: [
//                 SizedBox(
//                   width: 5,
//                 ),
//                 CircularProgressIndicator(
//                   color: primryColor,
//                 ),
//                 SizedBox(
//                   width: 18,
//                 ),
//                 Text(
//                   'lading...',
//                   style: TextStyle(
//                       fontSize: 21,
//                       color: blackColor,
//                       fontWeight: FontWeight.w700,
//                       fontFamily: 'Cairo',
//                       letterSpacing: 1.3),
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }
// }
