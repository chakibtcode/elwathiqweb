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



class OrderTable extends StatelessWidget {
 OrderTable({
    Key? key,
         required this.iisErrorTabel,     required this.listStatue,     required this.selectStatue,    required this.onChangedStatue,    required this.searchCon,   required this.onChangedFeiled,  required this.enbalSarchTabel,  required this.isLadingTabel,    required this.page,  required this.pages,
     required this.selectVarSearchr,  required this.listVarSearch, required this.onChangedVarSearch,required this.changePage,
    required this.data,  required this.selectValue, required this.selectMonth,
     required this.selectYear, required this.listItems,
      required this.listMonthes, required this.listYers, required this.onChangedValue, required this.onChangedMonth, required this.onChangedYear
   
  }) : super(key: key);


  @override
  final  int page ;
    //
  final  int pages ;
final String selectValue ;
final String selectMonth ;
final String selectYear ;
final String selectVarSearchr ;
final String selectStatue ;
final List<String> listItems;
final List<String> listMonthes;
final List<String> listYers;
final List<String> listVarSearch;
final List<String> listStatue;
final Function(dynamic) onChangedValue ;
final Function(dynamic) onChangedMonth ;
final Function(dynamic) onChangedYear ;
final Function(dynamic) onChangedVarSearch ;
final Function(dynamic) onChangedStatue;
final Function(dynamic) changePage ;
//

  final List data;
  final bool isLadingTabel;
  final bool iisErrorTabel;
  final bool enbalSarchTabel;
  final TextEditingController searchCon ;

 final    Function(dynamic)? onChangedFeiled ;


//---------------------------------------------------------------
  
  //-----------------------------------------------------------
  bool _sortAscending = true;

  void _sortData(String column) {
   
      _sortAscending = !_sortAscending;
      data.sort((a, b) {
        int numsortAscending = (_sortAscending ? 1 : -1);
        int result =
            (numsortAscending * (a[column].compareTo(b[column]))).toInt();
        return result;
      });
      // (_sortAscending ? 1 : -1) *
   
  }

