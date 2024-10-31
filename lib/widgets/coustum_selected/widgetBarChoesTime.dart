import 'package:elwathiqweb/constants/colors_const.dart';
import 'package:elwathiqweb/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';





class WidgetBarChoesTime extends StatelessWidget {
  //type
  //pricePoint
  //countValue

  WidgetBarChoesTime({
    Key? key,
    required this.choesTime1, 
     required this.choesTime1Bool,
     required this.choesTime2,
     required this.choesTime2Bool,
     required this.onTap,
     required this.selectTime1,
     required this.selectTime2,
  }) : super(key: key);

  
 final DateTime choesTime1 ;
final  bool choesTime1Bool ;
final  DateTime choesTime2 ;
 final bool choesTime2Bool ;
  final Function onTap;
  final Function selectTime1;
  final Function selectTime2;

  Widget build(BuildContext context) {
    return Container(
      height: 55,
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () async {
              //  activeWidget();
                //
             selectTime1();
              },
              child: Container(
                //   width: 60,
                height: 46,
                margin: EdgeInsets.symmetric( horizontal: 3),
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  //Border size & Colors
                  border: Border.all(
                      color: choesTime1Bool == true ? primryColor : colorGray1,
                      width: 2.0,
                      style: BorderStyle.solid), //Border.all
    
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget(
                      titel: "Of",
                      size: 11,
                      color: choesTime1Bool == true ? primryColor : colorGray1,
                      weight: FontWeight.w600,
                    ),
                      SizedBox(height: 2,),
                    Visibility(
                      visible: choesTime1Bool,
                      child: TextWidget(
                        titel: choesTime1.toString().substring(0, 10),
                        size: 11,
                        color: primryColor,
                        weight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () async {
              //  activeWidget();
                //
    selectTime2();
              },
              child: Container(
                //   width: 60,
                height: 46,
                 margin: EdgeInsets.symmetric( horizontal: 3),
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  //Border size & Colors
                  border: Border.all(
                      color: choesTime2Bool == true ? primryColor : colorGray1,
                      width: 2.0,
                      style: BorderStyle.solid), //Border.all
    
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget(
                      titel: "until",
                      size: 11,
                      
                      color: choesTime2Bool == true ? primryColor : colorGray1,
                      weight: FontWeight.w600,
                    ),
                    SizedBox(height: 2,),
                    Visibility(
                      visible: choesTime2Bool,
                      child: TextWidget(
                        titel: choesTime2.toString().substring(0, 10),
                        size: 11,
                        color: primryColor,
                        weight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
           onTap();
            },
            child: Container(
              width: 46,
              height: 46,
              margin: EdgeInsets.symmetric(horizontal: 3),
              decoration: BoxDecoration(
                color: choesTime1Bool && choesTime2Bool == true
                    ? primryColor
                    : colorGray1,
                //Border size & Colors
                border: Border.all(
                    color: choesTime1Bool && choesTime2Bool == true
                        ? primryColor
                        : colorGray1,
                    width: 2.0,
                    style: BorderStyle.solid), //Border.all
    
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                  child: Icon(
                Icons.search,
                size: 34,
                color: Colors.white,
              )),
            ),
          ),
        ],
      ),
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
