
import 'package:elwathiqweb/data/constan_url_api.dart';
import 'package:elwathiqweb/data/curd.dart';
import 'package:elwathiqweb/widgets/spline_area.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:encrypt/encrypt.dart' as encrypt;

class OrdersController extends GetxController {
  
  void onInit() {
    getData();
    super.onInit();
   
  }
    bool isError = false ;
bool isLading = true ;

//get data

 int selectedIndexTime = 1 ;
    String linkSelectCountOrder  = linkGetCountOrderToday ;
String varGet = 'order_hour';

List  listGet = [
  0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24,
];
List<int> hours = [
  0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24,
];

List<int> days = [
   0, 1, 2, 3, 4, 5, 6, 7
];
 
List<int> daysMonth = [
   0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24,25,26,27,28,29,30,31
];

List<int> yers = [
  0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12
];
  changeItemSelecteTime (int i ){
    chartData = [];
selectedIndexTime = i ;
isLading = true ;
update();

if(i == 1){
linkSelectCountOrder  = linkGetCountOrderToday ;
varGet = 'order_hour';
listGet = hours;
}else if(i == 2){
linkSelectCountOrder  = linkGetCountOrderWeek ;
varGet = 'day_name';
listGet = days;
}else if(i == 3){
linkSelectCountOrder  = linkGetCountOrderMonth ;
varGet = 'order_day';
listGet = daysMonth;
}else if(i == 4){
linkSelectCountOrder  = linkGetCountOrderYear ;
varGet = 'order_m';
listGet = yers;
}
getData();
  }



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
    //

   final List<String> listStatue = [
    'All',
'Completed',
   'Declined',
    'Pending'
 
  ];
  //
  String selectStatue = 'All';


//
Map x = {
   'id_o': 1,
   'statue': 1,
   'id_s': 1,
   'titel_s': 'خدمة سطحة بين الولايات',
   //--
   'price': 2000.00,
   'wassla_profit': 2000.00,
   'distance': '20.5',
   'duration': '15',
   //
    'img_u':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 
   'id_u': 1,
   'num_u': '552906257',
'fname_u': 'chakib',
'sname_u': 'tcode',
 //
    'img_p':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 
   'id_p': 1,
   'num_p': '552906257',
'fname_p': 'mohmed',
'sname_p': 'tcode',
//
 'time_order': '12:25:12 2023/11/12',
  'time_start': '12:25:12 2023/11/12',
  'time_done': '12:25:12 2023/11/12',
  'user_isdone':1,
  'pro_isdone': 1,


    };


