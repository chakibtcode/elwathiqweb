
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:encrypt/encrypt.dart' as encrypt;

class SettingController extends GetxController {
  
  void onInit() {
    super.onInit();
   
  }
    bool isError = false ;
bool isLading = false ;

//get data


//set chart
  final List<String> listItems = [
    'this day',
   'this Week',
   'this month',
     'this year'
  ];
  //
  String selectValue = 'this day';

  //

   final List<String> listMonthes = [
   'January', 
   'February',
    'March', 
    'April',
     'May', 
     'June', 
     'July', 
      'August',
     'September',
      'October', 
      'November', 
       'December'
  ];
  //
  String selectMonth = 'January';

    //

   final List<String> listYers = [
    '2022',
'2023',
   '2024',
    '2025',
    '2026',
    '2027',
    '2028',
    '2029',
    '2030',
  ];
  //
  String selectYear = '2022';
//
  }
