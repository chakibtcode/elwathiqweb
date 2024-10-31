// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:fp_manger_app/routes/3-userScreen/userController.dart';
// import 'package:fp_manger_app/theme.dart';
// import 'package:get/get.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

// class ScrollableTable extends StatefulWidget {
//   final List user;

//   const ScrollableTable({super.key, required this.user});
//   @override
//   _ScrollableTableState createState() => _ScrollableTableState(data: user);
// }

// class _ScrollableTableState extends State<ScrollableTable> {
//   final List data;
//   _ScrollableTableState({required this.data});

//   UserController controler = Get.find();

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
//             DataColumn(
//                 label: Text('Id'),
//                 onSort: (columnIndex, ascending) => _sortData('idU')),
//             DataColumn(
//                 label: Text('imgUser'),
//                 onSort: (columnIndex, ascending) => _sortData('imgUser')),
//             DataColumn(
//                 label: Text('email'),
//                 onSort: (columnIndex, ascending) => _sortData('email')),
//             DataColumn(
//                 label: Text('name'),
//                 onSort: (columnIndex, ascending) => _sortData('name')),
//             DataColumn(
//                 label: Text('typeR'),
//                 onSort: (columnIndex, ascending) => _sortData('typeR')),
//             DataColumn(
//                 label: Text('myCode'),
//                 onSort: (columnIndex, ascending) => _sortData('myCode')),
//             DataColumn(
//                 label: Text('codeF'),
//                 onSort: (columnIndex, ascending) => _sortData('codeF')),
//             DataColumn(
//                 label: Text('blockAc'),
//                 onSort: (columnIndex, ascending) => _sortData('blockAc')),
//             DataColumn(
//                 label: Text('verfyCF'),
//                 onSort: (columnIndex, ascending) => _sortData('verfyCF')),
//             DataColumn(
//                 label: Text('ipR'),
//                 onSort: (columnIndex, ascending) => _sortData('ipR')),
//             DataColumn(
//                 label: Text('countryR'),
//                 onSort: (columnIndex, ascending) => _sortData('countryR')),
//             DataColumn(
//                 label: Text('cityR'),
//                 onSort: (columnIndex, ascending) => _sortData('cityR')),
//             DataColumn(
//                 label: Text('timeR'),
//                 onSort: (columnIndex, ascending) => _sortData('timeR')),
//             DataColumn(
//                 label: Text('timeR'),
//                 onSort: (columnIndex, ascending) => _sortData('timeR')),
//             DataColumn(
//                 label: Text('ipL'),
//                 onSort: (columnIndex, ascending) => _sortData('ipL')),
//             DataColumn(
//                 label: Text('countryL'),
//                 onSort: (columnIndex, ascending) => _sortData('countryL')),
//             DataColumn(
//                 label: Text('cityL'),
//                 onSort: (columnIndex, ascending) => _sortData('cityL')),
//             DataColumn(
//                 label: Text('timeL'),
//                 onSort: (columnIndex, ascending) => _sortData('timeL')),
//             DataColumn(
//                 label: Text('token'),
//                 onSort: (columnIndex, ascending) => _sortData('token')),
//             DataColumn(
//                 label: Text('pNow'),
//                 onSort: (columnIndex, ascending) => _sortData('pNow')),
//             DataColumn(
//                 label: Text('pAS'),
//                 onSort: (columnIndex, ascending) => _sortData('pAS')),
//             DataColumn(
//                 label: Text('pAV'),
//                 onSort: (columnIndex, ascending) => _sortData('pAV')),
//             DataColumn(
//                 label: Text('pAB'),
//                 onSort: (columnIndex, ascending) => _sortData('pAB')),
//             DataColumn(
//                 label: Text('pDaily'),
//                 onSort: (columnIndex, ascending) => _sortData('pDaily')),
//             DataColumn(
//                 label: Text('pRef'),
//                 onSort: (columnIndex, ascending) => _sortData('pRef')),
//             DataColumn(
//                 label: Text('pCodeF'),
//                 onSort: (columnIndex, ascending) => _sortData('pCodeF')),
//             DataColumn(
//                 label: Text('pMines'),
//                 onSort: (columnIndex, ascending) => _sortData('pMines')),
//             DataColumn(
//                 label: Text('countRig'),
//                 onSort: (columnIndex, ascending) => _sortData('countRig')),
//             DataColumn(
//                 label: Text('countTrustR'),
//                 onSort: (columnIndex, ascending) => _sortData('countTrustR')),
//           ],
//           rows: data
//               .map((item) => DataRow(cells: [
//                     DataCell(Text(item['idU'].toString())),
//                     DataCell(
//                       ClipRRect(
//                           borderRadius: BorderRadius.circular(22),
//                           child: Image.network(
//                             item['imgUser'],
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
//                         onTap: () {
//                           controler.editData(
//                               item['idU'].toString(), 'email', item['email']);
//                           print("xxxxxxxxxxxxxx");
//                         },
//                         child: Text(item['email']))),
//                     DataCell(InkWell(
//                         onTap: () {
//                           controler.editData(
//                               item['idU'].toString(), 'name', item['name']);
//                           print("xxxxxxxxxxxxxx");
//                         },
//                         child: Text(item['name']))),
//                     DataCell(InkWell(
//                         onTap: () {
//                           print("xxxxxxxxxxxxxx");
//                         },
//                         child: Text(item['typeR']))),
//                     DataCell(InkWell(
//                         onTap: () {
//                           controler.editData(
//                               item['idU'].toString(), 'myCode', item['myCode']);

