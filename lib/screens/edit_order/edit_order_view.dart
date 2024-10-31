import 'dart:async';

import 'package:elwathiqweb/constants/colors_const.dart';
import 'package:elwathiqweb/responsive.dart';
import 'package:elwathiqweb/screens/edit_order/edit_order_controller.dart';
import 'package:elwathiqweb/screens/login_screen/login_controller.dart';
import 'package:elwathiqweb/validation/validation.dart';
import 'package:elwathiqweb/widgets/coustum_selected/custom_dropdown.dart';
import 'package:elwathiqweb/widgets/coustum_textFeiled/custom_textfeiled.dart';
import 'package:elwathiqweb/widgets/custom_button/custom_button.dart';
import 'package:elwathiqweb/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';



class EditOrderView extends StatelessWidget {
   EditOrderView({super.key});

  @override
    Validation  validation = Validation();

EditOrderController controller = Get.put(EditOrderController());
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: primryColor),
      backgroundColor: bgColor2,        body: Center(
          child: SingleChildScrollView(
            child: Form(
              key: controller.key,
              child: SizedBox(
                   //   height: MediaQuery.of(context).size.height,
            //    height: 530 +70 +50 +410,
              
                width: MediaQuery.of(context).size.width,
              //   margin: Responsive.isMobile(context) ?EdgeInsets.symmetric(horizontal: 14, vertical: 20) : EdgeInsets.symmetric(horizontal:  MediaQuery.of(context).size.width*0.2 , vertical: 20) ,
                 //padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                   
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                
                          SizedBox(height: 20,),
                          TextWidget(color: blackColor,size: 38,titel: 'Edit Order',weight: FontWeight.w800,) ,
                           SizedBox(height: 45,),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: Responsive.isMobile(context) ?20 : (Responsive.isTablet(context) ?MediaQuery.of(context).size.width*0.15 : MediaQuery.of(context).size.width*0.25) , ),
                         //   width:  Responsive.isDesktop(context) ? MediaQuery.of(context).size.width*0.9 : 20 ,
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                //********************************************************************************************************* */
                                  SizedBox(height: 20,),
                                 TextWidget(color: blackColor,size: 19,titel: 'id order',weight: FontWeight.w700,),
                                        SizedBox(height: 10,),
                                  
                       Container(
                        //      width: 46,
                    height: 51,
                    
                    padding: EdgeInsets.symmetric(horizontal: 10 ),
                    decoration: BoxDecoration(
                      color: primryColor,
                      //Border size & Colors
                      border: Border.all(
                          color: primryColor,
                          width: 1.0,
                          style: BorderStyle.solid), //Border.all
                    
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child:   Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextWidget(
                              height: 1,
                            color: witheColor,size: 17,titel: '# ' +controller.id_o,weight: FontWeight.w600,),
                      ],
                    ),
                  ),  
                          //********************************************************************************************************* */
                                  SizedBox(height: 20,),
                                 TextWidget(color: blackColor,size: 19,titel: 'User Information',weight: FontWeight.w700,),
                                        SizedBox(height: 10,),
                                  
                       Row(
                         children: [
                              ClipRRect(
                          borderRadius: BorderRadius.circular(22),
                          child: Image.network(
                            'https://cdn-icons-png.flaticon.com/512/3177/3177440.png',
                            width: 51+10+51,
                            height: 51+10+51,
                          )

                        
                          ),
                       SizedBox(width: 10,),
                           Expanded(
                             child: Column(
                               children: [
                                 Container(
                                  //      width: 46,
                                               height: 51,
                                             //  width: MediaQuery.of(context).size.width,
                                               padding: EdgeInsets.symmetric(horizontal: 10 ),
                                               decoration: BoxDecoration(
                                                 color: primryColor,
                                                 //Border size & Colors
                                                 border: Border.all(
                                    color: primryColor,
                                    width: 1.0,
                                    style: BorderStyle.solid), //Border.all
                                               
                                                 borderRadius: BorderRadius.circular(8),
                                               ),
                                               child:   Row(
                                                 crossAxisAlignment: CrossAxisAlignment.center,
                                                 children: [
                                  TextWidget(
                                        height: 1,
                                      color: witheColor,size: 17,titel: controller.name_u,weight: FontWeight.w600,),
                                                 ],
                                               ),
                                             ),
                                              SizedBox(height: 10,),
                                              Container(
                                  //      width: 46,
                                               height: 51,
                                               
                                               padding: EdgeInsets.symmetric(horizontal: 10 ),
                           
                                               decoration: BoxDecoration(
                                                 color: primryColor,
                                                 //Border size & Colors
                                                 border: Border.all(
                                    color: primryColor,
                                    width: 1.0,
                                    style: BorderStyle.solid), //Border.all
                                               
                                                 borderRadius: BorderRadius.circular(8),
                                               ),
                                               child:   Row(
                                                 crossAxisAlignment: CrossAxisAlignment.center,
                                                 children: [
                                  TextWidget(
                                        height: 1,
                                      color: witheColor,size: 17,titel: '+213 ' +controller.number_u,weight: FontWeight.w600,),
                                                 ],
                                               ),
                                             ),
                               ],
                             ),
                           ),
                         ],
                       ),  
                                                 //********************************************************************************************************* */
                                  SizedBox(height: 20,),
                                 TextWidget(color: blackColor,size: 19,titel: 'Provider Information',weight: FontWeight.w700,),
                                        SizedBox(height: 10,),
                                  
                       Row(
                         children: [
                              ClipRRect(
                          borderRadius: BorderRadius.circular(22),
                          child: Image.network(
                            'https://cdn-icons-png.flaticon.com/512/3177/3177440.png',
                            width: 51+10+51,
                            height: 51+10+51,
                          )

                        
                          ),
                       SizedBox(width: 10,),
                           Expanded(
                             child: Column(
                               children: [
                                 Container(
                                  //      width: 46,
                                               height: 51,
                                             //  width: MediaQuery.of(context).size.width,
                                               padding: EdgeInsets.symmetric(horizontal: 10 ),
                                               decoration: BoxDecoration(
                                                 color: primryColor,
                                                 //Border size & Colors
                                                 border: Border.all(
                                    color: primryColor,
                                    width: 1.0,
                                    style: BorderStyle.solid), //Border.all
                                               
                                                 borderRadius: BorderRadius.circular(8),
                                               ),
                                               child:   Row(
                                                 crossAxisAlignment: CrossAxisAlignment.center,
                                                 children: [
                                  TextWidget(
                                        height: 1,
                                      color: witheColor,size: 17,titel: controller.name_p,weight: FontWeight.w600,),
                                                 ],
                                               ),
                                             ),
                                              SizedBox(height: 10,),
                                              Container(
                                  //      width: 46,
                                               height: 51,
                                               
                                               padding: EdgeInsets.symmetric(horizontal: 10 ),
                           
                                               decoration: BoxDecoration(
                                                 color: primryColor,
                                                 //Border size & Colors
                                                 border: Border.all(
                                    color: primryColor,
                                    width: 1.0,
                                    style: BorderStyle.solid), //Border.all
                                               
                                                 borderRadius: BorderRadius.circular(8),
                                               ),
                                               child:   Row(
                                                 crossAxisAlignment: CrossAxisAlignment.center,
                                                 children: [
                                  TextWidget(
                                        height: 1,
                                      color: witheColor,size: 17,titel: '+213 ' +controller.number_p,weight: FontWeight.w600,),
                                                 ],
                                               ),
                                             ),
                               ],
                             ),
                           ),
                         ],
                       ),  
                                                  
                                              //********************************************************************************************************* */
                                  SizedBox(height: 20,),
                                 TextWidget(color: blackColor,size: 19,titel: 'Service',weight: FontWeight.w700,),
                                        SizedBox(height: 10,),
                                  
                       Container(
                        //      width: 46,
                    height: 51,
                    
                    padding: EdgeInsets.symmetric(horizontal: 10 ),
                    decoration: BoxDecoration(
                      color: primryColor,
                      //Border size & Colors
                      border: Border.all(
                          color: primryColor,
                          width: 1.0,
                          style: BorderStyle.solid), //Border.all
                    
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child:   Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextWidget(
                              height: 1,
                            color: witheColor,size: 17,titel:'#'+controller.id_s +'/ سطحة عادية',weight: FontWeight.w600,),
                      ],
                    ),
                  ),      
                                                   //********************************************************************************************************* */
                               SizedBox(height: 20,),
 TextWidget(color: blackColor,size: 19,titel: 'Statue Order',weight: FontWeight.w700,),
                                        SizedBox(height: 10,),
                                   CustomDropDown(
                                             value: controller.selectValue,
                                             hintText:controller.selectValue,
                                             items:controller.listItems,
                                             //   prefixIcon: Padding(padding: EdgeInsets.only(left: 10), child :  TextWidget(height: 1.6 ,color: blackColor,size: 19,titel: 'by',weight: FontWeight.w700,),),
                                             validator: (v){},
                                             onChanged: (v){},
                                           ),

                                                  //********************************************************************************************************* */

                                   SizedBox(height: 20,),
                                 TextWidget(color: blackColor,size: 19,titel: 'price',weight: FontWeight.w700,),
                                        SizedBox(height: 10,),
                                      CustomTextFormField(
                                                                hintText: 'enter your price',

                                          controller: controller.price,
                                        
                                        inputType: TextInputType.number, onSaved: (value) {  },  validator: validation.validateFirName,),
                                               //********************************************************************************************************* */

                                   SizedBox(height: 20,),
                                 TextWidget(color: blackColor,size: 19,titel: 'wssla profit',weight: FontWeight.w700,),
                                        SizedBox(height: 10,),
                                      CustomTextFormField(
                                                                hintText: 'enter wssla profit',

                                          controller: controller.wassla_profit,
                                        
                                        inputType: TextInputType.number, onSaved: (value) {  },  validator: validation.validateFirName,),
                           
                                                  //********************************************************************************************************* */
                            
                                //********************************************************************************************************* */
                     
                                            SizedBox(height: 20,),
 TextWidget(color: blackColor,size: 19,titel: 'time order',weight: FontWeight.w700,),
                                        SizedBox(height: 10,),
                                  
                       Container(
                        //      width: 46,
                    height: 51,
                    
                    padding: EdgeInsets.symmetric(horizontal: 10 ),
                    decoration: BoxDecoration(
                      color: primryColor,
                      //Border size & Colors
                      border: Border.all(
                          color: primryColor,
                          width: 1.0,
                          style: BorderStyle.solid), //Border.all
                    
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child:   Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextWidget(
                              height: 1,
                            color: witheColor,size: 17,titel:controller.time_order,weight: FontWeight.w600,),
                      ],
                    ),
                  ),  
                       //********************************************************************************************************* */
                     
                                            SizedBox(height: 20,),
 TextWidget(color: blackColor,size: 19,titel: 'time start',weight: FontWeight.w700,),
                                        SizedBox(height: 10,),
                                  
                       Container(
                        //      width: 46,
                    height: 51,
                    
                    padding: EdgeInsets.symmetric(horizontal: 10 ),
                    decoration: BoxDecoration(
                      color: primryColor,
                      //Border size & Colors
                      border: Border.all(
                          color: primryColor,
                          width: 1.0,
                          style: BorderStyle.solid), //Border.all
                    
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child:   Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextWidget(
                              height: 1,
                            color: witheColor,size: 17,titel:controller.time_start,weight: FontWeight.w600,),
                      ],
                    ),
                  ),       //********************************************************************************************************* */
                     
                                            SizedBox(height: 20,),
 TextWidget(color: blackColor,size: 19,titel: 'time done',weight: FontWeight.w700,),
                                        SizedBox(height: 10,),
                                  
                       Container(
                        //      width: 46,
                    height: 51,
                    
                    padding: EdgeInsets.symmetric(horizontal: 10 ),
                    decoration: BoxDecoration(
                      color: primryColor,
                      //Border size & Colors
                      border: Border.all(
                          color: primryColor,
                          width: 1.0,
                          style: BorderStyle.solid), //Border.all
                    
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child:   Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextWidget(
                              height: 1,
                            color: witheColor,size: 17,titel:controller.time_done,weight: FontWeight.w600,),
                      ],
                    ),
                  ),       //********************************************************************************************************* */
                     
                                            SizedBox(height: 20,),
 TextWidget(color: blackColor,size: 19,titel: 'Distance',weight: FontWeight.w700,),
                                        SizedBox(height: 10,),
                                  
                       Container(
                        //      width: 46,
                    height: 51,
                    
                    padding: EdgeInsets.symmetric(horizontal: 10 ),
                    decoration: BoxDecoration(
                      color: primryColor,
                      //Border size & Colors
                      border: Border.all(
                          color: primryColor,
                          width: 1.0,
                          style: BorderStyle.solid), //Border.all
                    
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child:   Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextWidget(
                              height: 1,
                            color: witheColor,size: 17,titel:controller.distance,weight: FontWeight.w600,),
                      ],
                    ),
                  ),       //********************************************************************************************************* */
                     
                                            SizedBox(height: 20,),
 TextWidget(color: blackColor,size: 19,titel: 'user Confirm',weight: FontWeight.w700,),
                                        SizedBox(height: 10,),
                                  
                       Container(
                        //      width: 46,
                    height: 51,
                    
                    padding: EdgeInsets.symmetric(horizontal: 10 ),
                    decoration: BoxDecoration(
                      color: primryColor,
                      //Border size & Colors
                      border: Border.all(
                          color: primryColor,
                          width: 1.0,
                          style: BorderStyle.solid), //Border.all
                    
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child:   Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextWidget(
                              height: 1,
                            color: witheColor,size: 17,titel:'true',weight: FontWeight.w600,),
                      ],
                    ),
                  ),       //********************************************************************************************************* */
                     
                                            SizedBox(height: 20,),
 TextWidget(color: blackColor,size: 19,titel: 'Provider Confirm',weight: FontWeight.w700,),
                                        SizedBox(height: 10,),
                                  
                       Container(
                        //      width: 46,
                    height: 51,
                    
                    padding: EdgeInsets.symmetric(horizontal: 10 ),
                    decoration: BoxDecoration(
                      color: primryColor,
                      //Border size & Colors
                      border: Border.all(
                          color: primryColor,
                          width: 1.0,
                          style: BorderStyle.solid), //Border.all
                    
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child:   Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextWidget(
                              height: 1,
                            color: witheColor,size: 17,titel:'false',weight: FontWeight.w600,),
                      ],
                    ),
                  ),       //********************************************************************************************************* */
                     
                                            SizedBox(height: 20,),
 TextWidget(color: blackColor,size: 19,titel: 'User rate',weight: FontWeight.w700,),
                                        SizedBox(height: 10,),
                                  
                       Container(
                        //      width: 46,
                    height: 51,
                    
                    padding: EdgeInsets.symmetric(horizontal: 10 ),
                    decoration: BoxDecoration(
                      color: primryColor,
                      //Border size & Colors
                      border: Border.all(
                          color: primryColor,
                          width: 1.0,
                          style: BorderStyle.solid), //Border.all
                    
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child:   Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextWidget(
                              height: 1,
                            color: witheColor,size: 17,titel:'3/5',weight: FontWeight.w600,),
                      ],
                    ),
                  ),       //********************************************************************************************************* */
                     
                                            SizedBox(height: 20,),
 TextWidget(color: blackColor,size: 19,titel: 'Provider Confirm',weight: FontWeight.w700,),
                                        SizedBox(height: 10,),
                                  
                       Container(
                        //      width: 46,
                    height: 51,
                    
                    padding: EdgeInsets.symmetric(horizontal: 10 ),
                    decoration: BoxDecoration(
                      color: primryColor,
                      //Border size & Colors
                      border: Border.all(
                          color: primryColor,
                          width: 1.0,
                          style: BorderStyle.solid), //Border.all
                    
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child:   Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextWidget(
                              height: 1,
                            color: witheColor,size: 17,titel:'4/5',weight: FontWeight.w600,),
                      ],
                    ),
                  ),       //********************************************************************************************************* */
                     
                                                  //********************************************************************************************************* */

                       SizedBox(height: 20,),
SizedBox(height: 45,),   
                           CustomButton(onTap: (){
                            controller.validateInput();
                           }, titel: 'Save', color: primryColor, colorBord: primryColor, titelColor: witheColor,)
                        
                               ],
                             ),
                           ) ,
                         
                  ],
                ),
              
              ),
            ),
          ),
        ));
  }
}






