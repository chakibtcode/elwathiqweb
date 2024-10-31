import 'package:elwathiqweb/constants.dart';
import 'package:elwathiqweb/constants/colors_const.dart';
import 'package:elwathiqweb/responsive.dart';
import 'package:elwathiqweb/widgets/circular.dart';
import 'package:elwathiqweb/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:elwathiqweb/widgets/coustum_selected/custom_dropdown.dart';





class CardStatic0 extends StatelessWidget {
final String selectValue ;
final String selectMonth ;
final String selectYear ;
final List<String> listItems;
final List<String> listMonthes;
final List<String> listYers;
final Function(dynamic) onChangedValue ;
final Function(dynamic) onChangedMonth ;
final Function(dynamic) onChangedYear ;

  //type
  //pricePoint
  //countValue

  CardStatic0({
    Key? key, required this.selectValue, required this.selectMonth,
     required this.selectYear, required this.listItems,
      required this.listMonthes, required this.listYers, required this.onChangedValue, required this.onChangedMonth, required this.onChangedYear
   
  }) : super(key: key);

  @override
     ScrollController con = ScrollController();

  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
     // height: 68,
      height: 85,
     
     // width: double.maxFinite,
     padding: EdgeInsets.all(defaultPadding),
      child: Row(
         // mainAxisSize :MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
      TextWidget(color: colorGray1,size: 18,titel: 'Select Time',weight: FontWeight.w700,),
       SizedBox(width: 10,),
           // Spacer(flex: 1),
       Expanded(      flex: selectValue  =='this month' && Responsive.isMobile(context)  ? 0 :1,
       
       
       child: SizedBox(width: 1,)),
        Expanded(
          flex:  selectValue  =='this month' && Responsive.isMobile(context) ? 1 :0,
          child: SingleChildScrollView(
               primary: false,
              // controller: con,
        

              scrollDirection : Axis.horizontal,
             child: Row(
                  ///    mainAxisSize :MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                       verticalDirection : VerticalDirection.down,
                      // textDirection: TextDirection.ltr,
                    children: [
                    //   SizedBox(
                    // //    width: Get.width == 614 ? null : 55,
                    //     child: Expanded(
                    //       child: Container(
                    //         margin: const EdgeInsets.symmetric(horizontal: 5),
                    //        height: 21,width: 55,
                    //         color: Colors.blue,
                    //       child: Text(' ${Get.height}' ,textAlign:TextAlign.center , style: TextStyle(color: Colors.white),)),
                    //     ),
                    //   ),
                    SizedBox(
                width: 170,
                child: CustomDropDown(
                          value: selectValue,
                          hintText: selectValue,
                          items:listItems,
                             prefixIcon: Padding(padding: EdgeInsets.only(left: 10), child :  TextWidget(height: 1.6 ,color: blackColor,size: 19,titel: 'by',weight: FontWeight.w700,),),
                          validator: (v){},
                          onChanged: onChangedValue,
                        ),),
                        SizedBox(width: 15,),
                           Visibility(visible: selectValue  =='this month' ,
                             child: SizedBox(
                                           width: 170,
                                           child: CustomDropDown(
                                                     value: selectMonth,
                                                     hintText: selectMonth,
                                                     items:listMonthes,
                               prefixIcon: Padding(padding: EdgeInsets.only(left: 10), child :  TextWidget(height: 1.6 ,color: blackColor,size: 19,titel: 'by',weight: FontWeight.w700,),),
                                                     validator: (v){},
                                                     onChanged:onChangedMonth,
                                                   ),),
                           ),
                          SizedBox(width: 15,),
                         
                           Visibility(
                            visible: selectValue  =='this month' ,
                             child: SizedBox(
                                           width: 170,
                                           child: CustomDropDown(
                                                     value: selectYear,
                                                     hintText: selectYear,
                                                     items:listYers,
                               prefixIcon: Padding(padding: EdgeInsets.only(left: 10), child :  TextWidget(height: 1.6 ,color: blackColor,size: 19,titel: 'by',weight: FontWeight.w700,),),
                                                     validator: (v){},
                                                     onChanged: onChangedYear,
                                                   ),),
                           ),
                      //   Container(
                      //   margin: const EdgeInsets.symmetric(horizontal: 5),
                      //  height: 21,width: 55,
                      //   color: Colors.blue,
                      //  child: Text('ggggg3' , style: TextStyle(color: Colors.white),)),  
                      // Container(
                      //   margin: const EdgeInsets.symmetric(horizontal: 5),
                      //  height: 21,width: 55,
                      //   color: Colors.blue,
                      // child: Text('ggggg4' , style: TextStyle(color: Colors.white),)),


                      //  Container(
                      //   margin: const EdgeInsets.symmetric(horizontal: 5),
                      //  height: 21,width: 55,
                      //   color: Colors.blue,
                      // child: Text('ggggg5' , style: TextStyle(color: Colors.white),)), Container(
                      //   margin: const EdgeInsets.symmetric(horizontal: 5),
                      //  height: 21,width: 55,
                      //   color: Colors.blue,
                      // child: Text('ggggg6' , style: TextStyle(color: Colors.white),)), Container(
                      //   margin: const EdgeInsets.symmetric(horizontal: 5),
                      //  height: 21,width: 55,
                      //   color: Colors.blue,
                      // child: Text('ggggg7' , style: TextStyle(color: Colors.white),)),
                      //  Container(
                      //   margin: const EdgeInsets.symmetric(horizontal: 5),
                      //  height: 21,width: 55,
                      //   color: Colors.blue,
                      // child: Text('ggggg8' , style: TextStyle(color: Colors.white),)), 
                      
                      // Container(
                      //   margin: const EdgeInsets.symmetric(horizontal: 5),
                      //  height: 21,width: 55,
                      //   color: Colors.blue,
                      // child: Text('ggggg9' , style: TextStyle(color: Colors.white),)),
                      //       Container(
                      //   margin: const EdgeInsets.symmetric(horizontal: 5),
                      //  height: 21,width: 55,
                      //   color: Colors.blue,
                      // child: Text('ggggg10' , style: TextStyle(color: Colors.white),)),      Container(
                      //   margin: const EdgeInsets.symmetric(horizontal: 5),
                      //  height: 21,width: 55,
                      //   color: Colors.blue,
                      // child: Text('ggggg11' , style: TextStyle(color: Colors.white),)),
                      ],),
           ),
        ),
            
            
        ],
      ),
      //
      
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
    );
  }
}

