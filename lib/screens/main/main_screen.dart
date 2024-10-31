import 'package:elwathiqweb/controllers/MenuController.dart';
import 'package:elwathiqweb/screens/home/home_screen.dart';
import 'package:elwathiqweb/screens/user/user_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:elwathiqweb/controllers/MenuController.dart' as custom_menu;

import '../../constants.dart';
import 'components/header.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  //final MenuController _controller = Get.put(MenuController());
  
  custom_menu.MenuController controller = custom_menu.MenuController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldkey,
      drawer: SideMenu(),
      body:  GetBuilder<ChangeController>(
        init: ChangeController(),
                  builder: (controllerx) => SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              ElevatedButton(onPressed: (){
            controllerx.changeScrenn();
        
              }, child: Text("data")),
              Container(
                padding: EdgeInsets.all(kDefaultPadding),
                constraints: BoxConstraints(maxWidth: kMaxWidth),
                
                child:  SafeArea(child: controllerx.screen)
              ),
            ],
          ),
        ),
      ),
    );
  }
}
