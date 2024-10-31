import 'package:elwathiqweb/constants/colors_const.dart';
import 'package:elwathiqweb/controllers/MenuAppController.dart';
import 'package:elwathiqweb/responsive.dart';
import 'package:elwathiqweb/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  @override
  MenuAppController controller = Get.put(MenuAppController());

  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      backgroundColor: bgColor2,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: SideMenu(),
              ),
            GetBuilder<MenuAppController>(
      init: MenuAppController(),
      builder: (controller) => Expanded(
                // It takes 5/6 part of the screen
                flex: 5,
                child: controller .screenSeleect [controller.indexSelect-1] ,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
