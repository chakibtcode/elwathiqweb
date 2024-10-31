
import 'package:elwathiqweb/data/constan_url_api.dart';
import 'package:elwathiqweb/data/curd.dart';
import 'package:elwathiqweb/widgets/spline_area.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:elwathiqweb/widgets/stitics/spline_area.dart';

class HomeController extends GetxController {
  
  void onInit() {
     getData();
    super.onInit();
   
  }
    bool isError =false  ;
bool isLading =  true ;

  SplineAreaData splineAreaData =SplineAreaData(0,0); 
 late var data ;
 

//get data
// linkGetCountHome

//set chart

//
//--------------------------------------
  late int countAllProvider ;
  late int countProviderOnline ;
  late int countOfNewUsers ;
  late int countAllOrders ;
  late int countOfDoneOrders ;
  late int countOfCancelledOrders ;
  late  double revenue  ;
  late  double wasslaProfit  ;

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
          linkGetCountHome,
          {
          
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
   countAllProvider = data['CountAllProvider'] == null ? 0 :data['CountAllProvider'] ;
    countProviderOnline = data['CountProviderOnline'] == null ? 0 :data['CountProviderOnline'];
    countOfNewUsers = data['CountOfNewUsers'] == null ? 0 :data['CountOfNewUsers'];
    countAllOrders = data['CountAllOrders'] == null ? 0 :data['CountAllOrders'];
    countOfDoneOrders = data['CountOfDoneOrders'] == null ? 0 :data['CountOfDoneOrders'];
    countOfCancelledOrders = data['CountOfCancelledOrders'] == null ? 0 :data['CountOfCancelledOrders'];
    //---------------------
     revenue = data['revenue'] == null ? 0.0  : double.parse(data['revenue'].toString()) ;
     wasslaProfit = data['wasslaProfit'] == null ? 0.0  : double.parse(data['wasslaProfit'].toString()) ;
  
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

List<int> hours = [
  0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24,
];

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
