// /// Package import
// import 'package:ecomdz_profit/constants/colors_const.dart';
// import 'package:ecomdz_profit/widgets/custom_text/custom_text.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart' show NumberFormat;

// /// Chart import
// import 'package:syncfusion_flutter_charts/charts.dart';

// /// Local import



// //---
// class LocalizationChart extends StatelessWidget {
//      LocalizationChart({
//     Key? key,
//     required this.titel,
//     required this.chartData,
//     required this.size,
//     required this.isEmpty

//   }) ;

//   final String? titel;
//   final List<ChartSampleData>? chartData;
//   final double? size;
//   final bool? isEmpty;

//   @override

//   String? _title;
//   String? firstSeriesName, secondSeriesName;
//   late TooltipBehavior tooltip;

//   Widget build(BuildContext context) {
//   return _buildLocalizationChart();
//   }

//   Widget _buildLocalizationChart() {
//     _getDataSource();
//     return Container(
//       child:  SingleChildScrollView(
//         scrollDirection : Axis.horizontal,
//         child: SizedBox(
//                   width: size == null ?600: size,
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

//               SfCartesianChart(
//                 plotAreaBorderWidth: 0,
//                 title: ChartTitle(text: titel! ,alignment: ChartAlignment.near, ),
//                 legend: const Legend(isVisible: false),
//                 primaryXAxis: CategoryAxis(
//                     labelIntersectAction: AxisLabelIntersectAction.multipleRows,
//                     majorGridLines: const MajorGridLines(width: 0)),
//                 primaryYAxis: NumericAxis(
//                     axisLine: const AxisLine(width: 0),
                 
//                   //  maximum: 2500,
//                   //  minimum: 500,
//                 //    interval: 500,
//                     majorTickLines: const MajorTickLines(size: 0)),
//                 series: _getColumnSeries(),
//                 tooltipBehavior: TooltipBehavior(enable: true),
//               ),
//             ],
//           ),
//         ),
//       ),
//        decoration: BoxDecoration(
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

//   /// The method returns column series
//   List<ColumnSeries<ChartSampleData, String>> _getColumnSeries() {
//     return <ColumnSeries<ChartSampleData, String>>[
//       ColumnSeries<ChartSampleData, String>(
//           dataSource: chartData!,
//           color: primryColor,
//           xValueMapper: (ChartSampleData sales, _) => sales.x as String,
//           yValueMapper: (ChartSampleData sales, _) => sales.y,
//           name: firstSeriesName),
//       ColumnSeries<ChartSampleData, String>(
//           dataSource: chartData!,
//           color: secondColor,

//           xValueMapper: (ChartSampleData sales, _) => sales.x as String,
//           yValueMapper: (ChartSampleData sales, _) => sales.yValue,
//           name: secondSeriesName)
//     ];
//   }


//   // Method to update data source, title and name of the series based on the culture
//   void _getDataSource() {
//   //  chartData = <ChartSampleData>[
//   //       ChartSampleData(x: 'Monday', y: 1000, yValue: 890),
//   //       ChartSampleData(x: 'Tuesday', y: 1655, yValue: 1892),
//   //       ChartSampleData(x: 'Wednesday', y: 1423, yValue: 1790),
//   //       ChartSampleData(x: 'Thursday', y: 2100, yValue: 2150),
//   //       ChartSampleData(x: 'Friday', y: 1794, yValue: 1694)
//   //     ];
//       _title = 'Sales price comparison of products in a week';
//       firstSeriesName = 'profit';
//       secondSeriesName = 'revenue';
//   }


// }


// /// Private class for storing the spline area chart datapoints.
// class ChartSampleData {
//   ChartSampleData({required this.x, required this.y,  required this.yValue });
//   final String x;
//   final double y;
//   final double yValue;
// }