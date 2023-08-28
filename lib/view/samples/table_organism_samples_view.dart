import 'package:alvamind_library/widget/molecule/app_tags.dart';
import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_text_style.dart';
import '../../model/table_model.dart';
import '../../widget/molecule/app_Checkbox.dart';
import '../../widget/molecule/app_table_navigation.dart';
import '../../widget/organism/table_organism/table_financal_journal.dart';
import 'sample_wrapper.dart';

class TableOrganismSamplesView extends StatefulWidget {
  const TableOrganismSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-table-financial-journal-samples';

  @override
  State<TableOrganismSamplesView> createState() => _TableOrganismSamplesViewState();
}

class _TableOrganismSamplesViewState extends State<TableOrganismSamplesView> {
  List<TableModel> headerData1 = [
    TableModel(
      expanded: false,
      child: AppCheckbox(
        value: true,
        fillColor: AppColors.blackLv1,
        onChanged: (val) {},
      ),
    ),
    TableModel(
      flex: 6,
      data: 'Tanggal',
      textStyle: AppTextStyle.bodyMedium(
        fontWeight: AppFontWeight.bold,
      ),
    ),
    TableModel(
      flex: 5,
      data: 'Akun Debet',
      textStyle: AppTextStyle.bodyMedium(
        fontWeight: AppFontWeight.bold,
      ),
    ),
  ];

  List<TableModel> headerData2 = [
    TableModel(
      data: 'Akun Kredit',
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

  List<List<TableModel>> data1 = [
    ...List.generate(
      7,
      (index) => [
        TableModel(
          expanded: false,
          child: AppCheckbox(
            value: false,
            fillColor: AppColors.blackLv1,
            onChanged: (val) {},
          ),
        ),
        TableModel(data: '23/05/2023 17:34', flex: 6),
        TableModel(data: 'Pembayaran', flex: 5),
      ],
    )
  ];
  List<List<TableModel>> data2 = [
    ...List.generate(
      7,
      (index) => [
        TableModel(data: 'Kas Toko Barokah', flex: 5),
        TableModel(data: 'Rp. 125.000', flex: 5),
      ],
    )
  ];
  List<List<TableModel>> data3 = [
    ...List.generate(
      7,
      (index) => [
        TableModel(data: 'Rp. 125.000', flex: 5),
        TableModel(data: 'Rp. 125.000', flex: 5),
      ],
    )
  ];
  List<List<TableModel>> data4 = [
    ...List.generate(
      7,
      (index) => [
        TableModel(data: 'Lorem Ipsum Dolor Sit Amet', flex: 5),
      ],
    )
  ];
  List<List<TableModel>> data5 = [
    ...List.generate(
      7,
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
          data: 'Jurnal Keuangan',
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Table Organism Samples')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            defaultTable(),
          ],
        ),
      ),
    );
  }

  Widget defaultTable() {
    return SampleWrapper(
      title: 'Table Financial Journal',
      widget: TableFinancialJurnal(
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
      ),
    );
  }
}
