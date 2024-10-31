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



class UserTable extends StatelessWidget {
 UserTable({
    Key? key,
        required this.searchCon,   required this.onChangedFeiled,  required this.enbalSarchTabel,  required this.isLadingTabel,    required this.page,  required this.pages,
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
final List<String> listItems;
final List<String> listMonthes;
final List<String> listYers;
final List<String> listVarSearch;
final Function(dynamic) onChangedValue ;
final Function(dynamic) onChangedMonth ;
final Function(dynamic) onChangedYear ;
final Function(dynamic) onChangedVarSearch ;
final Function(dynamic) changePage ;
//

  final List data;
  final bool isLadingTabel;
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
                width: 170,
                child: CustomDropDown(
                          value: selectVarSearchr,
                          hintText: selectVarSearchr,
                          items:listVarSearch,
                             prefixIcon: Padding(padding: EdgeInsets.only(left: 10), child :  TextWidget(height: 1.6 ,color: blackColor,size: 19,titel: 'by',weight: FontWeight.w700,),),
                          validator: (v){},
                          onChanged: onChangedVarSearch,
                        ),),
                            SizedBox(width: 15,),
                         SizedBox(
                width: 170,
                child: CustomDropDown(
                          value: selectValue,
                          hintText: selectValue,
                          items:listItems,
                             prefixIcon: Padding(padding: EdgeInsets.only(left: 10), child :  TextWidget(height: 1.6 ,color: blackColor,size: 19,titel: 'by',weight: FontWeight.w700,),),
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
                               prefixIcon: Padding(padding: EdgeInsets.only(left: 10), child :  TextWidget(height: 1.6 ,color: blackColor,size: 19,titel: 'by',weight: FontWeight.w700,),),
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
                               prefixIcon: Padding(padding: EdgeInsets.only(left: 10), child :  TextWidget(height: 1.6 ,color: blackColor,size: 19,titel: 'by',weight: FontWeight.w700,),),
                                                     validator: (v){},
                                                     onChanged: onChangedYear,
                                                   ),),
                           ),
                        SizedBox(width: 15,),
            ],),
        isLadingTabel ?  SizedBox(height: 520,width: 200,child:  Row(
                 mainAxisAlignment: MainAxisAlignment.end,
              children: [   CircularProgressIndicator(
                  color: primryColor,
                             //    value: 40,
                ) ], )):    DataTable(
           
              columns: [
              DataColumn(
                    label: Text('id'),
                    onSort: (columnIndex, ascending) => _sortData('id')),
                     DataColumn(
                label: Text('imgUser'),
                onSort: (columnIndex, ascending) => _sortData('imgUser')),
                    
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
                    
                DataColumn(
                    label: Text(''),
                   ),
              ],
              rows: data
                  .map((item) => DataRow(cells: [

                        DataCell(Text(item['id'].toString())),

  DataCell(
                      ClipRRect(
                          borderRadius: BorderRadius.circular(22),
                          child: Image.network(
                            item['imgUser'],
                            width: 35,
                            height: 35,
                          )

                        
                          ),
                    ),
                        DataCell(Text(item['name'].toString())),
                        DataCell(Text(item['age'].toString())),
                        DataCell(Text(item['point'].toString())),
                                DataCell(Text(item['name'].toString())),
                        DataCell(Text(item['age'].toString())),
                        DataCell(Text(item['point'].toString())),
                             DataCell(Text(item['name'].toString())),
                        DataCell(Text(item['age'].toString())),
                        DataCell(Text(item['point'].toString())),
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
                     Get.toNamed('/EditOrderView');
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
                   
                      ]))
                  .toList(),
              sortColumnIndex: null,
              sortAscending: true,
            ),
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

  