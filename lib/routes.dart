 import 'package:elwathiqweb/screens/login_screen/login_view.dart';
import 'package:elwathiqweb/screens/main/main_screen.dart';
import 'package:elwathiqweb/screens/edit_order/edit_order_view.dart';
import 'package:get/get.dart';
// import 'package:elwathiqweb/routes/auth_screen/main_screen.dart';
// import 'package:elwathiqweb/routes/auth_screen/otp/otp_screen.dart';
// import 'package:elwathiqweb/routes/auth_screen/rigester/rigester_screen.dart';

// import 'package:elwathiqweb/routes/auth_screen/singin/singin_screen.dart';
// import 'package:elwathiqweb/routes/home_screen/home_veiw.dart';
// import 'package:elwathiqweb/routes/notefecation_screen/notefecation_veiw.dart';
// import 'package:elwathiqweb/routes/onBordoring_screen/screeen_bordoring.dart';
// import 'package:elwathiqweb/routes/historic_screen/historic_veiw.dart';
// import 'package:elwathiqweb/routes/order_screen/order_veiw.dart';
// import 'package:elwathiqweb/routes/servies_screen/servies_veiw.dart';
// import 'package:elwathiqweb/routes/setting_screen/setting_veiw.dart';
// import 'package:elwathiqweb/routes/workShop_screen/workshop_see.dart';

List<GetPage<dynamic>> routesFilex = [
  GetPage(
      name: "/LoginView",
      page: () => LoginView(),
      transition: Transition.downToUp,
      transitionDuration: Duration(
        milliseconds: 550,
      )),

 GetPage(
      name: "/MainScreen",
      page: () => MainScreen(),
      transition: Transition.downToUp,
      transitionDuration: Duration(
        milliseconds: 550,
      )),
      
 GetPage(
      name: "/EditOrderView",
      page: () => EditOrderView(),
      transition: Transition.downToUp,
      transitionDuration: Duration(
        milliseconds: 550,
      )),
      
  // GetPage(
  //     name: "/MainScreen",
  //     page: () => MainScreen(),
  //     transition:
  //         '5'.tr == 'العربية' ? Transition.leftToRight : Transition.rightToLeft,
  //     transitionDuration: Duration(
  //       milliseconds: 450,
  //     )),
  // GetPage(
  //     name: "/SingInScreen",
  //     page: () => SingInScreen(),
  //     transition: '5'.tr == 'العربية'
  //         ? Transition.leftToRightWithFade
  //         : Transition.rightToLeftWithFade,
  //     transitionDuration: Duration(
  //       milliseconds: 450,
  //     )),
  // GetPage(
  //     name: "/OtpScreen",
  //     page: () => OtpScreen(),
  //     transition: '5'.tr == 'العربية'
  //         ? Transition.leftToRightWithFade
  //         : Transition.rightToLeftWithFade,
  //     transitionDuration: Duration(
  //       milliseconds: 450,
  //     )),
  // GetPage(
  //     name: "/RigesterScreen",
  //     page: () => RigesterScreen(),
  //     transition: '5'.tr == 'العربية'
  //         ? Transition.leftToRightWithFade
  //         : Transition.rightToLeftWithFade,
  //     transitionDuration: Duration(
  //       milliseconds: 450,
  //     )),
  // GetPage(
  //     name: "/ServiesVeiw",
  //     page: () => ServiesVeiw(),
  //     transition: '5'.tr == 'العربية'
  //         ? Transition.leftToRightWithFade
  //         : Transition.rightToLeftWithFade,
  //     transitionDuration: Duration(
  //       milliseconds: 400,
  //     )),
  // GetPage(
  //     name: "/NotefecationVeiw",
  //     page: () => NotefecationVeiw(),
  //     transition: '5'.tr == 'العربية'
  //         ? Transition.leftToRightWithFade
  //         : Transition.rightToLeftWithFade,
  //     transitionDuration: Duration(
  //       milliseconds: 400,
  //     )),
  // GetPage(
  //     name: "/HistoricVeiw",
  //     page: () => HistoricVeiw(),
  //     transition: '5'.tr == 'العربية'
  //         ? Transition.leftToRightWithFade
  //         : Transition.rightToLeftWithFade,
  //     transitionDuration: Duration(
  //       milliseconds: 400,
  //     )),
  // GetPage(
  //     name: "/mainVeiw",
  //     page: () => mainVeiw(),
  //     transition: Transition.downToUp,
  //     transitionDuration: Duration(
  //       milliseconds: 50,
  //     )),
  // GetPage(
  //     name: "/SettingVeiw",
  //     page: () => SettingVeiw(),
  //     transition: Transition.downToUp,
  //     transitionDuration: Duration(
  //       milliseconds: 350,
  //     )),
  // GetPage(
  //     name: "/WorkShopSee",
  //     page: () => WorkShopSee(),
  //     transition: Transition.downToUp,
  //     transitionDuration: Duration(
  //       milliseconds: 350,
  //     )),
  // GetPage(
  //     name: "/OrderVeiw",
  //     page: () => OrderVeiw(),
  //     transition: Transition.downToUp,
  //     transitionDuration: Duration(
  //       milliseconds: 50,
  //     )),
  // GetPage(
  //     name: "/WorkShopSee",
  //     page: () => WorkShopSee(),
  //     transition: '5'.tr == 'العربية'
  //         ? Transition.leftToRightWithFade
  //         : Transition.rightToLeftWithFade,
  //     transitionDuration: Duration(
  //       milliseconds: 350,
  //     )),
];
