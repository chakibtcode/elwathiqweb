// import 'package:ecomdz_profit/functions/sound_player.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ecomdz_profit/constants/colors_const.dart';
// import 'package:ecomdz_profit/widgets/custom_button/custom_button.dart';

// class ErroerNotefication extends StatelessWidget {
//   final String titel;
//   final String message;

//   //تايب عابرة عن حالة حيث 1 غير اكتيف و 2 اكتيف 3 تم لكتابة
//   //final num? type;

//   const ErroerNotefication({
//     Key? key,
//     required this.titel,
//     required this.message,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
// notificationSound();

//     return WillPopScope(
//       onWillPop: () async {
//         return true;
//       },
//       child: Dialog(
//         backgroundColor: Color.fromARGB(47, 99, 99, 99),
//         child: Container(
//           height: 315,
//           width: Get.width * 0.8,
//           padding: EdgeInsets.all(14),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(21),
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(
//                 Icons.cancel_outlined,
//                 size: 120,
//                 color: primryColor,
//               ),
//               Text(
//                 titel,
//                 style: TextStyle(
//                     fontSize: 24,
//                     color: primryColor,
//                     fontWeight: FontWeight.w800,
//                     fontFamily: 'Cairo',
//                     letterSpacing: 1.3),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Text(
//                 message,
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                     fontSize: 14,
//                     color: secondColor,
//                     fontWeight: FontWeight.w800,
//                     fontFamily: 'Cairo',
//                     letterSpacing: 1.3),
//               ),
//               SizedBox(
//                 height: 14,
//               ),
//               CustomButton(
//                 onTap: () {
//                   Get.back();
//                 },
//                 titel: "ok",
//                 titelColor: witheColor,
//                 color: primryColor,
//                 colorBord: primryColor,
//               ),
//               // CustomButton3(
//               //   text: "موافق",
//               //   color: mainColor,
//               //   onTap: () {
//               //     Navigator.of(context).pop();
//               //   },
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