  //-----------------------------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return
    Container(
      margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
      padding:  EdgeInsets.all(defaultPadding),
      height: 670,
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
                width: 300,
                child: 
                             CustomTextFormField(
                                                                hintText: 'Search ...',

                                         controller: searchCon,
                                        
                                        inputType: TextInputType.number, onChanged: onChangedFeiled, onSaved: (value) {  },  validator: (x){},),
                             ),
                          SizedBox(width: 5,),
                                InkWell(
            onTap: () {
        

            },
            child: Container(
              width: 50,
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color:enbalSarchTabel
                // controller. searchCon.text !=   controller. textSearch
                    ? primryColor
                    : colorGray1,
                //Border size & Colors
                border: Border.all(
                    color:enbalSarchTabel
                      // controller. searchCon.text !=   controller. textSearch
                        ? primryColor
                        : colorGray1,
                    width: 2.0,
                    style: BorderStyle.solid), //Border.all
    
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                  child: Icon(
                Icons.search,
                size: 34,
                color: Colors.white,
              )),
            ),
          ),
              SizedBox(width: 15,),
    SizedBox(
                width: 200,
                child: CustomDropDown(
                          value: selectVarSearchr,
                          hintText: selectVarSearchr,
                          items:listVarSearch,
                             prefixIcon: Padding(padding: EdgeInsets.only(left: 10), child :  TextWidget(height: 1.6 ,color: blackColor,size: 19,titel: 'by : ',weight: FontWeight.w700,),),
                          validator: (v){},
                          onChanged: onChangedVarSearch,
                        ),),
                            SizedBox(width: 15,),
                          SizedBox(
                width: 195,
                child: CustomDropDown(
                          value: selectStatue,
                          hintText: selectStatue,
                          items:listStatue,
                             prefixIcon: Padding(padding: EdgeInsets.only(left: 10), child :  TextWidget(height: 1.6 ,color: blackColor,size: 19,titel: 'statue : ',weight: FontWeight.w700,),),
                          validator: (v){},
                          onChanged: onChangedStatue,
                        ),),
                            SizedBox(width: 15,),
                         SizedBox(
                width: 170,
                child: CustomDropDown(
                          value: selectValue,
                          hintText: selectValue,
                          items:listItems,
                             prefixIcon: Padding(padding: EdgeInsets.only(left: 10), child :  TextWidget(height: 1.6 ,color: blackColor,size: 19,titel: 'by : ',weight: FontWeight.w700,),),
                          validator: (v){},
                          onChanged: onChangedValue,
                        ),),
                    
                        SizedBox(width: 15,),
                           Visibility(visible: selectValue  =='this month' ,
                             child: SizedBox(
                                           width: 170,
                                           child: CustomDropDown(
                                                     value: selectMonth,
                                                     hintText: selectMonth,
                                                     items:listMonthes,
                               prefixIcon: Padding(padding: EdgeInsets.only(left: 10), child :  TextWidget(height: 1.6 ,color: blackColor,size: 19,titel: 'by : ',weight: FontWeight.w700,),),
                                                     validator: (v){},
                                                     onChanged:onChangedMonth,
                                                   ),),
                           ),
                          SizedBox(width: 15,),
                         
                           Visibility(
                            visible: selectValue  =='this month' ,
                             child: SizedBox(
                                           width: 170,
                                           child: CustomDropDown(
                                                     value: selectYear,
                                                     hintText: selectYear,
                                                     items:listYers,
                               prefixIcon: Padding(padding: EdgeInsets.only(left: 10), child :  TextWidget(height: 1.6 ,color: blackColor,size: 19,titel: 'by : ',weight: FontWeight.w700,),),
                                                     validator: (v){},
                                                     onChanged: onChangedYear,
                                                   ),),
                           ),
                        SizedBox(width: 15,),
            ],),
        iisErrorTabel ?  SizedBox(height: 540,width: 200,child:  Row(
                 mainAxisAlignment: MainAxisAlignment.end,
              children: [ Text('some erre')   ], ))  :  isLadingTabel ?  SizedBox(height: 540,width: 200,child:  Row(
                 mainAxisAlignment: MainAxisAlignment.end,
              children: [   CircularProgressIndicator(
                  color: primryColor,
                             //    value: 40,
                ) ], ))  : data.isEmpty ?   SizedBox(height: 540,width: 200,child:  Row(
                 mainAxisAlignment: MainAxisAlignment.end,
              children: [  Text('no data')  ], ))  : SizedBox(height: 540 ,child:  DataTable(
          // dataRowColor: MaterialStateColor.resolveWith((states) => Colors.grey),
              columns: [

              DataColumn(
                    label: Text('id order'),
                    onSort: (columnIndex, ascending) => _sortData('id_o')),
                     DataColumn(
                label: Text('statue'),
                onSort: (columnIndex, ascending) => _sortData('statue')),
                    
                DataColumn(
                    label: Text('id servise'),
                    onSort: (columnIndex, ascending) => _sortData('id_s')),
            
                DataColumn(
                    label: Text('titel servise'),
                    onSort: (columnIndex, ascending) => _sortData('titel_s')),
              
                DataColumn(
                    label: Text('price'),
                    onSort: (columnIndex, ascending) => _sortData('price')),
                  DataColumn(
                    label: Text('wassla profit'),
                    onSort: (columnIndex, ascending) => _sortData('wassla_profit')),
            
                DataColumn(
                    label: Text('distance'),
                    onSort: (columnIndex, ascending) => _sortData('distance')),
              
                DataColumn(
                    label: Text('duration'),
                    onSort: (columnIndex, ascending) => _sortData('duration')),

                    //----------------------------------------------------------------------
            
 DataColumn(
                    label: Text('image user'),
                    onSort: (columnIndex, ascending) => _sortData('img_u')),
            
                DataColumn(
                    label: Text('id user'),
                    onSort: (columnIndex, ascending) => _sortData('id_u')),
              
                DataColumn(
                    label: Text('number user'),
                    onSort: (columnIndex, ascending) => _sortData('num_u')),
                    
                DataColumn(
                    label: Text('name user'),
                    onSort: (columnIndex, ascending) => _sortData('fname_u')),
                        //----------------------------------------------------------------------
            
 DataColumn(
                    label: Text('image provider'),
                    onSort: (columnIndex, ascending) => _sortData('img_p')),
            
                DataColumn(
                    label: Text('id provider'),
                    onSort: (columnIndex, ascending) => _sortData('id_p')),
              
                DataColumn(
                    label: Text('number provider'),
                    onSort: (columnIndex, ascending) => _sortData('num_p')),
                    
                DataColumn(
                    label: Text('name provider'),
                    onSort: (columnIndex, ascending) => _sortData('fname_p')),
                     //----------------------------------------------------------------------
                      DataColumn(
                    label: Text('time order'),
                    onSort: (columnIndex, ascending) => _sortData('time_order')),
 DataColumn(
                    label: Text('time start'),
                    onSort: (columnIndex, ascending) => _sortData('time_start')),
                     DataColumn(
                    label: Text('time_done'),
                    onSort: (columnIndex, ascending) => _sortData('time_done')),
                        DataColumn(
                    label: Text('user done'),
                    onSort: (columnIndex, ascending) => _sortData('user_isdone')),    DataColumn(
                    label: Text('provider done'),
                    onSort: (columnIndex, ascending) => _sortData('pro_isdone')),

                     //----------------------------------------------------------------------
                DataColumn(
                    label: Text(''),
                   ),
              ],
              rows: 
              List.generate(data.length, (index) {
            final item = data[index];
            return      //vvv
                   DataRow(
                         color: index % 2 == 0
                  ? MaterialStateProperty.all(Colors.grey[100])
                  : null,
                   //  color: item['id_o'].isEven ? MaterialStateProperty.all(Colors.grey[100]) : null,
                    //   color:  MaterialStateProperty.resolveAs(value, states),
                    cells: [

                        DataCell(Text(item['id_o'].toString())),
  DataCell( 
    item['statue']  == 6 ? Text('Declined' , style:  TextStyle(color: redColor),) :
   item['statue']  == 4 ?  Text('Completed' , style:  TextStyle(color: greenColor),)  :Text('Pending' , style:  TextStyle(color: orangeColor),)),
  DataCell(Text(item['id_s'].toString())),
  DataCell(Text(item['titel_s'].toString())),

  //-------------------------------------------------------------
  DataCell(Text(item['price'].toString())),
  DataCell(Text(item['wassla_profit'].toString())),
  DataCell(Text(item['distance'].toString())),
  DataCell(Text(item['duration'].toString())),
  //-------------------------------------------------------------

  DataCell(
                      ClipRRect(
                          borderRadius: BorderRadius.circular(22),
                          child: Image.network(
                            item['img_u'],
                            width: 35,
                            height: 35,
                          )),
                    ),

                        DataCell(Text(item['id_u'].toString())),
                        DataCell(Text(item['num_u'].toString())),
                        DataCell(Text(item['fname_u']  +' '+item['sname_u'] )),
  //-------------------------------------------------------------

  DataCell(
                      ClipRRect(
                          borderRadius: BorderRadius.circular(22),
                          child: Image.network(
                            item['img_p'],
                            width: 35,
                            height: 35,
                          )),
                    ),

                        DataCell(Text(item['id_p'].toString())),
                        DataCell(Text(item['num_p'].toString())),
 DataCell(Text(item['fname_p'] +' '+item['sname_p'] )),
  //-------------------------------------------------------------
                        DataCell(Text(item['time_order'].toString())),
                        DataCell(Text(item['time_start'].toString())),
                        DataCell(Text(item['time_done'].toString())),
  //-------------------------------------------------------------
      DataCell(  item['user_isdone']  == 0? Text('fales' , style:  TextStyle(color: redColor),) :Text('true' , style:  TextStyle(color: greenColor),)),
      DataCell(  item['pro_isdone']  == 0? Text('fales' , style:  TextStyle(color: redColor),) :Text('true' , style:  TextStyle(color: greenColor),)),


                   
                          DataCell(  PopupMenuButton(
                    icon: Icon(
                      Icons.more_vert_rounded,
                      color: blackColor,
                    ),
                    itemBuilder: (context) {
                      return <PopupMenuEntry>[
                        PopupMenuItem(
                            child: InkWell(
                          onTap: () {
                            Get.back();
                            print('-------------------------------------');

                            print(item);
                    // Get.toNamed('/EditOrderView');
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.edit,
                                color: primryColor,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              TextWidget(
                                color: primryColor,
                                size: 18,
                                height: 1.2,
                                titel: 'Edit order',
                                weight: FontWeight.w700,
                              ),
                            ],
                          ),
                        )),
                      ];
                    }),),
                   
                      ]);
                      }),
              //**** */
  //              data
  //                 .map((item) =>
  //                 //vvv
  //                  DataRow(
  //                  //  color: item['id_o'].isEven ? MaterialStateProperty.all(Colors.grey[100]) : null,
  //                   //   color:  MaterialStateProperty.resolveAs(value, states),
  //                   cells: [
 
  //                       DataCell(Text(item['id_o'].toString())),
  // DataCell(Text(item['statue'].toString())),
  // DataCell(Text(item['id_s'].toString())),
  // DataCell(Text(item['titel_s'].toString())),

  // //-------------------------------------------------------------
  // DataCell(Text(item['price'].toString())),
  // DataCell(Text(item['wassla_profit'].toString())),
  // DataCell(Text(item['distance'].toString())),
  // DataCell(Text(item['duration'].toString())),
  // //-------------------------------------------------------------

  // DataCell(
  //                     ClipRRect(
  //                         borderRadius: BorderRadius.circular(22),
  //                         child: Image.network(
  //                           item['img_u'],
  //                           width: 35,
  //                           height: 35,
  //                         )),
  //                   ),

  //                       DataCell(Text(item['id_u'].toString())),
  //                       DataCell(Text(item['num_u'].toString())),
  //                       DataCell(Text(item['fname_u'].toString())),
  // //-------------------------------------------------------------

  // DataCell(
  //                     ClipRRect(
  //                         borderRadius: BorderRadius.circular(22),
  //                         child: Image.network(
  //                           item['img_p'],
  //                           width: 35,
  //                           height: 35,
  //                         )),
  //                   ),

  //                       DataCell(Text(item['id_p'].toString())),
  //                       DataCell(Text(item['num_p'].toString())),
  //                       DataCell(Text(item['fname_p'].toString())),

  // //-------------------------------------------------------------
  //                       DataCell(Text(item['time_order'].toString())),
  //                       DataCell(Text(item['time_start'].toString())),
  //                       DataCell(Text(item['time_done'].toString())),
  // //-------------------------------------------------------------

  //     DataCell(Text(item['user_isdone'].toString())),
  //                       DataCell(Text(item['pro_isdone'].toString())),

                   
  //                         DataCell(  PopupMenuButton(
  //                   icon: Icon(
  //                     Icons.more_vert_rounded,
  //                     color: blackColor,
  //                   ),
  //                   itemBuilder: (context) {
  //                     return <PopupMenuEntry>[
  //                       PopupMenuItem(
  //                           child: InkWell(
  //                         onTap: () {
  //                           Get.back();
  //                    Get.toNamed('/EditOrderView');
  //                         },
  //                         child: Row(
  //                           children: [
  //                             Icon(
  //                               Icons.edit,
  //                               color: primryColor,
  //                             ),
  //                             SizedBox(
  //                               width: 5,
  //                             ),
  //                             TextWidget(
  //                               color: primryColor,
  //                               size: 18,
  //                               height: 1.2,
  //                               titel: 'Edit order',
  //                               weight: FontWeight.w700,
  //                             ),
  //                           ],
  //                         ),
  //                       )),
  //                     ];
  //                   }),),
                   
  //                     ]))
  //                      //vvv
  //                 .toList(),
              sortColumnIndex: null,
              sortAscending: true,
            ),),
      NumberPaginator(currentPage: page, totalPages: 20, onPageChanged: (v){  changePage(v);})
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