 List dataX = [
   {
   'id_o': 1,
   'statue': 1,
   'id_s': 1,
   'titel_s': 'خدمة سطحة بين الولايات',
   //--
   'price': 2000.00,
   'wassla_profit': 2000.00,
   'distance': '20.5',
   'duration': '15',
   //
    'img_u':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 
   'id_u': 1,
   'num_u': '552906257',
'fname_u': 'chakib',
'sname_u': 'tcode',
 //
    'img_p':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 
   'id_p': 1,
   'num_p': '552906257',
'fname_p': 'mohmed',
'sname_p': 'tcode',
//
  'time_order': '12:25:12 2023/11/12',
  'time_start': '12:25:12 2023/11/12',
  'time_done': '12:25:12 2023/11/12',
  'user_isdone':1,
  'pro_isdone': 1,},


//*************************************************** */
     {
   'id_o': 2,
   'statue': 2,
   'id_s': 1,
   'titel_s': 'خدمة سطحة بين الولايات',
   //--
   'price': 2000.00,
   'wassla_profit': 2000.00,
   'distance': '20.5',
   'duration': '15',
   //
    'img_u':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 
   'id_u': 1,
   'num_u': '552906257',
'fname_u': 'chakib',
'sname_u': 'tcode',
 //
    'img_p':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 
   'id_p': 1,
   'num_p': '552906257',
'fname_p': 'mohmed',
'sname_p': 'tcode',
//
  'time_order': '12:25:12 2023/11/12',
  'time_start': '12:25:12 2023/11/12',
  'time_done': '12:25:12 2023/11/12',
  'user_isdone':1,
  'pro_isdone': 1,},

  
//*************************************************** */
     {
   'id_o': 3,
   'statue': 3,
   'id_s': 1,
   'titel_s': 'خدمة سطحة بين الولايات',
   //--
   'price': 2000.00,
   'wassla_profit': 2000.00,
   'distance': '20.5',
   'duration': '15',
   //
    'img_u':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 
   'id_u': 1,
   'num_u': '552906257',
'fname_u': 'chakib',
'sname_u': 'tcode',
 //
    'img_p':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 
   'id_p': 1,
   'num_p': '552906257',
'fname_p': 'mohmed',
'sname_p': 'tcode',
//
  'time_order': '12:25:12 2023/11/12',
  'time_start': '12:25:12 2023/11/12',
  'time_done': '12:25:12 2023/11/12',
  'user_isdone':1,
  'pro_isdone': 1,},
//*************************************************** */
     {
   'id_o': 4,
   'statue': 3,
   'id_s': 1,
   'titel_s': 'خدمة سطحة بين الولايات',
   //--
   'price': 2000.00,
   'wassla_profit': 2000.00,
   'distance': '20.5',
   'duration': '15',
   //
    'img_u':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 
   'id_u': 1,
   'num_u': '552906257',
'fname_u': 'chakib',
'sname_u': 'tcode',
 //
    'img_p':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 
   'id_p': 1,
   'num_p': '552906257',
'fname_p': 'mohmed',
'sname_p': 'tcode',
//
  'time_order': '12:25:12 2023/11/12',
  'time_start': '12:25:12 2023/11/12',
  'time_done': '12:25:12 2023/11/12',
  'user_isdone':1,
  'pro_isdone': 1,},
//*************************************************** */
     {
   'id_o': 5,
   'statue': 4,
   'id_s': 1,
   'titel_s': 'خدمة سطحة بين الولايات',
   //--
   'price': 2000.00,
   'wassla_profit': 2000.00,
   'distance': '20.5',
   'duration': '15',
   //
    'img_u':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 
   'id_u': 1,
   'num_u': '552906257',
'fname_u': 'chakib',
'sname_u': 'tcode',
 //
    'img_p':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 
   'id_p': 1,
   'num_p': '552906257',
'fname_p': 'mohmed',
'sname_p': 'tcode',
//
  'time_order': '12:25:12 2023/11/12',
  'time_start': '12:25:12 2023/11/12',
  'time_done': '12:25:12 2023/11/12',
  'user_isdone':1,
  'pro_isdone': 1,},
//*************************************************** */
     {
   'id_o': 6,
   'statue': 5,
   'id_s': 1,
   'titel_s': 'خدمة سطحة بين الولايات',
   //--
   'price': 2000.00,
   'wassla_profit': 2000.00,
   'distance': '20.5',
   'duration': '15',
   //
    'img_u':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 
   'id_u': 1,
   'num_u': '552906257',
'fname_u': 'chakib',
'sname_u': 'tcode',
 //
    'img_p':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 
   'id_p': 1,
   'num_p': '552906257',
'fname_p': 'mohmed',
'sname_p': 'tcode',
//
  'time_order': '12:25:12 2023/11/12',
  'time_start': '12:25:12 2023/11/12',
  'time_done': '12:25:12 2023/11/12',
  'user_isdone':1,
  'pro_isdone': 1,},
//*************************************************** */
     {
   'id_o': 7,
   'statue': 6,
   'id_s': 1,
   'titel_s': 'خدمة سطحة بين الولايات',
   //--
   'price': 2000.00,
   'wassla_profit': 2000.00,
   'distance': '20.5',
   'duration': '15',
   //
    'img_u':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 
   'id_u': 1,
   'num_u': '552906257',
'fname_u': 'chakib',
'sname_u': 'tcode',
 //
    'img_p':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 
   'id_p': 1,
   'num_p': '552906257',
'fname_p': 'mohmed',
'sname_p': 'tcode',
//
  'time_order': '12:25:12 2023/11/12',
  'time_start': '12:25:12 2023/11/12',
  'time_done': '12:25:12 2023/11/12',
  'user_isdone':1,
  'pro_isdone': 1,},
//*************************************************** */
     {
   'id_o': 8,
   'statue': 5,
   'id_s': 1,
   'titel_s': 'خدمة سطحة بين الولايات',
   //--
   'price': 2000.00,
   'wassla_profit': 2000.00,
   'distance': '20.5',
   'duration': '15',
   //
    'img_u':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 
   'id_u': 1,
   'num_u': '552906257',
'fname_u': 'chakib',
'sname_u': 'tcode',
 //
    'img_p':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 
   'id_p': 1,
   'num_p': '552906257',
'fname_p': 'mohmed',
'sname_p': 'tcode',
//
  'time_order': '12:25:12 2023/11/12',
  'time_start': '12:25:12 2023/11/12',
  'time_done': '12:25:12 2023/11/12',
  'user_isdone':1,
  'pro_isdone': 1,},
  //*************************************************** */
     {
   'id_o': 9,
   'statue': 1,
   'id_s': 1,
   'titel_s': 'خدمة سطحة بين الولايات',
   //--
   'price': 2000.00,
   'wassla_profit': 2000.00,
   'distance': '20.5',
   'duration': '15',
   //
    'img_u':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 
   'id_u': 1,
   'num_u': '552906257',
'fname_u': 'chakib',
'sname_u': 'tcode',
 //
    'img_p':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 
   'id_p': 1,
   'num_p': '552906257',
'fname_p': 'mohmed',
'sname_p': 'tcode',
//
  'time_order': '12:25:12 2023/11/12',
  'time_start': '12:25:12 2023/11/12',
  'time_done': '12:25:12 2023/11/12',
  'user_isdone':1,
  'pro_isdone': 1,},//*************************************************** */
     {
   'id_o': 10,
   'statue': 1,
   'id_s': 1,
   'titel_s': 'خدمة سطحة بين الولايات',
   //--
   'price': 2000.00,
   'wassla_profit': 2000.00,
   'distance': '20.5',
   'duration': '15',
   //
    'img_u':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 
   'id_u': 1,
   'num_u': '552906257',
'fname_u': 'chakib',
'sname_u': 'tcode',
 //
    'img_p':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 
   'id_p': 1,
   'num_p': '552906257',
'fname_p': 'mohmed',
'sname_p': 'tcode',
//
  'time_order': '12:25:12 2023/11/12',
  'time_start': '12:25:12 2023/11/12',
  'time_done': '12:25:12 2023/11/12',
  'user_isdone':1,
  'pro_isdone': 1,},//*************************************************** */
     {
   'id_o': 11,
   'statue': 1,
   'id_s': 1,
   'titel_s': 'خدمة سطحة بين الولايات',
   //--
   'price': 2000.00,
   'wassla_profit': 2000.00,
   'distance': '20.5',
   'duration': '15',
   //
    'img_u':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 
   'id_u': 1,
   'num_u': '552906257',
'fname_u': 'chakib',
'sname_u': 'tcode',
 //
    'img_p':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 
   'id_p': 1,
   'num_p': '552906257',
'fname_p': 'mohmed',
'sname_p': 'tcode',
//
  'time_order': '12:25:12 2023/11/12',
  'time_start': '12:25:12 2023/11/12',
  'time_done': '12:25:12 2023/11/12',
  'user_isdone':1,
  'pro_isdone': 1,},//*************************************************** */
     {
   'id_o': 12,
   'statue': 1,
   'id_s': 1,
   'titel_s': 'خدمة سطحة بين الولايات',
   //--
   'price': 2000.00,
   'wassla_profit': 2000.00,
   'distance': '20.5',
   'duration': '15',
   //
    'img_u':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 
   'id_u': 1,
   'num_u': '552906257',
'fname_u': 'chakib',
'sname_u': 'tcode',
 //
    'img_p':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 
   'id_p': 1,
   'num_p': '552906257',
'fname_p': 'mohmed',
'sname_p': 'tcode',
//
  'time_order': '12:25:12 2023/11/12',
  'time_start': '12:25:12 2023/11/12',
  'time_done': '12:25:12 2023/11/12',
  'user_isdone':1,
  'pro_isdone': 1,},//*************************************************** */
     {
   'id_o': 13,
   'statue': 1,
   'id_s': 1,
   'titel_s': 'خدمة سطحة بين الولايات',
   //--
   'price': 2000.00,
   'wassla_profit': 2000.00,
   'distance': '20.5',
   'duration': '15',
   //
    'img_u':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 
   'id_u': 1,
   'num_u': '552906257',
'fname_u': 'chakib',
'sname_u': 'tcode',
 //
    'img_p':'https://cdn-icons-png.flaticon.com/512/3177/3177440.png' , 
   'id_p': 1,
   'num_p': '552906257',
'fname_p': 'mohmed',
'sname_p': 'tcode',
//
  'time_order': '12:25:12 2023/11/12',
  'time_start': '12:25:12 2023/11/12',
  'time_done': '12:25:12 2023/11/12',
  'user_isdone':1,
  'pro_isdone': 1,},
     ];





