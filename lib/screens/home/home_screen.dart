import 'package:elwathiqweb/constants/colors_const.dart';
import 'package:elwathiqweb/responsive.dart';
import 'package:elwathiqweb/screens/dashboard/components/my_fields.dart';
import 'package:elwathiqweb/screens/home/home_controller.dart';
import 'package:elwathiqweb/widgets/circular.dart';
import 'package:elwathiqweb/widgets/custom_button/custom_button.dart';
import 'package:elwathiqweb/widgets/custom_card/card_static1.dart';
import 'package:elwathiqweb/widgets/custom_card/card_static2.dart';
import 'package:elwathiqweb/widgets/custom_card/card_static3.dart';
import 'package:elwathiqweb/widgets/custom_card/card_static44.dart';
import 'package:elwathiqweb/widgets/custom_text/custom_text.dart';
import 'package:elwathiqweb/widgets/spline_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../constants.dart';
import 'components/header.dart';


class HomeScreen extends StatelessWidget {
  @override 
   List<SplineAreaData>? chartData  = <SplineAreaData>[
      SplineAreaData(1, 10000),
      SplineAreaData(2, 9000),
      SplineAreaData(3, 10000),
      SplineAreaData(4, 9000),
      SplineAreaData(5, 5000),
      SplineAreaData(6, 4000),
      SplineAreaData(7, 4000),
      SplineAreaData(8, 3000),
      SplineAreaData(9, 3000),
      SplineAreaData(10, 5000),
      SplineAreaData(11, 4000),
      SplineAreaData(12, 1000),
       SplineAreaData(13, 10000),
      SplineAreaData(14, 9000),
      SplineAreaData(15, 10000),
      SplineAreaData(16, 9000),
      SplineAreaData(17, 5000),
      SplineAreaData(18, 4000),
      SplineAreaData(19, 4000),
      SplineAreaData(20, 3000),
      SplineAreaData(21, 3000),
      SplineAreaData(22, 5000),
      SplineAreaData(23, 4000),
      SplineAreaData(24, 1000),


    ];

  Widget build(BuildContext context) {
       final Size _size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
      
        child:  GetBuilder<HomeController>(
                   //   init: HomeController(),
                      builder: (controller) => Column(
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
                  
                  controller.restartData();
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
                
                
                
                :   controller.isLading ?  SizedBox(
          height:  MediaQuery.of(context).size.height * 0.6,                   
           child :  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                   CircularProgressIndicator(
                  color: primryColor,
                             //    value: 40,
                ), ],),)   : Column(
                  children: [
                   
                  
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: [
                           
                                                       //   SizedBox(height: defaultPadding),
         
                              Row(
                            //    mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Flexible(child: CardStatic1(prix: controller.revenue, title: 'this day', subtitle:'revenue',)),
                                  SizedBox(width: defaultPadding),
                                  Flexible(child: CardStatic1(prix: controller.wasslaProfit, title: 'this day', subtitle: 'profit',)),
                                ],
                              ),                            SizedBox(height: defaultPadding),
        // SizedBox(
        //     height: 130,
        //   child:          Circular(radius:  55, nbr_done: 50, nbr_no_done: 100, color: green,)
        // ),
          SizedBox(height: defaultPadding),
                                  CardStatic2( numOrder:  controller.countAllOrders,numCanaled :controller.countOfCancelledOrders ,numDone :controller.countOfDoneOrders  ),
                              SizedBox(height: defaultPadding),
                                    Row(
                                      children: [
                                        SplineArea(
                                                                  isEmpty: false ,
                                                                  
                                                                  titel: 'Chart Explain Order in day',
                                                                   chartData:controller.chartData, 
                                                                   size: 600,
                                                                   ),
                                      ],
                                    ),
                            //  RecentFiles(),
                              if (Responsive.isMobile(context))
                                SizedBox(height: defaultPadding),
                              if (Responsive.isMobile(context))  Column(
                                children: [
                                  CardStatic3( subtitle: 'provider online',title : 'this moment', numProviderOnline: controller.countProviderOnline, numAllProvider:  controller.countAllProvider,),
                             SizedBox(height: defaultPadding),
                               CardStatic4X(prix:  controller.countOfNewUsers.toDouble(), subtitle: 'new user',title : 'this moment',),
                                ],
                              ),
                            ],
                          ),
                        ),
                        if (!Responsive.isMobile(context))
                          SizedBox(width: defaultPadding),
                        // On Mobile means if the screen is less than 850 we don't want to show it
                        if (!Responsive.isMobile(context))
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                 CardStatic3( subtitle: 'provider online',title : 'this moment',  numProviderOnline: controller.countProviderOnline, numAllProvider:  controller.countAllProvider),
                                SizedBox(height: defaultPadding),
                               CardStatic4X(prix:  controller.countOfNewUsers.toDouble(), subtitle: 'new user',title : ' this day',),
                              ],
                            ),
                          ),
                      ],
                     
                    )
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