// class NumberPaginator extends StatelessWidget {
//   final int currentPage;
//   final int totalPages;
//   final Function(int) onPageChanged;

//   NumberPaginator({
//     required this.currentPage,
//     required this.totalPages,
//     required this.onPageChanged,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: _buildPageNumbers(),
//     );
//   }

//   List<Widget> _buildPageNumbers() {
//     const int maxButtonsToShow = 5;
//     List<Widget> pageNumbers = [];

//     if (totalPages <= maxButtonsToShow) {
//       for (int i = 1; i <= totalPages; i++) {
//         pageNumbers.add(_buildPageButton(i));
//       }
//     } else {
//       int startPage = currentPage - 2;
//       int endPage = currentPage + 2;

//       if (startPage <= 0) {
//         startPage = 1;
//         endPage = maxButtonsToShow;
//       }

//       if (endPage > totalPages) {
//         endPage = totalPages;
//         startPage = totalPages - maxButtonsToShow + 1;
//       }

//       if (startPage > 2) {
//         // Show the first button and add an ellipsis
//         pageNumbers.add(_buildPageButton(1));
//         if (startPage > 3) {
//           pageNumbers.add( TextWidget(color: blackColor,size: 17,titel: '....',weight: FontWeight.w700,),);
//         }
//       }

