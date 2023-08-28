import 'package:alvamind_library/app/theme/app_text_style.dart';
import 'package:flutter/material.dart';

import '../../app/asset/app_assets.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';
import '../../widget/molecule/app_dialog.dart';
import '../../widget/molecule/app_icon_button.dart';
import '../../widget/molecule/app_text_field.dart';
import '../../widget/organism/item_card/item_card_list_selected.dart';
import '../../widget/organism/tags_organism.dart/tags_organism.dart';
import 'sample_wrapper.dart';

class ServiceTabsSamplesView extends StatefulWidget {
  const ServiceTabsSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-service-tabs-samples';

  @override
  State<ServiceTabsSamplesView> createState() => _ServiceTabsSamplesViewState();
}

class _ServiceTabsSamplesViewState extends State<ServiceTabsSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Service Tab Samples')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            serviceTabs(),
          ],
        ),
      ),
    );
  }

  int tagSelected = 0;

  Widget serviceTabs() {
    return SampleWrapper(
        title: 'Service Tab ',
        widget: Ink(
          child: Column(
            children: [
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et...',
                style: AppTextStyle.regular(size: 14),
              ),
              SizedBox(height: AppSizes.padding),
              AppTextField(
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
                hintText: 'Cari Layanan',
                type: AppTextFieldType.search,
              ),
              SizedBox(height: AppSizes.padding),
              TagsOrganism(
                listChips: const [
                  'Semua',
                  'Pakaian',
                  'Alat tidur',
                  'Karpet',
                ],
                onTap: (value) {
                  // TODO
                  setState(() {
                    tagSelected = value;
                  });
                },
              ),
              SizedBox(height: AppSizes.padding),
              ...List.generate(
                  tagSelected == 1
                      ? 4
                      : tagSelected == 2
                          ? 6
                          : tagSelected == 3
                              ? 8
                              : 1, (i) {
                return Padding(
                  padding: EdgeInsets.only(bottom: AppSizes.padding),
                  child: ItemCardListSelected(
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.blackLv7.withOpacity(0.5),
                        offset: Offset(0, 4),
                        blurRadius: 60,
                        spreadRadius: 0,
                      ),
                    ],
                    image: 'https://picsum.photos/22$i/300/',
                    starImageCount: '50',
                    title: 'Cuci Kering',
                    isList: true,
                    textPrice: 'Rp7rb',
                    statusPrice: '/kg',
                    dateProgress: '2 Agustus 2023',
                    typeItem: 'Pakaian',
                    timeWork: '3 Hari Kerja',
                    textLeftButton: 'Detail Pesanan',
                    textRightButton: 'Lacak Pengiriman',
                    withCustomItem: true,
                    rightItem: AppIconButton(
                        buttonColor: AppColors.transparent,
                        padding: EdgeInsets.all(0),
                        onTap: () {
                          // TODO
                        },
                        icon: const Icon(
                          CustomIcon.editPenIcon,
                          size: 18,
                          color: AppColors.primary,
                        )),
                    onTapCard: () {
                      // TODO
                    },
                  ),
                );
              })
            ],
          ),
        ));
  }
}
