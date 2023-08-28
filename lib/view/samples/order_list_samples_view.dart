 
import 'package:flutter/material.dart';


import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';
import '../../widget/organism/order_card/order_card.dart';
import '../../widget/organism/order_list/order_list.dart';
import 'sample_wrapper.dart';

class OrderListSamplesView extends StatefulWidget {
  const OrderListSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-order-list-samples';

  @override
  State<OrderListSamplesView> createState() => _OrderListSamplesViewState();
}

class _OrderListSamplesViewState extends State<OrderListSamplesView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackLv9,
      appBar: AppBar(title: const Text('Order List')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            orderList(),
          ],
        ),
      ),
    );
  }

  Widget orderList() {
    return SampleWrapper(
      title: 'Order Item Card',
      widget: OrderList(
        title: 'Alasan',
        dateTime: '12 : 30 PM',
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        location: 'Tokyo, Jepang',
        orderCard: OrderCard(
          padding: EdgeInsets.all(0),
          backgroundColor: AppColors.transparent,
          starImageCount: '50',
          title: 'Barokah Laundry',
          isProgress: true,
          textPrice: '20 Kg',
          statusPrice: 'Estimasi Selesai 7 hari',
          dateProgress: '2 Agustus 2023',
          textLeftButton: 'Detail Pesanan',
          textRightButton: 'Lacak Pengiriman',
          labelingCount: 40,
          tagText: 'Delivery',
          tagTextColor: AppColors.white,
          tagColor: AppColors.greenLv3,
          tagBorderWidth: 0,
          onTapLeftButton: () {
            // TODO
          },
          onTapRightButton: () {
            // TODO
          },
        ),
      ),
    );
  }
}
