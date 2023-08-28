import 'package:alvamind_library/widget/molecule/app_column_ink.dart';
import 'package:flutter/material.dart';

import '../../app/theme/app_sizes.dart';
import '../../widget/organism/operasional_card/operasional_card_edit.dart';
import 'sample_wrapper.dart';

class OperasionalListBodySamplesView extends StatefulWidget {
  const OperasionalListBodySamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-operasional-list-body-samples';

  @override
  State<OperasionalListBodySamplesView> createState() => _OperasionalListBodySamplesViewState();
}

List<String> dayList = [
  'Senin',
  'Selasa',
  'Rabu',
  'Kamis',
  'Jumat',
  'Sabtu',
  'Minggu',
];

class _OperasionalListBodySamplesViewState extends State<OperasionalListBodySamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Operasional List Body Samples')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            opersionalListBody()
          ],
        ),
      ),
    );
  }

  Widget opersionalListBody() {
    return SampleWrapper(
      title: 'Outlet Tab Container',
      widget: AppColumnInk(
        children: [
          ...List.generate(7, (index) {
            return Padding(
              padding: EdgeInsets.only(
                bottom: AppSizes.padding,
              ),
              child: OperasionalCardEdit(
                dayTitle: dayList[index],
                time: '08.00 - 17.00',
                isDisabled: index == 4 ? true : false,
                onChangedToggle: (value) {},
              ),
            );
          })
        ],
      ),
    );
  }
}
