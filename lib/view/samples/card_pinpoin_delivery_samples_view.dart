import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';
import '../../widget/organism/card_pinpoin_delivery/address_content.dart';
import '../../widget/organism/card_pinpoin_delivery/card_pinpoin_delivery.dart';
import '../../widget/organism/card_pinpoin_delivery/courier_content.dart';
import '../../widget/organism/order_card/order_card.dart';
import '../../widget/organism/order_list/order_list.dart';
import 'sample_wrapper.dart';

class CardPinPoinDeliverySamplesView extends StatefulWidget {
  const CardPinPoinDeliverySamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-card-pinpoin-delivery-samples';

  @override
  State<CardPinPoinDeliverySamplesView> createState() => _CardPinPoinDeliverySamplesViewState();
}

class _CardPinPoinDeliverySamplesViewState extends State<CardPinPoinDeliverySamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card PinPoin & Delivery')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            cardPinPoinDelivery(),
          ],
        ),
      ),
    );
  }

  Widget cardPinPoinDelivery() {
    return SampleWrapper(
      title: 'Card PinPoin & Delivery',
      widget: CardPinPoinDelivery(
        countLocationUser: 'lokasi anda ( dalam 10 km )',
        locationUser: 'Margahayu. Bandung',
        functionEditButton: () {
          // TODO
        },
        onChanged: (String) {
          // TODO
        },
        //
        //
        deliverAddress: const AddressContent(
          deliveryAddress: 'Zabiniec 12/222, 31-215\nCracow, Poland',
          deliveryTime: 'Hari ini, 21 Juni 2023',
        ),
        //
        //
        courierDetail: CourierContent(
          deliveryAddress: const AddressContent(
            deliveryAddress: 'Zabiniec 12/222, 31-215\nCracow, Poland',
            deliveryTime: 'Hari ini, 21 Juni 2023',
          ),
          onTapCallButton: () {
            // TODO
          },
          onTapChatButton: () {
            // TODO
          },
          idCourier: 'Joole D Kurir',
          nameCourier: 'ID #1234567',
        ),
        //
        //
        orderList: OrderList(
          title: 'Alasan',
          dateTime: '12 : 30 PM',
          location: 'Tokyo, Jepang',
          description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
          boxShadow: const [
            BoxShadow(
              color: AppColors.blackLv7,
              offset: Offset(0, 4),
              blurRadius: 60,
              spreadRadius: 0,
            ),
          ],
          //
          //
          orderCard: OrderCard(
            padding: EdgeInsets.all(0),
            backgroundColor: AppColors.white,
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
      ),
    );
  }
}
