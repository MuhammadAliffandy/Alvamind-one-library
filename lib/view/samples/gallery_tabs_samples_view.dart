import 'package:flutter/material.dart';

import '../../app/theme/app_sizes.dart';
import '../../widget/molecule/app_image_ink.dart';
import '../../widget/organism/tags_organism.dart/tags_organism.dart';
import 'sample_wrapper.dart';

class GalleryTabsSamplesView extends StatefulWidget {
  const GalleryTabsSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-Gallery-tabs-samples';

  @override
  State<GalleryTabsSamplesView> createState() => _GalleryTabsSamplesViewState();
}

class _GalleryTabsSamplesViewState extends State<GalleryTabsSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gallery Tabs Samples')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            gallery()
          ],
        ),
      ),
    );
  }

  int selected = 0;

  Widget gallery() {
    return SampleWrapper(
      title: 'Gallery',
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TagsOrganism(
            listChips: const [
              'Semua',
              'Dari Toko',
              'Konsumen',
            ],
            onTap: (value) {
              // TODO
              setState(() {
                selected = value;
              });
            },
          ),
          SizedBox(height: AppSizes.padding),
          Container(
            height: MediaQuery.of(context).size.height,
            child: GridView.count(
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              children: List.generate(
                  selected == 1
                      ? 12
                      : selected == 2
                          ? 16
                          : 9, (index) {
                return Padding(
                  padding: EdgeInsets.all(AppSizes.padding / 3),
                  child: AppImageInk(
                    image: 'https://picsum.photos/id/2$index/200/200',
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
