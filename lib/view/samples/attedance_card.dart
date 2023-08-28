import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';
import '../../widget/molecule/app_tags.dart';
import '../../widget/organism/attedance_card/attedance_card.dart';
import 'sample_wrapper.dart';

class AttedanceCardSamplesView extends StatefulWidget {
  const AttedanceCardSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-attendance-card-samples';

  @override
  State<AttedanceCardSamplesView> createState() => _AttedanceCardSamplesViewState();
}

class _AttedanceCardSamplesViewState extends State<AttedanceCardSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Attendance Card Samples')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            attedanceCard(),
          ],
        ),
      ),
    );
  }

  Widget attedanceCard() {
    return const SampleWrapper(
      title: 'Attedance Card',
      widget: AttedanceCard(
        dateAttedance: '2 Agustus 2023',
        timeStart: '08:00 AM',
        timeEnd: '18:00 PM',
        statusTags: AppTags(
          text: 'Masuk Kerja',
          borderColor: AppColors.greenLv1,
          borderWidth: 1,
          color: AppColors.transparent,
          textColor: AppColors.greenLv1,
        ),
      ),
    );
  }
}
