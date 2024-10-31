import 'dart:async';

import 'package:elwathiqweb/constants/colors_const.dart';
import 'package:elwathiqweb/responsive.dart';
import 'package:elwathiqweb/screens/login_screen/login_controller.dart';
import 'package:elwathiqweb/validation/validation.dart';
import 'package:elwathiqweb/widgets/coustum_textFeiled/custom_textfeiled.dart';
import 'package:elwathiqweb/widgets/custom_button/custom_button.dart';
import 'package:elwathiqweb/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';



class LoginView extends StatelessWidget {
   LoginView({super.key});

  @override
    Validation  validation = Validation();

LoginController controller = Get.put(LoginController());
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primryColor,
        body: Center(
          child: SingleChildScrollView(
            child: Form(
              key: controller.key,
              child: Container(
                   //   height: MediaQuery.of(context).size.height,
                height: 530,
              
                width: MediaQuery.of(context).size.width,
                 margin: Responsive.isMobile(context) ?EdgeInsets.symmetric(horizontal: 14, vertical: 20) : EdgeInsets.symmetric(horizontal:  MediaQuery.of(context).size.width*0.2 , vertical: 20) ,
                 //padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                   
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                            "assets/images/logo.svg",
                          
                            // )
                            width: 280,
                          ),
                          SizedBox(height: 20,),
                          TextWidget(color: blackColor,size: 38,titel: 'Login',weight: FontWeight.w800,) ,
                           SizedBox(height: 45,),
                              SizedBox(
                            width:  Responsive.isMobile(context) ? 300 : 380,
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 TextWidget(color: blackColor,size: 23,titel: 'Username',weight: FontWeight.w700,),
                               
                                      CustomTextFormField(
                                                                hintText: 'enter your Username',

                                          controller: controller.usernameCon,
                                        
                                        inputType: TextInputType.number, onSaved: (value) {  },  validator: validation.validateFirName,),
                               SizedBox(height: 20,),
                             TextWidget(color: blackColor,size: 23,titel: 'Password',weight: FontWeight.w700,) ,
                             GetBuilder<LoginController>(
                      init: LoginController(),
                      builder: (controller) => CustomTextFormField(
                        hintText: 'enter your password',
              controller: controller.passwordCon,
              obscureText : true,
              inputType: TextInputType.number, onSaved: (value) {  }, validator:controller.validatePassword,))
                              ,   
                                 SizedBox(height: 45,),   
                           CustomButton(onTap: (){
                            controller.validateInput();
                           }, titel: 'Login', color: primryColor, colorBord: primryColor, titelColor: witheColor,)
                        
                               ],
                             ),
                           ) ,
                         
                  ],
                ),
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
              ),
            ),
          ),
        ));
  }
}






