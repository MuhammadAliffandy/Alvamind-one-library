import 'package:flutter/material.dart';

import '../../app/theme/app_sizes.dart';
import '../../widget/organism/time_field/time_field.dart';
import 'sample_wrapper.dart';

class TimeFieldSamplesView extends StatefulWidget {
  const TimeFieldSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-time-field-samples';

  @override
  State<TimeFieldSamplesView> createState() => _TimeFieldSamplesViewState();
}

class _TimeFieldSamplesViewState extends State<TimeFieldSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Time Field Samples')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            timeField(),
          ],
        ),
      ),
    );
  }

  Widget timeField() {
    return SampleWrapper(
      title: 'Time Field',
      widget: TimeField(
        onChangedStartCalendar: (String) {
          // TODO
        },
        onChangedEndCalendar: (String) {
          // TODO
        },
        onChangedStartTime: (String) {
          // TODO
        },
        onChangedEndTime: (String) {
          // TODO
        },
      ),
    );
  }
}
