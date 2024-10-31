import 'dart:async';

import 'package:elwathiqweb/constants/colors_const.dart';
import 'package:elwathiqweb/responsive.dart';
import 'package:elwathiqweb/widgets/coustum_textFeiled/custom_textfeiled.dart';
import 'package:elwathiqweb/widgets/custom_button/custom_button.dart';
import 'package:elwathiqweb/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  changeScreen() async {
    SharedPreferences dataApp = await SharedPreferences.getInstance();

    bool? isStart = await dataApp.getBool("isStart");

    late Timer _timer;

    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      //change screen

      _timer.cancel();
      if (isStart == true) {
      //  Get.offNamed("/Bordoring");
       //  Get.offNamed("/MainScreen");
         Get.offNamed("/LoginView");

      } else {
         Get.offNamed("/LoginView");

      //  Get.offNamed("/Bordoring");
      }
    });
  }

  //
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  // verfyRigester() async {
  //   late bool? rigester;

  //   //get var rigester from sherd preferance
  //   SharedPreferences prefRige = await SharedPreferences.getInstance();

  //   rigester = await prefRige.getBool("rigester");

  //   //verfy rigester

  //   if (rigester == true) {
  //     verfyBlock();
  //   } else {
  //     Get.offNamed("/RigesterVeiw");
  //   }
  // }

  Widget build(BuildContext context) {
    changeScreen();

    return Scaffold(
        backgroundColor: primryColor,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                        "assets/images/logo.svg",
                        width: 280,
                      ),

              ],
            ),
          ),
        ));
  }
}





