import 'package:alvamind_library/app/theme/app_sizes.dart';
import 'package:alvamind_library/view/samples/sample_wrapper.dart';
import 'package:alvamind_library/widget/organism/outlet_hero/outlet_hero.dart';

import 'package:flutter/material.dart';

class OutletHeroSamplesView extends StatefulWidget {
  const OutletHeroSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-outlet-hero-samples';

  @override
  State<OutletHeroSamplesView> createState() => _OutletHeroSamplesViewState();
}

class _OutletHeroSamplesViewState extends State<OutletHeroSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Outlet Hero Samples')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            outletHero(),
          ],
        ),
      ),
    );
  }

  Widget outletHero() {
    return SampleWrapper(
      title: 'Outlet Hero',
      widget: OutletHero(
        nameOutlet: 'Meta Laundromat',
        address: '0.5 km - Grand City St. 100, New York, United States',
        countStar: '4.8',
        countReview: '120',
        tagStatus: 'Premium',
        descriptionText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et...',
        onTapDeliveryButton: () {
          // TODO
        },
        onTapDropButton: () {
          // TODO
        },
        onTapServiceButton: () {
          // TODO
        },
      ),
    );
  }
}
