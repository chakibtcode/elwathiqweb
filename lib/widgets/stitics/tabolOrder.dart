// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:fp_manger_app/routes/4-orderScreen/orderController.dart';
// import 'package:fp_manger_app/theme.dart';
// import 'package:get/get.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

// class TableOrder extends StatefulWidget {
//   final List data;

//   const TableOrder({super.key, required this.data});
//   @override
//   _TableOrderState createState() => _TableOrderState(data: data);
// }

// class _TableOrderState extends State<TableOrder> {
//   final List data;
//   _TableOrderState({required this.data});

//   OrderController controler = Get.find();

//   // List data = [
//   //   {'name': 'John', 'age': 25, 'point': 34, 'email': 34},
//   //   {'name': 'Jane', 'age': 30, 'point': 35},
//   //   {'name': 'Bob', 'age': 20, 'point': 23},
//   //   {'name': 'Alice', 'age': 35, 'point': 35},
//   //   {'name': 'Alice', 'age': 35, 'point': 35},
//   //   {'name': 'Alice', 'age': 35, 'point': 35},
//   //   {'name': 'Alice', 'age': 35, 'point': 35},
//   //   {'name': 'Alice', 'age': 35, 'point': 35},
//   //   {'name': 'Alice', 'age': 35, 'point': 35},
//   //   {'name': 'Alice', 'age': 35, 'point': 35},
//   //   {'name': 'Alice', 'age': 35, 'point': 35},
//   //   {'name': 'Alice', 'age': 35, 'point': 35},
//   //   {'name': 'Alice', 'age': 35, 'point': 35},
//   // ];

//   bool _sortAscending = true;

//   void _sortData(String column) {
//     setState(() {
//       _sortAscending = !_sortAscending;
//       data.sort((a, b) {
//         int numsortAscending = (_sortAscending ? 1 : -1);
//         int result =
//             (numsortAscending * (a[column].compareTo(b[column]))).toInt();
//         return result;
//       });
//       // (_sortAscending ? 1 : -1) *
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.vertical,
//       child: SingleChildScrollView(
//         scrollDirection: Axis.horizontal,
//         child: DataTable(
//           columns: [
//             //  `orders`('idO' ,`idOU`, `urlGig`, `imgGig`, `titlGig`, `nameUser`, `imgUser`, `favor`,
// //
//             DataColumn(
//                 label: Text('idO'),
//                 onSort: (columnIndex, ascending) => _sortData('idO')),
//             DataColumn(
//                 label: Text('idOU'),
//                 onSort: (columnIndex, ascending) => _sortData('idOU')),

//             DataColumn(
//                 label: Text('imgGig'),
//                 onSort: (columnIndex, ascending) => _sortData('imgGig')),
//             DataColumn(
//                 label: Text('urlGig'),
//                 onSort: (columnIndex, ascending) => _sortData('urlGig')),
//             DataColumn(
//                 label: Text('titlGig'),
//                 onSort: (columnIndex, ascending) => _sortData('titlGig')),
//             DataColumn(
//                 label: Text('nameUser'),
//                 onSort: (columnIndex, ascending) => _sortData('nameUser')),
//             DataColumn(
//                 label: Text('imgUser'),
//                 onSort: (columnIndex, ascending) => _sortData('imgUser')),
//             DataColumn(
//                 label: Text('favor'),
//                 onSort: (columnIndex, ascending) => _sortData('favor')),
// //   `timeEnter`, `timeDone`, `typeOrder`, `doneOrder`, `activeOrder`,

