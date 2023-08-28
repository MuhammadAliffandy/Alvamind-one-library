import 'package:alvamind_library/app/theme/app_sizes.dart';

import 'package:alvamind_library/view/samples/sample_wrapper.dart';
import 'package:flutter/material.dart';

import '../../widget/organism/notification_list_body/notification_list_body.dart';

class NotificationListBodySamplesView extends StatefulWidget {
  const NotificationListBodySamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-notification-list-body-samples';

  @override
  State<NotificationListBodySamplesView> createState() => _NotificationListBodySamplesViewState();
}

class _NotificationListBodySamplesViewState extends State<NotificationListBodySamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notification List Body Samples')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            notificationListBody(),
          ],
        ),
      ),
    );
  }

  Widget notificationListBody() {
    return SampleWrapper(
      title: 'Notification List Body',
      widget: NotificationListBody(),
    );
  }
}
