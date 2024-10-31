import 'package:elwathiqweb/constants.dart';
import 'package:elwathiqweb/constants/colors_const.dart';
import 'package:elwathiqweb/controllers/MenuAppController.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: witheColor,
      child: GetBuilder<MenuAppController>(
      init: MenuAppController(),
      builder: (controller) => ListView(
          children: [
            DrawerHeader(
             // child: Image.asset("assets/images/logo.png"),
             child:  Padding(
               padding: const EdgeInsets.symmetric(horizontal : 5.0),
               child: SvgPicture.asset(
                          "assets/images/logo.svg",
                        ),
             ),
            ),
            DrawerListTile(
              title: "Home",
             icon: Icons.home_filled,              press: () {
                
                controller.changeMenu(1);
              },isSelect:controller.indexSelect == 1 ?  true : false,
            ),
            DrawerListTile(
              title: "Orders",
 icon: Icons.grid_view_rounded,              press: () {
      
                controller.changeMenu(2);
              },isSelect:controller.indexSelect == 2 ?  true : false,
            ),
            DrawerListTile(
              title: "Payment",
 icon: Icons.attach_money_rounded,              press: () {
      
                controller.changeMenu(3);
              },isSelect:controller.indexSelect == 3 ?  true : false,
            ),
            DrawerListTile(
              title: "Users",
 icon: Icons.person, press: () {
      
                controller.changeMenu(4);
              },isSelect:controller.indexSelect == 4 ?  true : false,            ),
            DrawerListTile(
              title: "Providers",
 icon: Icons.person,              press: () {
      
                controller.changeMenu(5);
              },isSelect:controller.indexSelect == 5 ?  true : false,
            ),
            DrawerListTile(
              title: "Coupon",
 icon: Icons.redeem_rounded,              press: () {
      
                controller.changeMenu(6);
              },isSelect:controller.indexSelect == 6 ?  true : false,
            ),
            DrawerListTile(
              title: "Settings",
 icon: Icons.settings_rounded,              press: () {
      
                controller.changeMenu(7);
              },isSelect:controller.indexSelect == 7 ?  true : false,
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.icon,
    required this.press,
    required this.isSelect,
  }) : super(key: key);

  final String title;
   final IconData icon;
  final VoidCallback press;
  final bool isSelect;

  @override
  Widget build(BuildContext context) {
    return    Container(
              margin: EdgeInsets.only(right: 5),
                 decoration: BoxDecoration(
                  color: isSelect ? redBluer : null , 
                borderRadius: BorderRadius.only(bottomRight:Radius.circular(14) , topRight:Radius.circular(14) ),
             
              ),
           
      child: ListTile(
        onTap: press,
        horizontalTitleGap: 0.0,
        leading:Icon(icon,  color: isSelect ? primryColor : secondColor ,),
        //  SvgPicture.asset(
        //   svgSrc,
        //   color: isSelect ? Colors.white : Colors.white54 ,
        // //  colorFilter:  ColorFilter.mode( Colors.white54 , BlendMode.srcIn),
        //   height: 16,
        // ),
        title: Text(
          title,
          style:  TextStyle(color: isSelect ? primryColor : secondColor ),
        ),
      ),
    );
  }
}
