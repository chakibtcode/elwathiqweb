import 'package:elwathiqweb/constants/colors_const.dart';
import 'package:elwathiqweb/responsive.dart';
import 'package:elwathiqweb/screens/dashboard/components/my_fields.dart';
import 'package:elwathiqweb/screens/users/users_controller.dart';
import 'package:elwathiqweb/widgets/circular.dart';
import 'package:elwathiqweb/widgets/custom_button/custom_button.dart';
import 'package:elwathiqweb/widgets/custom_card/card_static0.dart';
import 'package:elwathiqweb/widgets/custom_card/card_static1.dart';
import 'package:elwathiqweb/widgets/custom_card/card_static2.dart';
import 'package:elwathiqweb/widgets/custom_card/card_static3.dart';
import 'package:elwathiqweb/widgets/custom_card/card_static44.dart';
import 'package:elwathiqweb/widgets/custom_card/card_static5.dart';
import 'package:elwathiqweb/widgets/custom_text/custom_text.dart';
import 'package:elwathiqweb/widgets/spline_area.dart';
import 'package:flutter/material.dart';
import 'package:elwathiqweb/widgets/tabol/tabol_user.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../constants.dart';
import 'components/header.dart';


class UsersScreen extends StatelessWidget {
  @override 
   List<SplineAreaData>? chartData  = <SplineAreaData>[
      SplineAreaData(1, 10.53),
      SplineAreaData(2, 9.5),
      SplineAreaData(3, 10),
      SplineAreaData(4, 9.4),
      SplineAreaData(5, 5.8),
      SplineAreaData(6, 4.9),
      SplineAreaData(7, 4.5),
      SplineAreaData(8, 3.6),
      SplineAreaData(9, 3.43),
      SplineAreaData(10, 5.43),
      SplineAreaData(11, 4.43),
      SplineAreaData(12, 1.43),
       SplineAreaData(13, 10.53),
      SplineAreaData(14, 9.5),
      SplineAreaData(15, 10),
      SplineAreaData(16, 9.4),
      SplineAreaData(17, 5.8),
      SplineAreaData(18, 4.9),
      SplineAreaData(19, 4.5),
      SplineAreaData(20, 3.6),
      SplineAreaData(21, 3.43),
      SplineAreaData(22, 5.43),
      SplineAreaData(23, 4.43),
      SplineAreaData(24, 1.43),


    ];

  List data = [
    { 'id': 1,'name': 'John', 'age': 25, 'point': 34},
    { 'id': 2,'name': 'Jane', 'age': 30, 'point': 35},
    { 'id': 3,'name': 'Bob', 'age': 20, 'point': 23},
    { 'id': 4,'name': 'Alice', 'age': 35, 'point': 35},
    { 'id': 5,'name': 'Alice', 'age': 35, 'point': 35},
    { 'id': 6,'name': 'Alice', 'age': 35, 'point': 35},
    { 'id': 7,'name': 'Alice', 'age': 35, 'point': 35},
    { 'id': 8,'name': 'Alice', 'age': 35, 'point': 35},
    { 'id': 9,'name': 'Alice', 'age': 35, 'point': 35},
    { 'id': 10,'name': 'Alice', 'age': 35, 'point': 35},
    { 'id': 11,'name': 'Alice', 'age': 35, 'point': 35},
    { 'id': 12,'name': 'Alice', 'age': 35, 'point': 35},
    { 'id': 13,'name': 'Alice', 'age': 35, 'point': 35},
  ];

