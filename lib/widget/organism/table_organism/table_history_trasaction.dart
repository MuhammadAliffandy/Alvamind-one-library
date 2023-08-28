// ignore_for_file: must_be_immutable

import 'package:alvamind_library/widget/organism/table_organism/table_financal_journal.dart';
import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_text_style.dart';
import '../../../model/table_model.dart';
import '../../molecule/app_table_navigation.dart';
import '../../molecule/app_tags.dart';

class TableHistoryTransaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int dataLength = 15;

    List<TableModel> headerData1 = [
      TableModel(
        flex: 5,
        data: 'Tanggal',
        textStyle: AppTextStyle.bodyMedium(
          fontWeight: AppFontWeight.bold,
        ),
      ),
      TableModel(
        flex: 5,
        data: 'Deskripsi',
        textStyle: AppTextStyle.bodyMedium(
          fontWeight: AppFontWeight.bold,
        ),
      ),
    ];

    List<TableModel> headerData2 = [
      TableModel(
        data: 'Nominal',
        textStyle: AppTextStyle.bodyMedium(
          fontWeight: AppFontWeight.bold,
        ),
      ),
      TableModel(
        data: 'Nominal Debit',
        textStyle: AppTextStyle.bodyMedium(
          fontWeight: AppFontWeight.bold,
        ),
      ),
    ];

    List<TableModel> headerData3 = [
      TableModel(
        data: 'Nominal Kredit',
        textStyle: AppTextStyle.bodyMedium(
          fontWeight: AppFontWeight.bold,
        ),
      ),
      TableModel(
        data: 'Saldo',
        textStyle: AppTextStyle.bodyMedium(
          fontWeight: AppFontWeight.bold,
        ),
      ),
    ];

    List<TableModel> headerData4 = [
      TableModel(
        data: 'Deskripsi',
        flex: 3,
        textStyle: AppTextStyle.bodyMedium(
          fontWeight: AppFontWeight.bold,
        ),
      ),
    ];
    List<TableModel> headerData5 = [
      TableModel(
        flex: 4,
        data: 'ID Transaksi',
        textStyle: AppTextStyle.bodyMedium(
          fontWeight: AppFontWeight.bold,
        ),
      ),
      TableModel(
        expanded: false,
        data: 'Status',
        textStyle: AppTextStyle.bodyMedium(
          fontWeight: AppFontWeight.bold,
        ),
      ),
    ];

    // ==============================

    List<List<TableModel>> data1 = [
      ...List.generate(
        dataLength,
        (index) => [
          TableModel(data: 'Jan 16', flex: 5),
          TableModel(data: 'Pembayaran #INV3567', flex: 5),
        ],
      )
    ];
    List<List<TableModel>> data2 = [
      ...List.generate(
        dataLength,
        (index) => [
          TableModel(
              data: '-Rp 432.532',
              textStyle: AppTextStyle.medium(
                size: 12,
                color: AppColors.redLv1,
              ),
              flex: 5),
          TableModel(data: 'Rp. 125.000', flex: 5),
        ],
      )
    ];
    List<List<TableModel>> data3 = [
      ...List.generate(
        dataLength,
        (index) => [
          TableModel(data: 'Rp. 125.000', flex: 5),
          TableModel(data: 'Rp. 125.000', flex: 5),
        ],
      )
    ];
    List<List<TableModel>> data4 = [
      ...List.generate(
        dataLength,
        (index) => [
          TableModel(data: 'Lorem Ipsum Dolor Sit Amet', flex: 5),
        ],
      )
    ];
    List<List<TableModel>> data5 = [
      ...List.generate(
        dataLength,
        (index) => [
          TableModel(data: 'SO-23425', flex: 2),
          TableModel(
              expanded: false,
              child: const AppTags(
                text: 'Berhasil',
                color: AppColors.transparent,
                textColor: AppColors.greenLv1,
                borderWidth: 1,
                borderColor: AppColors.greenLv1,
              )),
        ],
      )
    ];
    List<List<TableModel>> headerTitle = [
      [
        TableModel(
            data: 'Riwayat Transaksi',
            textStyle: AppTextStyle.bold(
              size: 14,
              color: AppColors.blackLv3,
            )),
      ]
    ];

    List<List<TableModel>> tableNavigation = [
      [
        TableModel(
          child: AppTableNavigation(
            maxRows: 25,
            maxPageIndex: 10,
            currentPageIndex: 1,
            onSelectedMaxRows: (i) {},
            onTapFirstPage: () {},
            onTapLastPage: () {},
            onTapNextPage: () {},
            onTapPrevPage: () {},
          ),
        ),
      ]
    ];

    // TODO: implement build
    return TableFinancialJurnal(
      headerTitle: headerTitle,
      headerData1: headerData1,
      data1: data1,
      headerData2: headerData2,
      data2: data2,
      headerData3: headerData3,
      data3: data3,
      headerData4: headerData4,
      data4: data4,
      headerData5: headerData5,
      data5: data5,
      tableNavigation: tableNavigation,
    );
  }
}
