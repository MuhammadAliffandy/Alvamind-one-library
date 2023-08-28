import 'package:alvamind_library/app/theme/app_text_style.dart';
import 'package:alvamind_library/widget/molecule/app_column_ink.dart';
import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';

import '../../widget/molecule/app_dialog.dart';
import '../../widget/molecule/app_text_field.dart';
import '../../widget/organism/item_card/item_card_list.dart';
import '../../widget/organism/order_type_info/order_type_info.dart';
import '../../widget/organism/tags_organism.dart/tags_organism.dart';
import 'sample_wrapper.dart';

class OutletListBodySamplesView extends StatefulWidget {
  const OutletListBodySamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-outlet-list-body-samples';

  @override
  State<OutletListBodySamplesView> createState() => _OutletListBodySamplesViewState();
}

class _OutletListBodySamplesViewState extends State<OutletListBodySamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Outlet List Body Samples')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            viewByPublic(),
            viewByOwner(),
          ],
        ),
      ),
    );
  }

  int tagSelected1 = 0;

  Widget viewByPublic() {
    return SampleWrapper(
      title: 'Outlet List Body View By Public',
      widget: AppColumnInk(
        children: [
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
            hintText: 'Cari Laundry',
            type: AppTextFieldType.search,
          ),
          SizedBox(height: AppSizes.padding),
          TagsOrganism(
            listChips: const [
              'Semua',
              'Reguler',
              'Premium',
            ],
            onTap: (value) {
              // TODO
              setState(() {
                tagSelected1 = value;
              });
            },
          ),
          SizedBox(height: AppSizes.padding),
          Text(
            '3 Toko',
            style: AppTextStyle.bold(size: 20),
          ),
          SizedBox(height: AppSizes.padding),
          ...List.generate(
              tagSelected1 == 1
                  ? 1
                  : tagSelected1 == 2
                      ? 2
                      : 3, (i) {
            return Padding(
              padding: i == 2 ? EdgeInsets.all(0) : EdgeInsets.only(bottom: AppSizes.padding),
              child: ItemCardList(
                image: 'https://picsum.photos/20$i/300/',
                starImageCount: '50',
                title: 'Barokah Laundry',
                dateProgress: '2 Agustus 2023',
                textLeftButton: 'Detail Pesanan',
                textRightButton: 'Lacak Pengiriman',
                address: 'Jl. Sukamenak DPR RI KOM...',
                isProfile: true,
                tagText: tagSelected1 == 1
                    ? 'Reguler'
                    : tagSelected1 == 0 && i == 1
                        ? 'Reguler'
                        : 'Premium',
                tagColor: tagSelected1 == 1
                    ? AppColors.greenLv1
                    : tagSelected1 == 0 && i == 1
                        ? AppColors.greenLv2
                        : AppColors.orangeLv1,
                boxShadow: const [
                  BoxShadow(
                    color: AppColors.blackLv7,
                    offset: Offset(0, 4),
                    blurRadius: 60,
                    spreadRadius: -10,
                  ),
                ],
                onTapCard: () {
                  // TODO
                },
              ),
            );
          })
        ],
      ),
    );
  }

  Widget viewByOwner() {
    return SampleWrapper(
      title: 'Outlet List Body By Owner',
      widget: AppColumnInk(
        children: [
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
              'Surabaya',
              'Jakarta',
              'Malang',
              'Semarang',
            ],
            onTap: (value) {
              // TODO
            },
          ),
          SizedBox(height: AppSizes.padding),
          Text(
            '3 Toko',
            style: AppTextStyle.bold(size: 20),
          ),
          SizedBox(height: AppSizes.padding),
          ...List.generate(3, (i) {
            return Padding(
              padding: i == 2 ? EdgeInsets.all(0) : EdgeInsets.only(bottom: AppSizes.padding),
              child: ItemCardList(
                boxShadow: const [
                  BoxShadow(
                    color: AppColors.blackLv7,
                    offset: Offset(0, 4),
                    blurRadius: 60,
                    spreadRadius: -10,
                  ),
                ],
                image: 'https://picsum.photos/23$i/300/',
                starImageCount: '50',
                title: 'Barokah Laundry',
                dateProgress: '2 Agustus 2023',
                textLeftButton: 'Detail Toko',
                textRightButton: 'Laporan Keuangan',
                address: 'Jl. Sukamenak DPR RI KOM...',
                isProfile: true,
                isOwner: true,
                onTapLeftButton: () {
                  // TODO
                },
                onTapRightButton: () {
                  // TODO
                },
                detailInfoCard: OrderTypeInfo(
                  withOrder: false,
                  countMachine: '21/24',
                  countCustomers: '3.145',
                  countEmployees: '7',
                  deliveryButton: () {
                    // TODO
                  },
                  dropButton: () {
                    // TODO
                  },
                  selfButton: () {
                    // TODO
                  },
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}
