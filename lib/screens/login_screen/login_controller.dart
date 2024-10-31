
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:encrypt/encrypt.dart' as encrypt;

class LoginController extends GetxController {
  
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

  }
