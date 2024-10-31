import 'package:flutter/gestures.dart';
import 'package:elwathiqweb/routes.dart';

import 'package:elwathiqweb/constants.dart';
import 'package:elwathiqweb/controllers/MenuAppController.dart';
import 'package:elwathiqweb/routes.dart';
import 'package:elwathiqweb/screens/main/main_screen.dart';
import 'package:elwathiqweb/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wassla',
  scrollBehavior: MyCustomScrollBehavior(),

      getPages: routesFilex,
    //  home:SplashScreen(),
      home:MainScreen(),
      
      );
  }
}


   class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    PointerDeviceKind.stylus,
    PointerDeviceKind.unknown,
  };
}


//8000
//12400