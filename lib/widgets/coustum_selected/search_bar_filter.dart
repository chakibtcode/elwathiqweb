import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:elwathiqweb/constants/colors_const.dart';
import 'package:elwathiqweb/widgets/custom_text/custom_text.dart';

class SearchBarFilter extends StatelessWidget {
final int select ;
  final ValueSetter onTap;
  //type
  //pricePoint
  //countValue

  SearchBarFilter({
    Key? key,
    required this.onTap,  required this.select,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
      height: 37,
     
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        TextWidget(
                      titel: "Search By :",
                      size: 12,
                      
                       color: blackColor,
                      weight: FontWeight.w600,
                    ),
          //
          Container(color: colorGray1,width: 2, height: 26,),
         InkWell(
            onTap: (){
              onTap(1);
            },
            child: Container(
                height: 28,
                padding: EdgeInsets.symmetric(horizontal: 8),
              child: Center(
                child: TextWidget(
                              titel: "ProductName ",
                              size: 12,
                              
                              color:select == 1 ? witheColor : blackColor,
                              weight: FontWeight.w600,
                            ),
              ),
                             decoration: BoxDecoration(
             color: select == 1 ? primryColor : witheColor,
              borderRadius: BorderRadius.circular(5),
              boxShadow:      select!= 1 ? null : [
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
             //
               Container(color: colorGray1,width: 2, height: 26,),
            InkWell(
            onTap: (){
              onTap(2);
            },
               child: Container(
                height: 28,
                padding: EdgeInsets.symmetric(horizontal: 8),
                         child: Center(
                child: TextWidget(
                              titel: "Product Code",
                              size: 12,
                              
                                color:select == 2 ? witheColor : blackColor,
                              weight: FontWeight.w600,
                            ),
                         ),
                             decoration: BoxDecoration(
                        color: select == 2 ? primryColor : witheColor,
                         borderRadius: BorderRadius.circular(5),
                         boxShadow:    select!= 2 ? null : [
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
          //
           
        ],
      ),
      //

      decoration: BoxDecoration(
       color: Colors.white,
        borderRadius: BorderRadius.circular(5),
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
    );
  }
}



