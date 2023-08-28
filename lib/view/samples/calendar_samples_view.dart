import 'package:alvamind_library/app/theme/app_text_style.dart';
import 'package:alvamind_library/view/samples/sample_wrapper.dart';
import 'package:alvamind_library/widget/molecule/app_card_container.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';

import '../../app/asset/app_assets.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';

class CalendarSamplesView extends StatefulWidget {
  const CalendarSamplesView({Key? key}) : super(key: key);

  static const routeName = '/molecule-calendar-samples';

  @override
  State<CalendarSamplesView> createState() => _CalendarSamplesViewState();
}

List<DateTime?> _dates = [
  DateTime.now(),
];

class _CalendarSamplesViewState extends State<CalendarSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calendar Samples')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            calendarSamples(),
          ],
        ),
      ),
    );
  }

  Widget calendarSamples() {
    return SampleWrapper(
      title: 'Calendar',
      widget: AppCardContainer(
        padding: EdgeInsets.all(AppSizes.padding / 2),
        backgroundColor: AppColors.blueLv5,
        child: CalendarDatePicker2(
          config: CalendarDatePicker2Config(
              controlsTextStyle: AppTextStyle.bold(
                size: 14,
                color: AppColors.black,
              ),
              weekdayLabelTextStyle: AppTextStyle.bold(size: 14, color: AppColors.black),
              dayTextStyle: AppTextStyle.medium(size: 14, color: AppColors.black),
              nextMonthIcon: const Icon(
                CustomIcon.iconArrowRight,
                color: AppColors.primary,
              )),
          value: _dates,
          onValueChanged: (dates) => _dates = dates,
        ),
      ),
    );
  }
}
