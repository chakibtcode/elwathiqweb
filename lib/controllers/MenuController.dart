import 'package:elwathiqweb/screens/home/home_screen.dart';
import 'package:elwathiqweb/screens/user/user_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class MenuController extends GetxController {
Widget screen = UserScreen();

  RxInt _selectedIndex = 0.obs;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int get selectedIndex => _selectedIndex.value;
  List<String> get menuItems =>
      ["Cases", "Services", "About Us", "Careers", "Blog", "Contact"];
  GlobalKey<ScaffoldState> get scaffoldkey => _scaffoldKey;

  void openOrCloseDrawer() {
    if (_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openEndDrawer();
    } else {
      _scaffoldKey.currentState!.openDrawer();
    }
  }

  void setMenuIndex(int index) {
    _selectedIndex.value = index;
  }

  changeScrenn(){
    if(screen == UserScreen()){
screen = HomeScreen();
update();
    }else{
screen = UserScreen();
update();

      
    }
  }
}


class ChangeController extends GetxController {
Widget screen = UserScreen();

    int cc = 1 ;

  changeScrenn(){
    cc++;
    print("www $cc ");
  
   if(cc.isEven){
     screen = HomeScreen();

   }else{
     screen = UserScreen();
   }
   update();
  }
}