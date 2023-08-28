import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';
import '../../widget/organism/order_card/order_card.dart';
import 'sample_wrapper.dart';

class OrderCardSamplesView extends StatefulWidget {
  const OrderCardSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-order-card-samples';

  @override
  State<OrderCardSamplesView> createState() => _OrderCardSamplesViewState();
}

class _OrderCardSamplesViewState extends State<OrderCardSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('OrderCard Samples')),
      backgroundColor: AppColors.blackLv8,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            orderCardProgress(),
            orderCardDone(),
          ],
        ),
      ),
    );
  }

  Widget orderCardProgress() {
    return SampleWrapper(
      title: 'OrderCard Progress',
      widget: OrderCard(
        starImageCount: '50',
        title: 'Barokah Laundry',
        isProgress: true,
        textPrice: 'Rp42.431',
        statusPrice: '/00 days',
        dateProgress: '2 Agustus 2023',
        textLeftButton: 'Detail Pesanan',
        textRightButton: 'Lacak Pengiriman',
        labelingCount: 40,
        onTapLeftButton: () {
          // TODO
        },
        onTapRightButton: () {
          // TODO
        },
      ),
    );
  }

  Widget orderCardDone() {
    return SampleWrapper(
      title: 'OrderCard Done',
      widget: OrderCard(
        isDone: true,
        starImageCount: '50',
        title: 'Barokah Laundry',
        textPrice: 'Rp42.431',
        dateDone: 'Month 00 - 00, 0000 (00 days)',
        statusPrice: '/00 days',
        textLeftButton: 'Detail',
        textRightButton: 'E-Receipt',
        onTapLeftButton: () {
          // TODO
        },
        onTapRightButton: () {
          // TODO
        },
      ),
    );
  }
}
