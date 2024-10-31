// /// Package import
// import 'package:ecomdz_profit/constants/colors_const.dart';
// import 'package:ecomdz_profit/widgets/custom_text/custom_text.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// /// Chart import
// import 'package:syncfusion_flutter_charts/charts.dart';


// class SplineArea extends StatefulWidget {
//      SplineArea({
//     Key? key,
//     required this.titel,
//     required this.chartData,
//     required this.size,
//     required this.isEmpty

//   }) ;

//   final String? titel;
//   final List<SplineAreaData>? chartData;
//   final double? size;
//   final bool? isEmpty;


//   @override
//   State<SplineArea> createState() => _SplineAreaState(titel:titel, chartData: chartData, size: size ,isEmpty: isEmpty );
// }

// class _SplineAreaState extends State<SplineArea> {
//   @override
//      _SplineAreaState({
//     Key? key,
//     required this.titel,
//     required this.chartData,
//     required this.size ,
//  required this.isEmpty
//   }) ;

//   final String? titel;
//   final List<SplineAreaData>? chartData;
//   final double? size;
//   final bool? isEmpty;

//   //
//   Widget build(BuildContext context) {
//     return Container(
//       child: SingleChildScrollView(
//         scrollDirection : Axis.horizontal,
//         child: SizedBox(
//           width: size == null ?600: size,
//           child: Stack(
//             children: [
//               Visibility(
//                 visible: isEmpty!,
//                 child: Padding(
//                   padding:  EdgeInsets.only(left: 40 , top: 40),
//                   child: Column(
//                     children: [
//                       Image.asset('assets/images/no_tasks.png'),
//                         TextWidget(color: primryColor,size: 14,titel: "no data chart",weight: FontWeight.w500,),
//                     ],
//                   ),
//                 ),
//               ),

//               _buildSplineAreaChart(),
//             ],
//           )))
//     ,
//      decoration: BoxDecoration(
//             color: witheColor,
//         borderRadius: BorderRadius.circular(8),
//         boxShadow: const [
//           BoxShadow(
//             //ifs select change shadow color
//             color: colorShadow,
//             offset: Offset(
//               0.0,
//               0.40,
//             ),
//             blurRadius: 5.0,
//             spreadRadius: 0.1,
//           ),
//           //BoxShadow
//           BoxShadow(
//             color: Colors.white,
//             offset: Offset(0.0, 0.0),
//             blurRadius: 0.0,
//             spreadRadius: 0.0,
//           ) //BoxShadow
//         ],
//       ),
//     );
//   }

//   //---------------------------------------------------------------------------------
//   /// Returns the cartesian spline are chart.
//   SfCartesianChart _buildSplineAreaChart() {
//     return SfCartesianChart(
      
//       legend: const Legend(isVisible: false, opacity: 0.7),
//       title: ChartTitle(text: titel!  ,alignment: ChartAlignment.near, ),
//       plotAreaBorderWidth: 0,
//       primaryXAxis: NumericAxis(
//           interval: 1,
//           majorGridLines: const MajorGridLines(width: 0),
//           edgeLabelPlacement: EdgeLabelPlacement.shift),
//       primaryYAxis: NumericAxis(
//           labelFormat: '{value}',
//           axisLine: const AxisLine(width: 0),
//           majorTickLines: const MajorTickLines(size: 0)),
//       series: _getSplieAreaSeries(),
//       tooltipBehavior: TooltipBehavior(enable: true),
//     );
//   }

//   //---------------------------------------------------------------------------------
      
//     //   List data = [
//     //     {
//     //         "order_hour": 11,
//     //         "number_of_orders": 1
//     //     },
//     //     {
//     //         "order_hour": 19,
//     //         "number_of_orders": 4
//     //     },
//     //     {
//     //         "order_hour": 24,
//     //         "number_of_orders": 2
//     //     }
//     // ];
//     //   List hours = [ 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,15,16,17,18,19,20,21,22,23,24];

//     //   List listDay1 = [{"element" :  11 , 'number_of_orders' : 1} , 
//     //   {"element" :  19 , 'number_of_orders' : 4}, 
//     //   {"element" :  23 , 'number_of_orders' : 2} ];
//     //   List listDay2 = [
//     //     {"element" :  1 , 'number_of_orders' : 0} , 
//     //     {"element" :  2 , 'number_of_orders' : 0} , 
//     //     {"element" :  3 , 'number_of_orders' : 0} , 
//     //     {"element" :  4 , 'number_of_orders' : 0} , 
//     //     {"element" :  5 , 'number_of_orders' : 0} , 
//     //     {"element" :  6 , 'number_of_orders' : 0} , 
//     //     {"element" :  7 , 'number_of_orders' : 0} , 
//     //     {"element" :  8 , 'number_of_orders' : 0} , 
//     //     {"element" :  9 , 'number_of_orders' : 0} , 
//     //     {"element" :  10 , 'number_of_orders' : 0} , 



