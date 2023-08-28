import 'package:alvamind_library/widget/molecule/app_column_ink.dart';
import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';
import '../../app/theme/app_text_style.dart';
import '../../widget/molecule/app_dialog.dart';
import '../../widget/molecule/app_text_field.dart';
import '../../widget/organism/item_card/item_card_list.dart';
import '../../widget/organism/order_type_info/order_type_info.dart';
import '../../widget/organism/tags_organism.dart/tags_organism.dart';
import 'sample_wrapper.dart';

class CustomerListBodySamplesView extends StatefulWidget {
  const CustomerListBodySamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-customer-list-body-samples';

  @override
  State<CustomerListBodySamplesView> createState() => _CustomerListBodySamplesViewState();
}

class _CustomerListBodySamplesViewState extends State<CustomerListBodySamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Customer List Body Samples')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customerListBody(),
          ],
        ),
      ),
    );
  }

  Widget customerListBody() {
    return SampleWrapper(
      title: 'Customer List Body',
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
            hintText: 'Cari Kustomer',
            type: AppTextFieldType.search,
          ),
          SizedBox(height: AppSizes.padding),
          TagsOrganism(
            listChips: const [
              'A - Z',
              'Z - A',
              'Terbaru',
              'Terlama',
            ],
            onTap: (value) {
              // TODO
            },
          ),
          SizedBox(height: AppSizes.padding),
          Text(
            '3 Konsumen',
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
                dateProfileItem: 'Sejak 10 Januari 2014',
                textLeftButton: 'Detail Konsumen',
                textRightButton: 'Whatsapp',
                address: 'Jl. Sukamenak DPR RI KOM...',
                isProfile: true,
                isOwner: true,
                isCustomer: true,
                onTapLeftButton: () {
                  // TODO
                },
                onTapRightButton: () {
                  // TODO
                },
                detailInfoCard: const OrderTypeInfo(
                  isCustomer: true,
                  withOrder: false,
                  countMachine: '42',
                  countCustomers: '13',
                  countEmployees: '0',
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}
