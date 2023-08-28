import 'package:alvamind_library/widget/molecule/app_column_ink.dart';
import 'package:flutter/material.dart';

import '../../app/asset/app_assets.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';
import '../../widget/molecule/app_button.dart';
import '../../widget/organism/order_card/order_card.dart';
import 'sample_wrapper.dart';

class ComplainListBodySamplesView extends StatefulWidget {
  const ComplainListBodySamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-complain-list-body-samples';

  @override
  State<ComplainListBodySamplesView> createState() => _ComplainListBodySamplesViewState();
}

class _ComplainListBodySamplesViewState extends State<ComplainListBodySamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Complain List Body Samples')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            complainListBodyActive(),
            complainListBodyDone(),
          ],
        ),
      ),
    );
  }

  Widget complainListBodyActive() {
    return SampleWrapper(
      title: 'Complain List Body Active',
      widget: AppColumnInk(
        children: [
          ...List.generate(3, (i) {
            return Padding(
              padding: i == 2 ? const EdgeInsets.all(0) : EdgeInsets.only(bottom: AppSizes.padding),
              child: OrderCard(
                image: 'https://picsum.photos/23$i/300',
                boxShadow: const [
                  BoxShadow(
                    color: AppColors.blackLv7,
                    offset: Offset(0, 4),
                    blurRadius: 60,
                    spreadRadius: -10,
                  ),
                ],
                starImageCount: '50',
                title: 'Barokah Laundry',
                isProgress: true,
                showProgressLine: false,
                showButton: false,
                textPrice: 'Rp42.431',
                statusPrice: '/00 days',
                dateProgress: '2 Agustus 2023',
                textLeftButton: 'Detail Pesanan',
                textRightButton: 'Lacak Pengiriman',
                tagText: i == 0
                    ? 'Solusi Ditolak'
                    : i == 1
                        ? 'Solusi Diajukan'
                        : 'Selesai',
                tagBorderColor: i == 0
                    ? AppColors.redLv1
                    : i == 1
                        ? AppColors.primary
                        : AppColors.greenLv1,
                tagTextColor: i == 0
                    ? AppColors.redLv1
                    : i == 1
                        ? AppColors.primary
                        : AppColors.greenLv1,
                labelingCount: 40,
                customWidget: [
                  Expanded(
                    child: AppButton(
                      onTap: () {},
                      text: 'Lihat Detail',
                      rounded: true,
                      textColor: AppColors.white,
                      borderWidth: 2,
                      buttonColor: AppColors.primary,
                      borderColor: AppColors.primary,
                      padding: EdgeInsets.symmetric(
                        vertical: AppSizes.padding / 2.5,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: AppSizes.padding / 2,
                  ),
                  Expanded(
                    child: AppButton(
                      onTap: () {},
                      padding: EdgeInsets.symmetric(
                        vertical: AppSizes.padding / 2.5,
                      ),
                      leftIcon: CustomIcon.chatBoldIcon,
                      text: 'Diskusi (2)',
                      textColor: AppColors.primary,
                      borderWidth: 2,
                      buttonColor: AppColors.white,
                      borderColor: AppColors.primary,
                      rounded: true,
                    ),
                  ),
                ],
              ),
            );
          })
        ],
      ),
    );
  }

  Widget complainListBodyDone() {
    return SampleWrapper(
      title: 'Complain List Body Done',
      widget: AppColumnInk(
        children: [
          ...List.generate(3, (i) {
            return Padding(
              padding: i == 2 ? const EdgeInsets.all(0) : EdgeInsets.only(bottom: AppSizes.padding),
              child: OrderCard(
                image: 'https://picsum.photos/23$i/300',
                boxShadow: const [
                  BoxShadow(
                    color: AppColors.blackLv7,
                    offset: Offset(0, 4),
                    blurRadius: 60,
                    spreadRadius: -10,
                  ),
                ],
                starImageCount: '50',
                title: 'Barokah Laundry',
                isProgress: true,
                showButton: false,
                textPrice: 'Rp42.431',
                statusPrice: '/00 days',
                dateProgress: '2 Agustus 2023',
                textLeftButton: 'Detail Pesanan',
                textRightButton: 'Lacak Pengiriman',
                tagText: 'Selesai',
                tagBorderColor: AppColors.greenLv1,
                tagTextColor: AppColors.greenLv1,
                labelingCount: 40,
                onTapLeftButton: () {
                  // TODO
                },
                onTapRightButton: () {
                  // TODO
                },
              ),
            );
          })
        ],
      ),
    );
  }
}
