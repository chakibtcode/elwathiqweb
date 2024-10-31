import 'package:elwathiqweb/screens/dashboard/dashboard_screen.dart';
import 'package:elwathiqweb/screens/home/home_controller.dart';
import 'package:elwathiqweb/screens/home/home_screen.dart';
import 'package:elwathiqweb/screens/order/order_screen.dart';
import 'package:elwathiqweb/screens/user/user_screen.dart';
import 'package:elwathiqweb/screens/users/users_screen.dart';
import 'package:elwathiqweb/screens/provider/provider_screen.dart';
import 'package:elwathiqweb/screens/cobun/cobun_screen.dart';
import 'package:elwathiqweb/screens/setting/setting_screen.dart';
import 'package:elwathiqweb/screens/payment/payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuAppController extends GetxController {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  void controlMenu() {
    if (!_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openDrawer();
    }
  }

int indexSelect = 1 ;
  void changeMenu(int index) {
    indexSelect =index ; 
    update() ;
  }
  final conHome = Get.lazyPut(() => HomeController() , fenix: true);
  final conOrder = Get.lazyPut(() => OrderScreen() , fenix: true);

  List screenSeleect = [HomeScreen()  ,OrderScreen () ,PaymentScreen () ,UsersScreen  () ,ProviderScreen()
  
  ,CobunScreen(),SettingScreen()
  //,DashboardScreen() , UserScreen()
  ];
  
  }
