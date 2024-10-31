import 'package:flutter/material.dart';

import 'package:elwathiqweb/widgets/custom_text/custom_text.dart';

class CustomButton3 extends StatelessWidget {
  const CustomButton3({
    Key? key,
    required this.titel,
    required this.onTap,
    required this.color,
    required this.colorBord,
    required this.titelColor,
    this.width,
    this.height,
  }) : super(key: key);
  final String titel;
  final double? width;
  final double? height;

  final Color? color;
  final Color? titelColor;
  final Color? colorBord;

  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },

      autofocus: true,
      hoverColor: Colors.blue,
      // focusColor: Colors.red,
      splashColor: Colors.blue,
      child: Container(
       //    width: 80,
        height: 28 ,
        padding: EdgeInsets.symmetric(horizontal: 5),
      //  padding: const EdgeInsets.all(8.0),
        child: Center(
          child: TextWidget(
            height: 0.8,
            color: titelColor,size: 12,titel: titel,weight: FontWeight.w700,) 
          // TextWidget(
          //   color: titelColor,
          //   size: 22,
          //   titel: titel,
          //   weight: FontWeight.w700,
          // ),
        ),
     
        decoration: BoxDecoration(
        //    color: color,
            border: Border.all(width: 1, color: colorBord!),
            borderRadius: BorderRadius.circular(7)),
      ),
    );
  }
}

//=============================================================================