//             DataColumn(
//                 label: Text('timeEnter'),
//                 onSort: (columnIndex, ascending) => _sortData('timeEnter')),
//             DataColumn(
//                 label: Text('timeDone'),
//                 onSort: (columnIndex, ascending) => _sortData('timeDone')),
//             DataColumn(
//                 label: Text('typeOrder'),
//                 onSort: (columnIndex, ascending) => _sortData('typeOrder')),
//             DataColumn(
//                 label: Text('doneOrder'),
//                 onSort: (columnIndex, ascending) => _sortData('doneOrder')),
//             DataColumn(
//                 label: Text('activeOrder'),
//                 onSort: (columnIndex, ascending) => _sortData('activeOrder')),
// //  `countS`, `countN`, `countE`, `pricePon`, `timeVeiw`)
//             DataColumn(
//                 label: Text('countS'),
//                 onSort: (columnIndex, ascending) => _sortData('countS')),
//             DataColumn(
//                 label: Text('countN'),
//                 onSort: (columnIndex, ascending) => _sortData('countN')),
//             DataColumn(
//                 label: Text('countE'),
//                 onSort: (columnIndex, ascending) => _sortData('countE')),
//             DataColumn(
//                 label: Text('pricePon'),
//                 onSort: (columnIndex, ascending) => _sortData('pricePon')),
//             DataColumn(
//                 label: Text('timeVeiw'),
//                 onSort: (columnIndex, ascending) => _sortData('timeVeiw')),
//             //
//           ],
//           rows: data
//               .map((item) => DataRow(cells: [
//                     DataCell(Text(item['idO'].toString())),
//                     DataCell(Text(item['idOU'].toString())),

//                     DataCell(
//                       ClipRRect(
//                           borderRadius: BorderRadius.circular(5),
//                           child: Image.network(
//                             item['imgGig'],
//                             width: 35,
//                             height: 35,
//                           )

//                           //  CachedNetworkImage(
//                           //   imageUrl: picturUser!,
//                           //   //    'https://fiverr-res.cloudinary.com/t_profile_thumb,q_auto,f_auto/attachments/profile/photo/e479e02cac511b1c72f3a4568cf41c7c-1627892857025/9cecce19-c756-4c52-a3e1-16f02a793062.jpg',
//                           //   height: 37,
//                           //   width: 37,
//                           //   fit: BoxFit.cover,
//                           //   placeholder: (context, url) =>
//                           //       CircularProgressIndicator(),
//                           //   errorWidget: (context, url, error) =>
//                           //       Icon(Icons.error),
//                           // ),
//                           ),
//                     ),
//                     DataCell(InkWell(
//                         onTap: () async {
//                           final data =
//                               await ClipboardData(text: item['urlGig']);
//                           Clipboard.setData(data);
//                           //notfction tecy is copy

//                           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                               content: Text("Copy code"),
//                               duration: Duration(seconds: 1),
//                               backgroundColor: mainColor));
//                           print("xxxxxxxxxxxxxx");
//                         },
//                         child: SizedBox(
//                             width: 133,
//                             child: Text(
//                               item['urlGig'],
//                               overflow: TextOverflow.ellipsis,
//                             )))),
//                     //--
//                     DataCell(InkWell(
//                         onTap: () {
//                           controler.editData(item['idU'].toString(), 'titlGig',
//                               item['titlGig']);
//                           print("xxxxxxxxxxxxxx");
//                         },
//                         child: Text(item['titlGig']))),
//                     //--

//                     DataCell(Text(item['nameUser'])),
//                     //--
//                     DataCell(SizedBox(
//                         width: 70,
//                         child: Text(
//                           item['imgUser'],
//                           overflow: TextOverflow.ellipsis,
//                         ))),
//                     //--
//                     DataCell(Text(item['favor'])),
//                     //--
//                     DataCell(Text(item['timeEnter'])),
//                     ////    `timeDone`, `typeOrder`, `doneOrder`, `activeOrder`,
//                     DataCell(Text(item['timeDone'])),
//                     DataCell(Text(item['typeOrder'])),
//                     DataCell(Text(item['doneOrder'])),
//                     DataCell(Text(item['activeOrder'])),
//                     //`countS`, `countN`, `countE`, `pricePon`, `timeVeiw`
//                     DataCell(Text(item['countS'])),
//                     DataCell(Text(item['countN'])),
//                     DataCell(Text(item['countE'])),
//                     DataCell(Text(item['pricePon'])),
//                     DataCell(Text(item['timeVeiw'])),
//                   ]))
//               .toList(),
//           sortColumnIndex: null,
//           sortAscending: true,
//         ),
//       ),
//     );
//   }
// }

// //  `orders`('idO' ,`idOU`, `urlGig`, `imgGig`, `titlGig`, `nameUser`, `imgUser`, `favor`,
// //   `timeEnter`, `timeDone`, `typeOrder`, `doneOrder`, `activeOrder`,
// //   `countS`, `countN`, `countE`, `pricePon`, `timeVeiw`)