//       for (int i = startPage; i <= endPage; i++) {
//         pageNumbers.add(_buildPageButton(i));
//       }

//       if (endPage < totalPages - 1) {
//         if (endPage < totalPages - 2) {
//           pageNumbers.add( TextWidget(color: blackColor,size: 17,titel: '....',weight: FontWeight.w700,),);
//         }
//         pageNumbers.add(_buildPageButton(totalPages));
//       }
//     }

//     return pageNumbers;
//   }

//   Widget _buildPageButton(int pageNumber) {
//     return InkWell(
//       onTap: () {
//         onPageChanged(pageNumber);
//       },
//       child: Container(
//          height: 37 , width: 37,
//           margin: EdgeInsets.symmetric(horizontal: 5), 
//         padding: EdgeInsets.all(8.0),
//         decoration: BoxDecoration(
//           color: pageNumber == currentPage ? primaryColor : colorGray2,
//           borderRadius: BorderRadius.circular(5.0),
//         ),
//         child:
//          Center( child:TextWidget( color: pageNumber == currentPage ? Colors.white : Colors.black,size: 17,titel: pageNumber.toString(),
//           weight: FontWeight.w700,),), 
       
//       ),
//     );
//   }
// }
  


class NumberPaginator extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final Function(int) onPageChanged;

  NumberPaginator({
    required this.currentPage,
    required this.totalPages,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: currentPage > 1 ? () => onPageChanged(currentPage - 1) : null,
        ),
        _buildPageNumbers(),
         RotatedBox(
             quarterTurns: 2,
             child: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: currentPage < totalPages ? () => onPageChanged(currentPage + 1) : null,
        ),
        ),
      ],
    );
  }

  Widget _buildPageNumbers() {
    const int maxButtonsToShow = 5;
    List<Widget> pageNumbers = [];

    if (totalPages <= maxButtonsToShow) {
      for (int i = 1; i <= totalPages; i++) {
        pageNumbers.add(_buildPageButton(i));
      }
    } else {
      int startPage = currentPage - 2;
      int endPage = currentPage + 2;

      if (startPage <= 0) {
        startPage = 1;
        endPage = maxButtonsToShow;
      }

      if (endPage > totalPages) {
        endPage = totalPages;
        startPage = totalPages - maxButtonsToShow + 1;
      }

      if (startPage > 2) {
        // Show the first button and add an ellipsis
        pageNumbers.add(_buildPageButton(1));
        if (startPage > 3) {
          pageNumbers.add(TextWidget(color: blackColor,size: 17,titel: '....',weight: FontWeight.w700,),);
        }
      }

      for (int i = startPage; i <= endPage; i++) {
        pageNumbers.add(_buildPageButton(i));
      }

      if (endPage < totalPages - 1) {
        if (endPage < totalPages - 2) {
          pageNumbers.add(TextWidget(color: blackColor,size: 17,titel: '....',weight: FontWeight.w700,),);
        }
        pageNumbers.add(_buildPageButton(totalPages));
      }
    }

    return Row(children: pageNumbers);
  }

  Widget _buildPageButton(int pageNumber) {
    return InkWell(
      onTap: () {
        onPageChanged(pageNumber);
      },
      child: Container(
         height: 37 , width: 37,
          margin: EdgeInsets.symmetric(horizontal: 5), 
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: pageNumber == currentPage ? primaryColor : colorGray2,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child:
         Center( child:TextWidget( color: pageNumber == currentPage ? Colors.white : Colors.black,size: 17,titel: pageNumber.toString(),
          weight: FontWeight.w700,),), 
       
      ),
    );
  }
}


//--------------------------------------------------------------------------------------------

  