// import 'package:ecomdz_profit/constants/colors_const.dart';
// import 'package:ecomdz_profit/main.dart';
// import 'package:ecomdz_profit/routes/home_screen/home_controller.dart';
// import 'package:ecomdz_profit/widgets/custom_text/custom_text.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';


// import 'package:url_launcher/url_launcher.dart';

// class DrawerWidget extends StatelessWidget {
//    DrawerWidget({super.key});

//   @override
//   HomeController controller = Get.put(HomeController());
//   Widget build(BuildContext context) {
//     return Drawer(
//          width: Get.width*0.8,
//       child: SafeArea(
//         child: Column(
//           children: [
//              SizedBox(
//                   height: 200,
//                   width: Get.width*0.8,
//                   child: Container(
//                     child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(width: Get.width,),
//               SvgPicture.asset(
//                 'assets/images/logo.svg',
          
//                 // )
//                 width: 137,
//               ),SizedBox(height: 8,),
//                 TextWidget(
//           height: 1,
//           color:witheColor ,size: 19,titel: 'Ecomdz Profit',weight: FontWeight.w800,),
//             ],
//           ),
//                     color: primryColor,),
//                 ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 8),
//               child: Column(
//                 children: [
                 
//                   //           //********************************************************************************** */
                                                             
//                                                              SizedBox(height: 10,),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             TextWidget(
//                                  height: 1,
//                                  color:blackColor ,size: 17,titel: 'Number',weight: FontWeight.w700                                                                                              ,),
//                                              TextWidget(
//                                  height: 1,
//                                  color:blackColor ,size: 17,titel: '+213 ' + controller.dataModel.number,weight: FontWeight.w600,),
//                                                  Divider(
//                                                   thickness: 2,
//                               color: colorGray1,
//                               height: 8,                                                       
//                             ),               
//                           ],
//                         ),
//                   //********************************************************************************** */
                                                             
//                                                              SizedBox(height: 5,),
            
//                                                              InkWell(
//                                                               onTap: (){Get.back();},
//                                                                child: Row(
//                                                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                                                  children: [
//                                                                   Icon(Icons.home_outlined , color: blackColor,size: 28,),
//                                                                   SizedBox(width: 5,),
//                                                                    TextWidget(
//                                                                                 height: 1.1,
//                                                                                 color:blackColor ,size: 17,titel: 'Home',weight: FontWeight.w700,),
//                                                                  ],
//                                                                ),
//                                                              ),
//                                                  Divider(
//                                                   thickness: 2,
//                               color: colorGray1,
//                               height: 15,
//                             ),
//                             //********************************************************************************** */
                                                             
//                             //                                //  SizedBox(height: 5,),
            
//                             //                                  InkWell(
//                             //                                   onTap: (){  Get.toNamed('/Addorder');},
                                                              
//                             //                                    child: Row(
//                             //                                     crossAxisAlignment: CrossAxisAlignment.end,
//                             //                                      children: [
//                             //                                       Icon(Icons.add_box_outlined , color: blackColor,size: 28,),
//                             //                                       SizedBox(width: 5,),
//                             //                                        TextWidget(
//                             //                                                     height: 0.8,
//                             //                                                     color:blackColor ,size: 17,titel: 'Add order',weight: FontWeight.w700,),
//                             //                                      ],
//                             //                                    ),
//                             //                                  ),
//                             //                      Divider(
//                             //                       thickness: 2,
//                             //   color: colorGray1,
//                             //   height: 15,
//                             // ),
//                                     //********************************************************************************** */
                                                             
//                                                           //   SizedBox(height: 5,),
            
//                                                                InkWell(
//                                                               onTap: (){

//                                                                 Get.toNamed('/Setting');
//                                                               },
//                                                                child: Row(
//                                                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                                                  children: [
//                                                                   Icon(Icons.settings_outlined , color: blackColor,size: 28,),
//                                                                   SizedBox(width: 5,),
//                                                                    TextWidget(
//                                                                                 height: 1.1,
//                                                                                 color:blackColor ,size: 17,titel: 'Setting',weight: FontWeight.w700,),
//                                                                  ],
//                                                                ),
//                                                              ),
//                                                  Divider(
//                                                   thickness: 2,
//                               color: colorGray1,
//                               height: 15,
//                             ),
//                                  //********************************************************************************** */
                                                             
//                                                       //       SizedBox(height: 5,),
            
//                                                          InkWell(
//                                                               onTap: () async {
//                                                                  String urlPrivec =
//                 'https://play.google.com';
//             var url = await Uri.parse(urlPrivec);

//             if (await canLaunchUrl(url)) {
//               await launchUrl(url, mode: LaunchMode.externalApplication);
//             }
//                                                               },
//                                                                child: Row(
//                                                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                                                  children: [
//                                                                   Icon(Icons.star_border_rounded , color: blackColor,size: 28,),
//                                                                   SizedBox(width: 5,),
//                                                                    TextWidget(
//                                                                                 height: 1.1,
//                                                                                 color:blackColor ,size: 17,titel: 'Rate App',weight: FontWeight.w700,),
//                                                                  ],
//                                                                ),
//                                                              ),
//                                                  Divider(
//                                                   thickness: 2,
//                               color: colorGray1,
//                               height: 15,
//                             ),
//                                  //********************************************************************************** */
                                                             
//                                                           //   SizedBox(height: 5,),
            
//                                                             InkWell(
//                                                               onTap: () async {
//                                                                       String urlPrivec =
//               'https://sites.google.com/view/privacypolllicy/home';
//             var url = await Uri.parse(urlPrivec);

//             if (await canLaunchUrl(url)) {
//               await launchUrl(url, mode: LaunchMode.externalApplication);
//             }
//                                                               },
//                                                                child: Row(
//                                                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                                                  children: [
//                                                                   Icon(Icons.shield_outlined , color: blackColor,size: 28,),
//                                                                   SizedBox(width: 5,),
//                                                                    TextWidget(
//                                                                                 height: 1.1,
//                                                                                 color:blackColor ,size: 17,titel: 'Privacy Policy',weight: FontWeight.w700,),
//                                                                  ],
//                                                                ),
//                                                              ),
//                                                  Divider(
//                                                   thickness: 2,
//                               color: colorGray1,
//                               height: 15,
//                             ),
//                                    //********************************************************************************** */
                                                             
//                                                           //   SizedBox(height: 5,),
//                InkWell(
//                                                               onTap: () async {
//                                                                      await sharepref?.setBool("rigester" , false);
//   sharepref?.clear();
//   Get.offAllNamed("/Splash");

//                                                               },
//                                                                child: Row(
//                                                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                                                  children: [
//                                                                   Icon(Icons.logout , color: redColor,size: 28,),
//                                                                   SizedBox(width: 5,),
//                                                                    TextWidget(
//                                                                                 height: 1.1,
//                                                                                 color:blackColor ,size: 17,titel: 'Logout',weight: FontWeight.w700,),
//                                                                  ],
//                                                                ),
//                                                              ),
//                                                  Divider(
//                                                   thickness: 2,
//                               color: colorGray1,
//                               height: 15,
//                             ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }