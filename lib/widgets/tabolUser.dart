import 'package:elwathiqweb/constants/colors_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:elwathiqweb/widgets/custom_text/custom_text.dart';

import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:elwathiqweb/screens/login_screen/login_controller.dart';
import '../../constants.dart';
import 'package:elwathiqweb/widgets/coustum_textFeiled/custom_textfeiled.dart';
import 'package:elwathiqweb/widgets/coustum_selected/custom_dropdown.dart';

class ScrollableTable extends StatefulWidget {
  final List user;

  const ScrollableTable({super.key, required this.user});
  @override
  _ScrollableTableState createState() => _ScrollableTableState(data: user);
}

class _ScrollableTableState extends State<ScrollableTable> {
  final List data;
  _ScrollableTableState({required this.data});

  LoginController controler = Get.put(LoginController());



//---------------------------------------------------------------
  
  //-----------------------------------------------------------
  bool _sortAscending = true;

  void _sortData(String column) {
    setState(() {
      _sortAscending = !_sortAscending;
      data.sort((a, b) {
        int numsortAscending = (_sortAscending ? 1 : -1);
        int result =
            (numsortAscending * (a[column].compareTo(b[column]))).toInt();
        return result;
      });
      // (_sortAscending ? 1 : -1) *
    });
  }

  //-----------------------------------------------------------------------------------------
  final List<String> sexItems = [
    'Choose Sex',
    'male',
    'female',
  ];
  //
  String selectSex = 'Choose Sex';
  @override
  Widget build(BuildContext context) {
    return
    Container(
      margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
      padding:  EdgeInsets.all(defaultPadding),
    //  height: 68,
    width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            //ifs select change shadow color
            color: colorShadow,
            offset: Offset(
              0.0,
              0.40,
            ),
            blurRadius: 5.0,
            spreadRadius: 0.1,
          ),
          //BoxShadow
          BoxShadow(
            color: Colors.white,
            offset: Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ) //BoxShadow
        ],
      ),
   child : SingleChildScrollView(
        scrollDirection: Axis.horizontal,
               primary: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               TextWidget(color: blackColor,size: 22,titel: 'Orders',weight: FontWeight.w700,),
               SizedBox(width: 15,),
               SizedBox(
                width: 250,
                child: 
                             CustomTextFormField(
                                                                hintText: 'enter your Username',

                                       //   controller: controller.usernameCon,
                                        
                                        inputType: TextInputType.number, onSaved: (value) {  },  validator: (x){},),
                             ),
                          SizedBox(width: 15,),
  SizedBox(
                width: 170,
                child: CustomDropDown(
                          value: selectSex,
                          hintText: selectSex,
                          items:sexItems,
                             prefixIcon: Padding(padding: EdgeInsets.only(left: 10), child :  TextWidget(height: 1.6 ,color: blackColor,size: 19,titel: 'by',weight: FontWeight.w700,),),
                          validator: (v){},
                          onChanged: (v) {
                        selectSex =v ;
setState(() {
  
});                          },
                        ),),
                        SizedBox(width: 15,),
                TextWidget(color: blackColor,size: 22,titel: 'xxxxx',weight: FontWeight.w700,),
            ],),
            DataTable(
              columns: [
              DataColumn(
                    label: Text('id'),
                    onSort: (columnIndex, ascending) => _sortData('id')),
                DataColumn(
                    label: Text('name'),
                    onSort: (columnIndex, ascending) => _sortData('name')),
            
                DataColumn(
                    label: Text('age'),
                    onSort: (columnIndex, ascending) => _sortData('age')),
              
                DataColumn(
                    label: Text('point'),
                    onSort: (columnIndex, ascending) => _sortData('point')),
                  DataColumn(
                    label: Text('name'),
                    onSort: (columnIndex, ascending) => _sortData('name')),
            
                DataColumn(
                    label: Text('age'),
                    onSort: (columnIndex, ascending) => _sortData('age')),
              
                DataColumn(
                    label: Text('point'),
                    onSort: (columnIndex, ascending) => _sortData('point')),
            
 DataColumn(
                    label: Text('name'),
                    onSort: (columnIndex, ascending) => _sortData('name')),
            
                DataColumn(
                    label: Text('age'),
                    onSort: (columnIndex, ascending) => _sortData('age')),
              
                DataColumn(
                    label: Text('point'),
                    onSort: (columnIndex, ascending) => _sortData('point')),
              ],
              rows: data
                  .map((item) => DataRow(cells: [

                        DataCell(Text(item['id'].toString())),


                        DataCell(Text(item['name'].toString())),
                        DataCell(Text(item['age'].toString())),
                        DataCell(Text(item['point'].toString())),
                                DataCell(Text(item['name'].toString())),
                        DataCell(Text(item['age'].toString())),
                        DataCell(Text(item['point'].toString())),
                             DataCell(Text(item['name'].toString())),
                        DataCell(Text(item['age'].toString())),
                        DataCell(Text(item['point'].toString())),
                      ]))
                  .toList(),
              sortColumnIndex: null,
              sortAscending: true,
            ),
         Row(children: [
         
          IconButton(onPressed: (){}, icon:  Icon(Icons.arrow_back_ios),),
          Container(height: 37 , width: 37,
          margin: EdgeInsets.symmetric(horizontal: 5), 
          child: Center( child:TextWidget(color: blackColor,size: 17,titel: '1',weight: FontWeight.w700,),), 
          
          decoration: BoxDecoration(
        color: colorGray2,
        borderRadius: BorderRadius.circular(8),
      
      ),),
              Container(height: 37 , width: 37,
          margin: EdgeInsets.symmetric(horizontal: 5), 
          child: Center( child:TextWidget(color: blackColor,size: 17,titel: '2',weight: FontWeight.w700,),), 
          
          decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(8),
      
      ),), 
      
      
            Container(height: 37 , width: 37,
          margin: EdgeInsets.symmetric(horizontal: 5), 
          child: Center( child:TextWidget(color: blackColor,size: 17,titel: '3',weight: FontWeight.w700,),), 
          
          decoration: BoxDecoration(
        color: colorGray2,
        borderRadius: BorderRadius.circular(8),
      
      ),),
      TextWidget(color: blackColor,size: 17,titel: '....',weight: FontWeight.w700,),
       Container(height: 37 , width: 37,
          margin: EdgeInsets.symmetric(horizontal: 5), 
          child: Center( child:TextWidget(color: blackColor,size: 17,titel: '50',weight: FontWeight.w700,),), 
          
          decoration: BoxDecoration(
        color: colorGray2,
        borderRadius: BorderRadius.circular(8),
      
      ),),
     RotatedBox(
             quarterTurns: 2,
             child: IconButton(onPressed: (){}, icon:  Icon(Icons.arrow_back_ios),),
             
             ),
         
         ],)
         
          ],
        ),
      ),
    
  
  );
  
  
  }
}


//  INSERT INTO `users`( `email``name``imgUser``typeR``myCode``codeF`,
//     `blockAc``verfyCF``ipR``countryR``cityR``timeR``ipL``countryL``cityL``timeL`,`token`,
//      `pNow``pAll``pAS``pAV``pAB``pDaily``pRef``pCodeF``pMines`,
//       `countRig``countTrustR`) 