import 'package:alvamind_library/widget/organism/outlet_hero/outlet_hero_category.dart';
import 'package:flutter/material.dart';

import '../../app/theme/app_sizes.dart';
import 'sample_wrapper.dart';

class OutletHeroCategorySamplesView extends StatefulWidget {
  const OutletHeroCategorySamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-outlet-hero-category-samples';

  @override
  State<OutletHeroCategorySamplesView> createState() => _OutletHeroCategorySamplesViewState();
}

class _OutletHeroCategorySamplesViewState extends State<OutletHeroCategorySamplesView> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Outlet Hero Category Samples')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            outletHeroCategory(),
        
          ],
        ),
      ),
    );
  }

  Widget outletHeroCategory() {
    return SampleWrapper(
      title: 'Outlet Hero Category ',
      widget: OutletHeroCategory(
        leftTitle: '04832',
        centerTitle: '2-3 Days',
        rightTitle: '2.4 Kg',
        onTapLeftButton: () {
          // TODO
        },
        onTapCenterButton: () {
          // TODO
        },
        onTapRightButton: () {
          // TODO
        },
      ),
    );
  }
}