   final List<String> listVarSearch = [
    'Id Service',
'Id User',
   'Name User',
   'Number User',
'Id Provider',
   'Name Provider',
   'Number Provider',

  ];
  //
  String selectVarSearchr = 'Id Service';
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
                       onChangedStatue (v) {  }
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
bool iisErrorTabel = false ;
bool enbalSarchTabel = false ;
TextEditingController searchCon = TextEditingController();
  onchangedSearch(String v){

}
//-----------------------------------------------------------------



  SplineAreaData splineAreaData =SplineAreaData(0,0); 
 late var data ;
 

//get data
// linkGetCountHome

//set chart

//
//--------------------------------------

   int countAllOrders =0;
   int countOfDoneOrders =0;
   int countOfCancelledOrders=0;
   int countOfPendingOrders =0;


//   {
//     "statu": "suc",
//     "data": {
//         "CountAllProvider": 74,
//         "CountProviderOnline": 0,
//         "CountOfNewUsers": 0,
//         "CountAllOrders": 1,
//         "CountOfDoneOrders": 1,
//         "CountOfCancelledOrders": 0,
//         "revenue": 200.2,
//         "wasslaProfit": 200
//     },
//     "chart": {
//         "statu": "suc",
//         "data": [
//             {
//                 "order_hour": "11",
//                 "number_of_orders": 1
//             }
//         ]
//     }
// }

