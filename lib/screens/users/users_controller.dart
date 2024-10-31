
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:encrypt/encrypt.dart' as encrypt;

class UsersController extends GetxController {
  
  void onInit() {
    super.onInit();
   
  }
    bool isError = false ;
bool isLading = false ;

//get data



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
  String selectYear = '2023';
//
  List data = [
    { 'id': 1,'name': 'John',
    'imgUser':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 'age': 25, 'point': 34},
    { 'id': 2,'name': 'Jane',  'imgUser':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' ,'age': 30, 'point': 35},
    { 'id': 3,'name': 'Bob',  'imgUser':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' ,'age': 20, 'point': 23},
    { 'id': 4,'name': 'Alice', 'imgUser':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 'age': 35, 'point': 35},
    { 'id': 5,'name': 'Alice',  'imgUser':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' ,'age': 35, 'point': 35},
    { 'id': 6,'name': 'Alice', 'imgUser':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 'age': 35, 'point': 35},
    { 'id': 7,'name': 'Alice', 'imgUser':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 'age': 35, 'point': 35},
    { 'id': 8,'name': 'Alice', 'imgUser':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 'age': 35, 'point': 35},
    { 'id': 9,'name': 'Alice',  'imgUser':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' ,'age': 35, 'point': 35},
    { 'id': 10,'name': 'Alice', 'imgUser':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 'imgUser':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 'age': 35, 'point': 35},
    { 'id': 11,'name': 'Alice',  'imgUser':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' ,'age': 35, 'point': 35},
    { 'id': 12,'name': 'Alice', 'imgUser':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 'age': 35, 'point': 35},
    { 'id': 13,'name': 'Alice',  'imgUser':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' ,'age': 35, 'point': 35},
  ];


   final List<String> listVarSearch = [
    'id',
'name',
   'age',
    'point'

  ];
  //
  String selectVarSearchr = 'id';
//

                    onChangedValue (v) { 
                      selectValue = v ;
                     update();
                   }
                   //
                    onChangedMonth (v) {  }

//
                     onChangedYear (v) {  }

                     //
                      onChangedVarSearch (v) {  }
                      //
                      List orders =[];
                          int numOrders = 1000;
    int page = 1;
    //
    int pages = 0;
    int perPages = 10;
                       changePage (v) {
                        page = v ;
                        print('---------------------------------------');

                        print(page);
                        update();
                     // pages =  ( numOrders / perPages).ceil();
                         }

bool isLadingTabel = false ;
bool enbalSarchTabel = false ;
TextEditingController searchCon = TextEditingController();
  onchangedSearch(String v){

}

  }
