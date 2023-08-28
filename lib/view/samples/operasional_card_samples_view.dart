import 'package:flutter/material.dart';

import '../../app/theme/app_sizes.dart';
import '../../widget/organism/operasional_card/operasional_card.dart';
import '../../widget/organism/operasional_card/operasional_card_edit.dart';
import 'sample_wrapper.dart';

class OperasionalCardSamplesView extends StatefulWidget {
  const OperasionalCardSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-operasional-card-samples';

  @override
  State<OperasionalCardSamplesView> createState() => _OperasionalCardSamplesViewState();
}

class _OperasionalCardSamplesViewState extends State<OperasionalCardSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Operasional Card')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            operasionalCard(),
            operasionalCardCustom(),
            operasionalCardDisabled(),
            operasionalCardEdit(),
          ],
        ),
      ),
    );
  }

  Widget operasionalCard() {
    return SampleWrapper(
      title: 'Operasional Card Active',
      widget: OperasionalCard(
        dayTitle: 'Senin',
        time: '08.00 - 17.00',
        onChanged: (value) {
          // TODO
        },
      ),
    );
  }

  Widget operasionalCardCustom() {
    return SampleWrapper(
      title: 'Operasional Card Custom',
      widget: OperasionalCard(
        isCustom: true,
        title: 'Notifikasi',
        time: '08.00 - 17.00',
        onChanged: (value) {
          // TODO
        },
      ),
    );
  }

  Widget operasionalCardDisabled() {
    return SampleWrapper(
      title: 'Operasional Card Disabled',
      widget: OperasionalCard(
        isDisabled: true,
        dayTitle: 'Selasa',
        time: '08.00 - 17.00',
        chipCloseButton: () {
          // TODO
        },
        onChanged: (value) {
          // TODO
        },
      ),
    );
  }

  Widget operasionalCardEdit() {
    return SampleWrapper(
      title: 'Operasional Card Edit',
      widget: OperasionalCardEdit(
        dayTitle: 'Selasa',
        time: '08.00 - 17.00',
        onChangedToggle: (value) {},
      ),
    );
  }
}
