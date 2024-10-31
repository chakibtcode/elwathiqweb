// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

// class OneMonthChart extends StatefulWidget {
//   @override
//   _OneMonthChartState createState() => _OneMonthChartState();
// }

// class _OneMonthChartState extends State<OneMonthChart> {
//   @override
//   Widget build(BuildContext context) {
//     return SfCartesianChart(
//       primaryXAxis: DateTimeAxis(
//         intervalType: DateTimeIntervalType.days,
//         interval: 1,
//         //  dateFormat: DateFormat.MMMd(),
//       ),
//       series: <LineSeries>[
//         LineSeries<SalesData, DateTime>(
//           dataSource: <SalesData>[
//             SalesData(DateTime(2022, 01, 01), 35),
//             SalesData(DateTime(2022, 01, 02), 28),
//             SalesData(DateTime(2022, 01, 03), 34),
//             SalesData(DateTime(2022, 01, 04), 32),
//             SalesData(DateTime(2022, 01, 05), 40),
//             SalesData(DateTime(2022, 01, 06), 45),
//             SalesData(DateTime(2022, 01, 07), 48),
//             SalesData(DateTime(2022, 01, 08), 50),
//             SalesData(DateTime(2022, 01, 09), 45),
//             SalesData(DateTime(2022, 01, 10), 43),
//             SalesData(DateTime(2022, 01, 11), 38),
//             SalesData(DateTime(2022, 01, 12), 30),
//             SalesData(DateTime(2022, 01, 13), 29),
//             SalesData(DateTime(2022, 01, 14), 35),
//             SalesData(DateTime(2022, 01, 15), 38),
//             SalesData(DateTime(2022, 01, 16), 35),
//             SalesData(DateTime(2022, 01, 17), 28),
//             SalesData(DateTime(2022, 01, 18), 34),
//             SalesData(DateTime(2022, 01, 19), 32),
//             SalesData(DateTime(2022, 01, 20), 40),
//             SalesData(DateTime(2022, 01, 21), 45),
//             SalesData(DateTime(2022, 01, 22), 48),
//             SalesData(DateTime(2022, 01, 23), 50),
//             SalesData(DateTime(2022, 01, 24), 45),
//             SalesData(DateTime(2022, 01, 25), 43),
//             SalesData(DateTime(2022, 01, 26), 38),
//             SalesData(DateTime(2022, 01, 27), 30),
//             SalesData(DateTime(2022, 01, 28), 29),
//             SalesData(DateTime(2022, 01, 29), 35),
//             SalesData(DateTime(2022, 01, 30), 38),
//           ],
//           xValueMapper: (SalesData salesdata, _) => salesdata.year,
//           yValueMapper: (SalesData salesdata, _) => salesdata.sales,
//         )
//       ],
//     );
//   }
// }

// class SalesData {
//   final DateTime year;
//   final double sales;

//   SalesData(this.year, this.sales);
// }


// //------------------------------------------------------------------------
