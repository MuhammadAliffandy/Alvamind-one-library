import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_text_style.dart';
import '../../widget/molecule/app_dialog.dart';
import '../../widget/molecule/app_text_field.dart';
import 'sample_wrapper.dart';

class InputSearchFieldSamplesView extends StatefulWidget {
  const InputSearchFieldSamplesView({Key? key}) : super(key: key);

  static const routeName = '/molecule-input-search-field-samples';

  @override
  State<InputSearchFieldSamplesView> createState() =>
      _InputSearchFieldSamplesViewState();
}

class _InputSearchFieldSamplesViewState
    extends State<InputSearchFieldSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Input Search Field Samples')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            defaultInputSearchField(),
            defaultInputSearchFieldDark(),
          ],
        ),
      ),
    );
  }

  Widget defaultInputSearchField() {
    return SampleWrapper(
      title: 'Default Input Search Field ',
      widget: AppTextField(
        onTapSearcFilter: () {
          final navigator = Navigator.of(context);
          AppDialog.show(
            navigator,
            title: 'Dialog Title',
            text: 'Dialog Text',
            leftButtonText: 'Left Button',
            rightButtonText: 'Right Button',
          );
        },
        hintText: 'Search...',
        type: AppTextFieldType.search,
      ),
    );
  }

  Widget defaultInputSearchFieldDark() {
    return SampleWrapper(
      title: 'Default Input Search Field Dark',
      widget: AppTextField(
        onTapSearcFilter: () {
          final navigator = Navigator.of(context);
          AppDialog.show(
            navigator,
            title: 'Dialog Title',
            text: 'Dialog Text',
            leftButtonText: 'Left Button',
            rightButtonText: 'Right Button',
          );
        },
        hintText: 'Search...',
        type: AppTextFieldType.search,
        fillColor: AppColors.blackLv1,
        onFocusFillColor: AppColors.blackLv1,
        iconsColor: AppColors.white,
        onFocusIconsColor: AppColors.white,
        textStyle: AppTextStyle.bold(
          size: 14,
          color: AppColors.white,
        ),
        hintStyle: AppTextStyle.semibold(
          size: 14,
          color: AppColors.blackLv6,
        ),
      ),
    );
  }
}
