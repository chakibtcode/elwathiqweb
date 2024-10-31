import 'package:elwathiqweb/constants/colors_const.dart';
import 'package:flutter/material.dart';

import 'package:elwathiqweb/widgets/custom_text/custom_text.dart';

class CustomButtonSlide extends StatelessWidget {
  const CustomButtonSlide({
    Key? key,
    required this.titel,
    required this.onTap,
    required this.color,
    required this.colorBord,
    required this.titelColor,
  }) : super(key: key);
  final String titel;
  final Color? color;
  final Color? titelColor;
  final Color? colorBord;

  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return      InkWell(
       onTap: () {
        onTap();
      },
      child: SizedBox(
            height: 51,
            child: Stack(children: [
              Container(  decoration: BoxDecoration(
                                   color: secondColor,
                                  
                                   borderRadius: BorderRadius.only(bottomLeft: Radius.circular(18) , bottomRight: Radius.circular(18))),  ),
            
              Row(children: [
            
              Expanded(
                         child: AnimatedContainer(duration: Duration(milliseconds: 100) , 
                         child: Center(child: TextWidget(color: witheColor,size: 19,titel: 'Singin',weight: FontWeight.w600,)) ,
                         decoration: BoxDecoration(
                                     color:titel == '1' ?  secondColor : primryColor,
                                  
                                   borderRadius: BorderRadius.only(bottomRight: Radius.circular(18) ,  bottomLeft: Radius.circular(18))), ),
                       ),
                       Expanded(
                         child: AnimatedContainer(duration: Duration(milliseconds: 100) , 
                         child: Center(child: TextWidget(color: witheColor,size: 19,titel: 'rigester',weight: FontWeight.w600,)) ,
                         decoration: BoxDecoration(
                                   color:titel == '2' ?  secondColor : primryColor,
                                  
                                   borderRadius: BorderRadius.only(bottomRight: Radius.circular(18) , bottomLeft: Radius.circular(18))), ),
                       ),
              ],),
            ],)),
    );
  }
}

//=============================================================================

