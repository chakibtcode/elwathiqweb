import 'package:flutter/material.dart';
import 'package:elwathiqweb/constants/colors_const.dart';

import 'package:elwathiqweb/widgets/custom_text/custom_text.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class NumberTabel extends StatelessWidget {
  const NumberTabel({
    Key? key,
    required this.onTap, required this.titelColor,
  }) : super(key: key);

  final ValueSetter onTap;
 final Color titelColor;



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        //----------------------------------

   Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
    CustomButtonNumber(onTap: (v){
       onTap(v);
    },titel: '9',titelColor: titelColor,),
      CustomButtonNumber(onTap: (v){
      onTap(v);
    },titel: '8',titelColor: titelColor,),
      CustomButtonNumber(onTap: (v){
      onTap(v);
    },titel: '7',titelColor: titelColor,),
   ],),
        //----------------------------------
SizedBox(height: 10,),
      Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
    CustomButtonNumber(onTap: (v){
      onTap(v);
    },titel: '6',titelColor: titelColor,),
      CustomButtonNumber(onTap: (v){
      onTap(v);
    },titel: '5',titelColor: titelColor,),
      CustomButtonNumber(onTap: (v){
      onTap(v);
    },titel: '4',titelColor: titelColor,),
   ],),  
        //----------------------------------
SizedBox(height: 10,),
   
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
    CustomButtonNumber(onTap: (v){
      onTap(v);
    },titel: '1',titelColor: titelColor,),
      CustomButtonNumber(onTap: (v){
      onTap(v);
    },titel: '2',titelColor: titelColor,),
      CustomButtonNumber(onTap: (v){
      onTap(v);
    },titel: '3',titelColor: titelColor,),
   ],),
           //----------------------------------
SizedBox(height: 10,),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
    CustomButtonNumber(onTap: (v){
      onTap(v);
    },titel: '0',titelColor: titelColor,),
      CustomButtonNumber(onTap: (v){
      onTap(v);
    },titel: '.',titelColor: titelColor,),
      CustomButtonNumber(onTap: (v){
      onTap(v);
    },titel: '3',titelColor: Colors.transparent,),
   ],),
     ],
    );
  }
}

//=============================================================================

class CustomButtonNumber extends StatelessWidget {
  const CustomButtonNumber({
    Key? key,
    required this.onTap, required this.titel, required this.titelColor,
  }) : super(key: key);

  final ValueSetter onTap;
  final String titel;
  final Color titelColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap(titel);
      
      },
      child: SizedBox(
        height: 50,
        width: 30,
        child: Center(
          child:titel  == '.' ? Icon(Icons.arrow_back_ios , size: 31, color: titelColor,): TextWidget(color: titelColor,size: 31,titel: titel ,weight: FontWeight.w700,),
        ),
      ),
    );
  }
}