    late  double porProfit  ;
  late var date ;
 late  var chartDataStatu ;
 
  Crud curd = Crud();
  List<Map<String, dynamic>> chartDataGet = [] ;

 getData() async {
  isError = false ;
  isLading = true ;
  update();
  //send requst 
   var response = await curd.postRequest(
          linkGetCountOrderToday,
          {
          'xxx' : 'vvv'
          },
         );

  //get response and verfy
if (response != null) {

    String statu = response['statu'];


    if (statu == 'suc') {
  //if truth get data 
  //save on locel
    isLading = false ;
  update();
   print(response);
  var data = response['data'];
       
  //
 
    countAllOrders = data['count_all_orders'] == null ? 0 :data['count_all_orders'];
    countOfDoneOrders = data['count_done_orders'] == null ? 0 :data['count_done_orders'];
    countOfCancelledOrders = data['count_cancel_orders'] == null ? 0 :data['count_cancel_orders'];
    countOfPendingOrders = data['count_pending_orders'] == null ? 0 :data['count_pending_orders'];
    //---------------------

     //calculate profit 
   
print('porProfit--------------------------------------------------------');
  //dism ladings
  print('*----------------------------------------');
  //go homeprofitLast
 
   date = response['date'];
  //
   chartDataStatu = response['chart']['statu'];
//

//chartDataGet = response['chartData']['data'];
if(chartDataStatu == 'suc'){
 response['chart']['data'].forEach((element) { 
  chartDataGet.add( {
    "order_hour":int.parse(element['order_hour']),
    "number_of_orders":element['number_of_orders'],
  },);
});

}else{
   chartDataGet =[];
}



 
setDataOnChart();


    }else  if (statu == 'feil') {
//if non dissm lading veiw message fals
    isLading = false ;

isError = true ;
update();
//
//  showDialog(
//           useRootNavigator: false,
//           barrierDismissible: true,
//           useSafeArea: true,
//           context: Get.context!,
//           builder: (context) {
//             return WorongNotefication(
//               message: response['message'],
//               titel: 'Wrong',
//             );
//           });


    }



}else{
 isLading = false ;

//
isError = true ;
update();
//notefecation erre
//  showDialog(
//           useRootNavigator: false,
//           barrierDismissible: true,
//           useSafeArea: true,
//           context: Get.context!,
//           builder: (context) {
//             return ErroerNotefication(
//               message: 'some Error happened try agin',
//               titel: 'Error',
//             );
//           });
}
  

  }
  //--------------------------------------------------------
  List<SplineAreaData> chartData  = <SplineAreaData>[];
  // List<SplineAreaData>? chartData  = <SplineAreaData>[
  //     SplineAreaData(1, 10.53),
  //     SplineAreaData(2, 9.5),
  //     SplineAreaData(3, 10),
  //     SplineAreaData(4, 9.4),
  //     SplineAreaData(5, 5.8),
  //     SplineAreaData(6, 4.9),
  //     SplineAreaData(7, 4.5),
  //     SplineAreaData(8, 3.6),
  //     SplineAreaData(9, 3.43),
  //     SplineAreaData(10, 5.43),
  //     SplineAreaData(11, 4.43),
  //     SplineAreaData(12, 1.43),
  //      SplineAreaData(13, 10.53),
  //     SplineAreaData(14, 9.5),
  //     SplineAreaData(15, 10),
  //     SplineAreaData(16, 9.4),
  //     SplineAreaData(17, 5.8),
  //     SplineAreaData(18, 4.9),
  //     SplineAreaData(19, 4.5),
  //     SplineAreaData(20, 3.6),
  //     SplineAreaData(21, 3.43),
  //     SplineAreaData(22, 5.43),
  //     SplineAreaData(23, 4.43),
  //     SplineAreaData(24, 1.43),


