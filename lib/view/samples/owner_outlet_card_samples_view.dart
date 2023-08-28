import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';
import '../../widget/organism/item_card/item_card_list.dart';
import '../../widget/organism/order_type_info/order_type_info.dart';
import '../../widget/organism/owner_outlet_card/owner_oultet_card.dart';
import 'sample_wrapper.dart';

class OwnerOutletCardSamplesView extends StatefulWidget {
  const OwnerOutletCardSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-owner-outlet-card-samples';

  @override
  State<OwnerOutletCardSamplesView> createState() => _OwnerOutletCardSamplesViewState();
}

class _OwnerOutletCardSamplesViewState extends State<OwnerOutletCardSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackLv9,
      appBar: AppBar(title: const Text('Owner Oultet Card')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ownerOutletCard(),
          ],
        ),
      ),
    );
  }

  Widget ownerOutletCard() {
    return SampleWrapper(
      title: 'Owner Outlet Card',
      widget: OwnerOutletCard(
        title: 'Cuci Kering',
        starImageCount: '4.8',
        morePayment: 'Rp2.500',
        shuttlePayment: 'Free',
        textButton: 'Dipilih',
        isSelected: true,
        functionButton: () {
          // TODO
        },
        ownerCard: ItemCardList(
          starImageCount: '50',
          title: 'Barokah Laundry',
          dateProgress: '2 Agustus 2023',
          textLeftButton: 'Detail Pesanan',
          textRightButton: 'Lacak Pengiriman',
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
      ),
    );
  }
}
