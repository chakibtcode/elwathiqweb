// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

// class ColumnChart extends StatelessWidget {
//   @override
//   TooltipBehavior? _tooltipBehavior =
//       TooltipBehavior(enable: true, header: '', canShowMarker: false);

//   Widget build(BuildContext context) {
//     return Center(
//       child: SfCartesianChart(
//         primaryXAxis: CategoryAxis(
//           majorGridLines: const MajorGridLines(width: 0),
//         ),
//         primaryYAxis: NumericAxis(
//             axisLine: const AxisLine(width: 0),
//             labelFormat: '{value}',
//             majorTickLines: const MajorTickLines(size: 0)),
//         tooltipBehavior: _tooltipBehavior,

//         // primaryXAxis: CategoryAxis(
//         //   name: '{value}',
//         //   title: AxisTitle(text: "fff"),
//         //   associatedAxisName: 'dd',

//         //   //  axisLine: const AxisLine(width: 0),
//         //   //  labelFormat: '{value}',
//         //   // majorTickLines: const MajorTickLines(size: 0)
//         // ),
//         series: <ChartSeries>[
//           ColumnSeries<SalesData, String>(
//             dataSource: <SalesData>[
//               SalesData('سبت', 35 , 20),
//               SalesData('حد', 28 , 20),
//               SalesData('الاثنين', 34, 20),
//               SalesData('الثلثاء', 32, 20),
//               SalesData('الاربعاء', 40, 20),
//               SalesData('الخميس', 45, 20),
//               SalesData('الجمعة', 48, 20),
//             ],
//             xValueMapper: (SalesData sales, _) => sales.month,
//             yValueMapper: (SalesData sales, _) => sales.sales,
//           )
//         ],
//       ),
//     );
//   }
// }

// class SalesData {
//   final String month;
//   final double sales;
//   final double profit;

//   SalesData(this.month, this.sales, this.profit);
// }