  //   ];


       //--------------------------------------------------------------
// List<Map<String, dynamic>> data = [
//   {
//     "order_hour": 20,
//     "number_of_orders":4,
//   },

//  ];


List<Map<String, dynamic>> listDay = [];

setDataOnChart(){
  print(("chartDataGet--------------------------------------------"));

 // print(chartDataGet[0]['number_of_orders']);
  for (int hour in hours) {
  Map<String, dynamic> hourData = {
    "element": hour,
    "number_of_orders": 0,
  };
   splineAreaData =  SplineAreaData(double.parse(hour.toString()) ,0  );
  for (var item in chartDataGet) {
     //print(("item--------------------------------------------"));

  //print(item);
    if (item["order_hour"] == hour) {
       // print(("hour--------------------------------------------"));

  //print(hour);
  //  hourData["number_of_orders"] = item["number_of_orders"];
      splineAreaData =  SplineAreaData(double.parse(item["order_hour"].toString()) ,double.parse(item["number_of_orders"].toString())  );
      hourData["number_of_orders"] = item["number_of_orders"];
      
      break;
    }
  }
listDay.add(hourData);
 if (splineAreaData.y1 != null){
  chartData.add(splineAreaData);

 }


}
//print('-*-----------------------');

//print(listDay);
 isLading = false ;
 update();
}


//-----------------------------------------------------------
 


  //--------------------------------------------
  restartData(){
    isLading = true ;
    isError = true ;
update();

getData();
   // Get.offAndToNamed('/Home');
    //Get.offAll(RestartScreen());
    //Get.offNamed('/Home');
  
  } 
  }
