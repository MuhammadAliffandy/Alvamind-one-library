import 'package:flutter/material.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';
import '../../widget/molecule/app_dialog.dart';
import '../../widget/molecule/app_text_field.dart';
import '../../widget/organism/order_card/order_card.dart';
import '../../widget/organism/order_list/order_list.dart';
import '../../widget/organism/tags_organism.dart/tags_organism.dart';
import 'sample_wrapper.dart';

class OrderListBodySamplesView extends StatefulWidget {
  const OrderListBodySamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-order-list-body-samples';

  @override
  State<OrderListBodySamplesView> createState() => _OrderListBodySamplesViewState();
}

class _OrderListBodySamplesViewState extends State<OrderListBodySamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Order List Body Samples')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            orderListBody(),
          ],
        ),
      ),
    );
  }

  int tagSelected = 0;

  Widget orderListBody() {
    return SampleWrapper(
      title: 'Service Tab ',
      widget: Ink(
        child: Column(
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
                'Menunggu Konfirmasi',
                'Ambil',
                'Proses',
                'Antar',
                'Selesai',
                'Komplain',
                'Batal'
              ],
              onTap: (value) {
                // TODO
                setState(() {
                  tagSelected = value;
                });
              },
            ),
            SizedBox(height: AppSizes.padding),
            ...List.generate(3, (i) {
              return Padding(
                padding: EdgeInsets.only(bottom: AppSizes.padding),
                child: OrderList(
                  title: 'Alasan',
                  dateTime: '12 : 30 PM',
                  location: 'Tokyo, Jepang',
                  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  boxShadow: const [
                    BoxShadow(
                      color: AppColors.blackLv7,
                      offset: Offset(0, 4),
                      blurRadius: 60,
                      spreadRadius: -10,
                    ),
                  ],
                  orderCard: OrderCard(
                    image: 'https://picsum.photos/id/3$i/200/400',
                    padding: EdgeInsets.all(0),
                    backgroundColor: AppColors.transparent,
                    starImageCount: '50',
                    title: i == 1 ? 'Zarie Baptista' : 'Barokah Laundry',
                    isProgress: true,
                    textPrice: '20 Kg',
                    statusPrice: 'Estimasi Selesai 7 hari',
                    dateProgress: '2 Agustus 2023',
                    textLeftButton: i == 1 ? 'Order Outlet Lain' : 'Detail Pesanan',
                    textRightButton: i == 1 ? 'Batalkan Pesanan' : 'Lacak Pengiriman',
                    labelingCount: 40,
                    tagText: i == 1
                        ? 'HomeService'
                        : i == 2
                            ? 'SelfService'
                            : 'Delivery',
                    tagTextColor: AppColors.white,
                    tagColor: i == 1
                        ? AppColors.orangeLv1
                        : i == 2
                            ? AppColors.yellowLv1
                            : AppColors.greenLv3,
                    tagBorderWidth: 0,
                    leftButtonColor: i == 1 ? AppColors.blackLv7 : null,
                    rightButtonColor: i == 1 ? AppColors.redLv1 : null,
                    rightButtonTextColor: i == 1 ? AppColors.white : null,
                    leftButtonBorderColor: i == 1 ? AppColors.blackLv7 : null,
                    rightButtonBorderColor: i == 1 ? AppColors.redLv1 : null,
                    onTapLeftButton: () {
                      // TODO
                    },
                    onTapRightButton: () {
                      // TODO
                    },
                  ),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
