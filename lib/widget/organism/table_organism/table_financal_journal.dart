import 'package:alvamind_library/app/theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../model/table_model.dart';
import '../../molecule/app_table.dart';

class TableFinancialJurnal extends StatelessWidget {
  const TableFinancialJurnal({
    super.key,
    required this.headerTitle,
    required this.headerData1,
    required this.data1,
    required this.headerData2,
    required this.data2,
    required this.headerData3,
    required this.data3,
    required this.headerData4,
    required this.data4,
    required this.headerData5,
    required this.data5,
    required this.tableNavigation,
  });

  final List<List<TableModel>> headerTitle;
  final List<List<TableModel>> tableNavigation;
  final List<TableModel> headerData1;
  final List<List<TableModel>> data1;
  final List<TableModel> headerData2;
  final List<List<TableModel>> data2;
  final List<TableModel> headerData3;
  final List<List<TableModel>> data3;
  final List<TableModel> headerData4;
  final List<List<TableModel>> data4;
  final List<TableModel> headerData5;
  final List<List<TableModel>> data5;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppTable(
          data: headerTitle,
          tableBorderWidth: 1,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(
            width: 1,
            color: AppColors.blackLv7,
          )),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                AppTable(
                  headerData: headerData1,
                  data: data1,
                ),
                AppTable(
                  headerData: headerData2,
                  data: data2,
                ),
                AppTable(
                  headerData: headerData3,
                  data: data3,
                ),
                AppTable(
                  headerData: headerData4,
                  data: data4,
                ),
                AppTable(
                  headerData: headerData5,
                  data: data5,
                ),
              ],
            ),
          ),
        ),
        AppTable(
          data: tableNavigation,
          tableBorderWidth: 1,
        ),
      ],
    );
  }
}
