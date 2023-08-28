import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';
import '../../widget/organism/terms_condition_list/terms_condition_list.dart';
import 'sample_wrapper.dart';

class TermsConditionListSamplesView extends StatefulWidget {
  const TermsConditionListSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-terms-condition-list-samples';

  @override
  State<TermsConditionListSamplesView> createState() => _TermsConditionListSamplesViewState();
}

class _TermsConditionListSamplesViewState extends State<TermsConditionListSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Terms Condition List Samples')),
      backgroundColor: AppColors.blackLv10,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            termsConditionList()
          ],
        ),
      ),
    );
  }

  Widget termsConditionList() {
    return const SampleWrapper(
      title: 'Terms Condiiton',
      widget: TermsConditionList(),
    );
  }
}