//                           print("xxxxxxxxxxxxxx");
//                         },
//                         child: Text(item['myCode']))),
//                     DataCell(InkWell(
//                         onTap: () {
//                           controler.editData(
//                               item['idU'].toString(), 'codeF', item['codeF']);

//                           print("xxxxxxxxxxxxxx");
//                         },
//                         child: Text(item['codeF']))),
//                     DataCell(InkWell(
//                         onTap: () {
//                           controler.editData(item['idU'].toString(), 'blockAc',
//                               item['blockAc']);

//                           print("xxxxxxxxxxxxxx");
//                         },
//                         child: Text(item['blockAc']))),
//                     DataCell(InkWell(
//                         onTap: () {
//                           controler.editData(item['idU'].toString(), 'verfyCF',
//                               item['verfyCF']);

//                           print("xxxxxxxxxxxxxx");
//                         },
//                         child: Text(item['verfyCF']))),
//                     DataCell(Text(item['ipR'])),
//                     DataCell(Text(item['countryR'])),
//                     DataCell(Text(item['cityR'])),
//                     DataCell(Text(item['timeR'])),
//                     DataCell(Text(item['ipL'])),
//                     DataCell(Text(item['countryL'])),
//                     DataCell(Text(item['cityL'])),
//                     DataCell(Text(item['timeL'])),
//                     DataCell(SizedBox(
//                       width: 20,
//                       child: InkWell(
//                         onTap: () async {
//                           final data = await ClipboardData(text: item['token']);
//                           Clipboard.setData(data);
//                           //notfction tecy is copy

//                           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                               content: Text("Copy token"),
//                               duration: Duration(seconds: 1),
//                               backgroundColor: mainColor));
//                           print("xxxxxxxxxxxxxx");
//                         },
//                         child: Text(
//                           item['token'],
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                       ),
//                     )),
//                     DataCell(InkWell(
//                         onTap: () {
//                           controler.editData(
//                               item['idU'].toString(), 'pNow', item['pNow']);

//                           print("xxxxxxxxxxxxxx");
//                         },
//                         child: Text(item['pNow']))),
//                     DataCell(InkWell(
//                         onTap: () {
//                           controler.editData(
//                               item['idU'].toString(), 'pAll', item['pAll']);

//                           print("xxxxxxxxxxxxxx");
//                         },
//                         child: Text(item['pAll']))),
//                     DataCell(InkWell(
//                         onTap: () {
//                           controler.editData(
//                               item['idU'].toString(), 'pAS', item['pAS']);

//                           print("xxxxxxxxxxxxxx");
//                         },
//                         child: Text(item['pAS']))),
//                     DataCell(InkWell(
//                         onTap: () {
//                           controler.editData(
//                               item['idU'].toString(), 'pAV', item['pAV']);

//                           print("xxxxxxxxxxxxxx");
//                         },
//                         child: Text(item['pAV']))),
//                     DataCell(InkWell(
//                         onTap: () {
//                           controler.editData(
//                               item['idU'].toString(), 'pAB', item['pAB']);

//                           print("xxxxxxxxxxxxxx");
//                         },
//                         child: Text(item['pAB']))),
//                     DataCell(InkWell(
//                         onTap: () {
//                           controler.editData(
//                               item['idU'].toString(), 'pDaily', item['pDaily']);

//                           print("xxxxxxxxxxxxxx");
//                         },
//                         child: Text(item['pDaily']))),
//                     DataCell(InkWell(
//                         onTap: () {
//                           controler.editData(
//                               item['idU'].toString(), 'pRef', item['pRef']);

//                           print("xxxxxxxxxxxxxx");
//                         },
//                         child: Text(item['pRef']))),
//                     DataCell(InkWell(
//                         onTap: () {
//                           controler.editData(
//                               item['idU'].toString(), 'pCodeF', item['pCodeF']);

//                           print("xxxxxxxxxxxxxx");
//                         },
//                         child: Text(item['pCodeF']))),
//                     DataCell(InkWell(
//                         onTap: () {
//                           controler.editData(
//                               item['idU'].toString(), 'pMines', item['pMines']);

//                           print("xxxxxxxxxxxxxx");
//                         },
//                         child: Text(item['pMines']))),
//                     DataCell(Text(item['countRig'])),
//                     DataCell(Text(item['countTrustR'])),
//                   ]))
//               .toList(),
//           sortColumnIndex: null,
//           sortAscending: true,
//         ),
//       ),
//     );
//   }
// }


// //  INSERT INTO `users`( `email``name``imgUser``typeR``myCode``codeF`,
// //     `blockAc``verfyCF``ipR``countryR``cityR``timeR``ipL``countryL``cityL``timeL`,`token`,
// //      `pNow``pAll``pAS``pAV``pAB``pDaily``pRef``pCodeF``pMines`,
// //       `countRig``countTrustR`) 