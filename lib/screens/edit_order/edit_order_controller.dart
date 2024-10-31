
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:encrypt/encrypt.dart' as encrypt;

class EditOrderController extends GetxController {
  
  void onInit() {
verfyRigester() ;
    super.onInit();
   
  }
editData(String s , String S , String ){}

  GlobalKey<FormState> key = new GlobalKey<FormState>();
TextEditingController passwordCon = TextEditingController();
TextEditingController usernameCon = TextEditingController();


   String? validatePassword(String? value) {

         final plainText = '{$value}';
  final key = encrypt.Key.fromUtf8('addz7zsazq7d7s7s7d7ssfss77vcde77');
  final iv = encrypt.IV.fromUtf8('abcdefghijklmnop');

  final encrypter = encrypt.Encrypter(encrypt.AES(key));

  final encrypted = encrypter.encrypt(plainText, iv: iv);
  //
  final decrypted = encrypter.decrypt(encrypted, iv: iv);
print('-----------------${encrypted.base64}');

   if (value!.isEmpty) {
      return 'please enter your password';
    }else if (password  !=  '${encrypted.base64}') {
      return 'password is incorrect';
    }
    return null;
  }
//wassla@AB123DC

validateInput() {
    var fromDate = key.currentState;
    if (fromDate!.validate()) {
      print('------------------Tre');
   Get.offNamed("/MainScreen");
    //   Get.toNamed("/OtpScreen");
    } else {
      print('------------------fals');
    }
  }
String password = 'YfsB4oqAuuy14/8DxiXjBXuyMxBIwvddEzn0YKWpvjs=';
 

verfyRigester(){
      print('------------------rrrrrrrrrrrrrrrr');
  
}


//------------------------------

 final List<String> listItems = [
    'pending',
   'comlated',
   'canceled',
  ];
  //
  String selectValue = 'pending';

  //-----------------------------------------------------


  //id o
  String id_o = '1' ;
  //statue
    int statue = 1 ;
  //id s
    String id_s = '1';

  //titel  s
    String titel = 'سطحة بين الولايات';
  //price
    TextEditingController price = TextEditingController (text:  '2000');
   // price.text = '2000';

  //wassla_profit*
    TextEditingController wassla_profit = TextEditingController (text:  '400');
   // wassla_profit.text = '400';

  //distance
    String distance = '20';

  //image
    String image_u = 'xxxx.png';

  //id u
  String id_u = '1';
  //number
  String number_u  = '0552906257';

  //name
  String name_u  = 'chakib';

  //image
      String image_p = 'xxxx.png';
  //id p
   String id_p = '1';
  //number
    String number_p = '0552906257';
  //name
   String name_p = 'chakib';
  //time_start
     String time_start = '2023/08/12 12:12:45';
  //`time_done
     String time_done = '2023/08/12 12:12:45';

  //`time_order`
     String time_order = '2023/08/12 12:12:45';

  //`user_isdone`
  //`pro_isdone
  }
