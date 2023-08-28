import 'package:flutter/material.dart';

import '../../widget/atom/app_image.dart';
import '../../widget/atom/app_pin_point.dart';
import 'sample_wrapper.dart';

class PinPointSamplesView extends StatefulWidget {
  const PinPointSamplesView({Key? key}) : super(key: key);

  static const routeName = '/atom-pin-point-samples';

  @override
  State<PinPointSamplesView> createState() => _PinPointSamplesViewState();
}

class _PinPointSamplesViewState extends State<PinPointSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pin Point Samples')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            pinPoint(),
            pinPointCustomSize(),
          ],
        ),
      ),
    );
  }

  Widget pinPoint() {
    return const SampleWrapper(
      title: 'Pin Point',
      widget: AppPinPoint(image: randomImage),
    );
  }

  Widget pinPointCustomSize() {
    return const SampleWrapper(
      title: 'Pin Point Custom Size',
      widget: AppPinPoint(
        image: randomImage,
        size: 100,
      ),
    );
  }
}
