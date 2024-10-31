import 'package:elwathiqweb/constants/colors_const.dart';
import 'package:elwathiqweb/controllers/MenuAppController.dart';
import 'package:elwathiqweb/responsive.dart';
import 'package:elwathiqweb/screens/home/home_controller.dart';
import 'package:elwathiqweb/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../constants.dart';

class Header extends StatelessWidget {
   Header({
    Key? key,
  }) : super(key: key);

  @override
  MenuAppController controller = Get.find();
  HomeController conHome = Get.find();
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      padding: EdgeInsets.symmetric(horizontal: 7),
         decoration: BoxDecoration(
                     color: witheColor,
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
      child: Row(
        children: [
          if (!Responsive.isDesktop(context))
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: controller.controlMenu,
            ),
          if (!Responsive.isMobile(context))
           TextWidget(
                          color: primaryColor,
                          size: 21,
                          height: 1.1,
                          titel: 'Home',
                          weight: FontWeight.w800,
                        ),
          
          if (!Responsive.isMobile(context))
            Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
   
       //    Spacer(flex: 1),
       IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                    conHome.restartData();
                      },
                      icon: Icon(
                      Icons.restart_alt ,
                    //    size: 35,
                      ),
                    ),
        ],
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/profile_pic.png",
            height: 38,
          ),
          if (!Responsive.isMobile(context))
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              child: Text("Angelina Jolie"),
            ),
          Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        fillColor: secondaryColor,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(defaultPadding * 0.75),
            margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: SvgPicture.asset("assets/icons/Search.svg"),
          ),
        ),
      ),
    );
  }
}