//     //     {"element" :  11 , 'number_of_orders' : 1} , 
//     //     {"element" :  12 , 'number_of_orders' : 0} , 
//     //     {"element" :  13 , 'number_of_orders' : 0} , 
//     //     {"element" :  14 , 'number_of_orders' : 0} , 
//     //     {"element" :  15 , 'number_of_orders' : 0} , 
//     //     {"element" :  16 , 'number_of_orders' : 0} , 
//     //     {"element" :  17 , 'number_of_orders' : 0} , 
//     //     {"element" :  18 , 'number_of_orders' : 0} , 
//     //     {"element" :  19 , 'number_of_orders' : 4}, 
//     //     {"element" :  20 , 'number_of_orders' : 0}, 
//     //     {"element" :  21 , 'number_of_orders' : 0}, 
//     //     {"element" :  22 , 'number_of_orders' : 0}, 
//     //     {"element" :  23 , 'number_of_orders' : 2}, 
//     //     {"element" :  24 , 'number_of_orders' : 0},
        
        
//     //     ];  

//     //   xx(){
//     //     hours.forEach((element) {
//     //       data.where((elementx) {
            
//     //        bool x =  elementx['order_hour'] == "2023-09-13 $element:00:00";

//     //       var value = x == false ?  0.0 :  x ;

//     //        listChart?.add({"element" :  element , 'x' : x});
//     //         return x ;
//     //         });
//     //     });
//     //   }

//       //--------------------------------------------------------------

// //-----------------------------------------------------------
// // List<Map<String, dynamic>> data = [
// //   {
// //     "order_hour": "Sunday",
// //     "number_of_orders": 1,
// //   },
// //   {
// //     "order_hour": "Monday",
// //     "number_of_orders": 4,
// //   },
// //   {
// //     "order_hour": "Friday",
// //     "number_of_orders": 2,
// //   },
// // ];

// // List<String> hours = [
// //   "Sunday","Monday", "Tuesday", "Wednesday", "Thursday", "Friday","Saturday"
// // ];



// // List<Map<String, dynamic>> listDay = [];

// // generatList(){for (String hour in hours) {
// //   Map<String, dynamic> hourData = {
// //     "element": hour,
// //     "number_of_orders": 0,
// //   };

// //   for (var item in data) {
// //     if (item["order_hour"] == hour) {
// //       hourData["number_of_orders"] = item["number_of_orders"];
// //       break;
// //     }
// //   }

// //   listDay.add(hourData);
// // }

// // print(listDay);
// // }

// //i have list 
//   // List<SplineAreaData>? chartData  = <SplineAreaData>[
//   //     SplineAreaData(1, 10.53),
//   //     SplineAreaData(2, 9.5),
//   //     SplineAreaData(3, 10),
//   //     SplineAreaData(4, 9.4),
//   //     SplineAreaData(5, 5.8),
//   //     SplineAreaData(6, 4.9),
//   //     SplineAreaData(7, 4.5),
//   //     SplineAreaData(8, 3.6),
//   //     SplineAreaData(9, 3.43),
//   //     SplineAreaData(10, 5.43),
//   //     SplineAreaData(11, 4.43),
//   //     SplineAreaData(12, 1.43),
//   //      SplineAreaData(13, 10.53),
//   //     SplineAreaData(14, 9.5),
//   //     SplineAreaData(15, 10),
//   //     SplineAreaData(16, 9.4),
//   //     SplineAreaData(17, 5.8),
//   //     SplineAreaData(18, 4.9),
//   //     SplineAreaData(19, 4.5),
//   //     SplineAreaData(20, 3.6),
//   //     SplineAreaData(21, 3.43),
//   //     SplineAreaData(22, 5.43),
//   //     SplineAreaData(23, 4.43),
//   //     SplineAreaData(24, 1.43),


//   //   ];


//   //---------------------------------------------------------------------------------
// /// Returns the list of chart series
//   /// which need to render on the spline area chart.
//   List<ChartSeries<SplineAreaData, double>> _getSplieAreaSeries() {
//     return <ChartSeries<SplineAreaData, double>>[
//       SplineAreaSeries<SplineAreaData, double>(
//         dataSource: chartData!,
//         color: secondColor.withOpacity(0.5),
//         borderColor: primryColor,
//         borderWidth: 2,
//         name: 'Order',
//         xValueMapper: (SplineAreaData sales, _) => sales.year,
//         yValueMapper: (SplineAreaData sales, _) => sales.y1,
//       ),
    
//     ];
//   }
// }



// /// Private class for storing the spline area chart datapoints.
// class SplineAreaData {
//   SplineAreaData(this.year, this.y1);
//   final double year;
//   final double y1;
// }