  Widget build(BuildContext context) {
       final Size _size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
      
        child:   GetBuilder<UsersController>(
                      init: UsersController(),
                      builder: (controller) =>Column(
            children: [
               Header(),
              Padding(
                 padding: EdgeInsets.all(defaultPadding),
                child: controller.isError    ?
                
                  Padding(
                    padding:  EdgeInsets.only(top: _size.height *0.15),
                    child: SizedBox(
                    height:  290,                   
                     child :  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                      
                        SvgPicture.asset(
                            "assets/images/logo.svg",
                            width: 200,
                          ),
                                SizedBox(
                                height: 25,
                              ),
                                TextWidget(
                            color: primryColor,
                            size: 26,
                            height: 1.5,
                            titel: 'Oops!',
                            weight: FontWeight.w700,
                          ),
                           TextWidget(
                            color: colorGray2,
                            size: 21,
                            height: 1.5,
                            titel: 'Something went wrong,',
                            weight: FontWeight.w500,
                          ),
                            TextWidget(
                            color: colorGray2,
                            size: 21,
                            height: 1.5,
                            titel: 'please try again',
                            weight: FontWeight.w500,
                          ),
                             SizedBox(
                                height: 20,
                              ),
                            CustomButton(
                              width: 240,
                              onTap: () {
                                 print('********************************');
                           // controller.updatIdDevice();
                  
                  
                                // controller.controlareSilder.nextPage(
                                //     duration: Duration(milliseconds: 300),
                                //     curve: Curves.easeInOutQuint);
                              },
                              titel: 'Retry',
                              titelColor:primryColor  ,
                              color: bgColor2,
                              colorBord: primryColor,
                            ),
                       ],
                     ),),
                  )
                
                
                
                : controller.  isLading ?  SizedBox(
          height:  MediaQuery.of(context).size.height * 0.6,                   
           child :  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                   CircularProgressIndicator(
                  color: primryColor,
                             //    value: 40,
                ), ],),)   : Column(
                  children: [
                CardStatic0(selectValue: controller.selectValue, selectMonth: controller.selectMonth, selectYear:controller.selectYear, listItems: controller.listItems, listMonthes: controller.listMonthes, listYers: controller.listYers, onChangedValue: (v) {  }, onChangedMonth: (v) {  }, onChangedYear: (v) {  },),
                      SizedBox(height: defaultPadding),
                    
                              Row(
                            //    mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Flexible(child:    CardStatic4X(prix: 5000, subtitle: 'new user',title : 'this moment',),),
                                  SizedBox(width: defaultPadding),
                                  Flexible(child:   CardStatic4X(prix: 5000, subtitle: 'new user',title : 'this moment',),),
                                if (!Responsive.isMobile(context))
            Flexible(child: Padding(
              padding: const EdgeInsets.only(left: defaultPadding),
              child: CardStatic5(title: 'order', prix: 500, subtitle: 'this day', topTitle: 'All', color: redColor, porsontage: 1,)
            )),     
                                ],
                              ), 
                                SizedBox(height: defaultPadding),
                                if (Responsive.isMobile(context))
       CardStatic5(title: 'order', prix: 500, subtitle: 'this day', topTitle: 'All',color: redColor, porsontage: 0.5,)         ,  
              SizedBox(height: defaultPadding),
        Row(children: [  Flexible(child:                               UserTable(
                                                                            
                                                                            searchCon: controller.searchCon,
                                                                               onChangedFeiled:  (v) { controller.onchangedSearch(v); } ,
                                                                             enbalSarchTabel: controller.enbalSarchTabel,
                                                                             isLadingTabel: controller.isLadingTabel,
                                                                             page: controller.page,
                                                                             pages: controller.pages,
                                                                            data:controller.data.sublist(0,10),
                                                                            selectValue: controller.selectValue, selectMonth: controller.selectMonth, selectVarSearchr: controller.selectVarSearchr,
                                                                             selectYear:controller.selectYear, listItems: controller.listItems, 
                                                                             listMonthes: controller.listMonthes,   listVarSearch: controller.listVarSearch, 
                  listYers: controller.listYers, onChangedValue: (v) { controller.onChangedValue (v);}, onChangedMonth: (v) {  }, onChangedYear: (v) {controller. selectYear =v ;  }, onChangedVarSearch: (v) {controller. selectVarSearchr =v ;  }, changePage: (v) { controller.changePage(v);},),),],)
                   
        
        //                   Row(
        //                     crossAxisAlignment: CrossAxisAlignment.start,
        //                     children: [
        //                       Expanded(
        //                         flex: 5,
        //                         child: Column(
        //                           children: [
                           
        //                                                      //   SizedBox(height: defaultPadding),
        
        //                             Row(
        //                           //    mainAxisSize: MainAxisSize.max,
        //                               mainAxisAlignment: MainAxisAlignment.spaceAround,
        //                               children: [
        //                                 Flexible(child:  CardStatic5X(title: 'fddf', prix: 55515, subtitle: 'dddddvcv',)),
        //                                 SizedBox(width: defaultPadding),
        //                                 Flexible(child:  CardStatic5X(title: 'fddf', prix: 55515, subtitle: 'dddddvcv',)),
        //                               ],
        //                             ),           
        //                                if (Responsive.isMobile(context))
        //                         Row(
        //                           //    mainAxisSize: MainAxisSize.max,
        //                               mainAxisAlignment: MainAxisAlignment.spaceAround,
        //                               children: [
        //                                 Flexible(child:  CardStatic5X(title: 'fddf', prix: 55515, subtitle: 'dddddvcv',)),
        //                                 SizedBox(width: defaultPadding),
        //                                 Flexible(child:  CardStatic5X(title: 'fddf', prix: 55515, subtitle: 'dddddvcv',)),
        //                               ],
        //                             ),                 SizedBox(height: defaultPadding),
        // // SizedBox(
        // //     height: 130,
        // //   child:          Circular(radius:  55, nbr_done: 50, nbr_no_done: 100, color: green,)
        // // ),
        //                             //    CardStatic2X(prix: 454546564, title: 'Total profit today', subtitle: 'this day',),
        //                             SizedBox(height: defaultPadding),
        //                                   Row(
        //                                     children: [
        //                                       SplineArea(
        //                                                                 isEmpty: false ,
                                                                  
        //                                                                 titel: 'Chart Explain Order in day',
        //                                                                  chartData:chartData, 
        //                                                                  size: 600,
        //                                                                  ),
        //                                     ],
        //                                   ),
        //                                     SizedBox(height: defaultPadding),
        //                                                                          ScrollableTable(user:data.sublist(0,10),),
        
                                  
        //                           //  RecentFiles(),
        //                             if (Responsive.isMobile(context))
        //                               SizedBox(height: defaultPadding),
        //                           //   if (Responsive.isMobile(context))  Column(
        //                           //     children: [
        //                           //       CardStatic3X(prix: 5000, subtitle: 'provider online',title : 'this moment',),
        //                           //  SizedBox(height: defaultPadding),
        //                           //    CardStatic4X(prix: 5000, subtitle: 'new user',title : 'this moment',),
        //                           //     ],
        //                           //   ),
        //                           ],
        //                         ),
        //                       ),
        //                       if (!Responsive.isMobile(context))
        //                         SizedBox(width: defaultPadding),
        //                       // On Mobile means if the screen is less than 850 we don't want to show it
        //                       if (!Responsive.isMobile(context))
        //                         Expanded(
        //                           flex: 2,
        //                           child: Column(
        //                             children: [
        //                               CardStatic5X(title: 'fddf', prix: 55515, subtitle: 'dddddvcv',),
        //                               SizedBox(height: defaultPadding),
        //                              CardStatic5X(title: 'fddf', prix: 55515, subtitle: 'dddddvcv',),
        //                             ],
        //                           ),
        //                         ),
        //                     ],
        //                   )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



