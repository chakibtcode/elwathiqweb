import 'package:elwathiqweb/constants/colors_const.dart';
import 'package:flutter/material.dart';

import 'package:elwathiqweb/widgets/custom_text/custom_text.dart';

class SelectCurrent extends StatelessWidget {
  const SelectCurrent({
    Key? key,
    required this.titel,
    required this.price,
    required this.image,
    required this.onTap,
    required this.selected,
    required this.value,
 
  }) : super(key: key);
  final String titel;
  final double price;
  final String image;
  final int selected;
  final int value;
 final ValueSetter onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap(value);
      },

      autofocus: true,
      hoverColor: Colors.blue,
      // focusColor: Colors.red,
      splashColor: Colors.blue,
      child: Container(
       //    width: 80,
        height: 60 ,
        padding: EdgeInsets.symmetric(horizontal: 5),
        margin: EdgeInsets.symmetric(horizontal: 5),
      //  padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/$image' , height: 31,width: 31,),
            TextWidget(
              height: 0.8,
              color: value == selected ? blackColor : colorGray2 ,size: 12,titel: ' $titel / $price ',weight: FontWeight.w700,),
         
          ],
        ),
         
        decoration: BoxDecoration(
           color: feiledTextColor,
            border: Border.all(width: 2, color: value == selected ? primryColor : feiledTextColor),
            borderRadius: BorderRadius.circular(7)),
      ),
    );
  }
}

//=============================================================================

