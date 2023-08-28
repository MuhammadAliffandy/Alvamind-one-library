import 'package:flutter/material.dart';

import '../../app/asset/app_assets.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';
import '../../widget/molecule/app_card_container.dart';
import '../../widget/organism/operasional_card/operasional_card_edit.dart';
import '../../widget/organism/tab _detail_outlet/tab_detail_outlet.dart';
import '../../widget/organism/transaction_review_card/list_card_progress.dart';
import '../../widget/organism/transaction_review_card/list_transaction.dart';
import 'sample_wrapper.dart';

class TabsContainerSamplesView extends StatefulWidget {
  const TabsContainerSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-tabs-container-samples';

  @override
  State<TabsContainerSamplesView> createState() => _TabsContainerSamplesViewState();
}

List<String> dayList = [
  'Senin',
  'Selasa',
  'Rabu',
  'Kamis',
  'Jumat',
  'Sabtu',
  'Minggu',
];

class _TabsContainerSamplesViewState extends State<TabsContainerSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tabs Container Samples')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            outletTabContainer(),
            userProfileTabContainer(),
          ],
        ),
      ),
    );
  }

  Widget outletTabContainer() {
    return SampleWrapper(
      title: 'Outlet Tab Container',
      widget: AppCardContainer(
        padding: EdgeInsets.all(0),
        backgroundColor: AppColors.transparent,
        child: Column(
          children: [
            TabBarDetailOutlet(
              leftIcon: const [
                CustomIcon.chartCurvedIcon,
                CustomIcon.timesquareIcon,
                CustomIcon.documentIcon,
                CustomIcon.documentIcon,
                Icons.image_outlined,
                Icons.star_border_rounded,
                CustomIcon.documentIcon,
              ],
              listTabBar: const [
                'Ringkasan',
                'Jadwal',
                'Layanan',
                'Promo',
                'Gallery',
                'Ulasan',
                'Ketentuan',
              ],
              onTap: (value) {
                // TODO
              },
            ),
            SizedBox(
              height: AppSizes.padding,
            ),
            Column(
              children: [
                ...List.generate(7, (index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      bottom: AppSizes.padding,
                    ),
                    child: OperasionalCardEdit(
                      dayTitle: dayList[index],
                      time: '08.00 - 17.00',
                      isDisabled: index == 4 ? true : false,
                      onChangedToggle: (value) {},
                    ),
                  );
                })
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget userProfileTabContainer() {
    return SampleWrapper(
        title: 'User Profile Tab Container',
        widget: AppCardContainer(
          backgroundColor: AppColors.transparent,
          padding: EdgeInsets.all(0),
          child: Column(
            children: [
              TabBarDetailOutlet(
                leftIcon: const [
                  CustomIcon.chartCurvedIcon,
                  CustomIcon.timesquareIcon,
                  CustomIcon.timesquareIcon,
                  CustomIcon.timesquareIcon,
                  CustomIcon.documentIcon,
                  Icons.star_border_rounded,
                  Icons.image_outlined,
                  Icons.image_outlined,
                ],
                listTabBar: const [
                  'Ringkasan',
                  'Pemesanan',
                  'Pembayaran',
                  'Riwayat Wallet',
                  'Favorit',
                  'Ulasan',
                  'Komplain'
                ],
                onTap: (value) {
                  // TODO
                },
              ),
              SizedBox(height: AppSizes.padding * 2),
              const ListTransaction(
                email: 'nakama@gmail.com',
                number: '+62534234432',
                gender: 'Perempuan',
                registerDate: '19 Mei 2023',
                status: 'Aktif',
                statusColor: AppColors.greenLv1,
              ),
              SizedBox(height: AppSizes.padding * 1.5),
              ...List.generate(3, (i) {
                return Padding(
                  padding: EdgeInsets.only(bottom: AppSizes.padding * 1.5),
                  child: ListCard(
                    isSubtitle: i == 0 ? false : null,
                    leftIcon: i == 0 ? Icons.location_on_rounded : CustomIcon.walletBoldIcon,
                    leftIconColor: i == 0 ? AppColors.greenLv1 : null,
                    rightIcon: Icons.chevron_right_rounded,
                    title: i == 0
                        ? 'Alamat'
                        : i == 1
                            ? 'No Rekening'
                            : 'Selasa, 23 Juni 2023',
                    subtitle: 'Status Complain',
                    textTags: i == 0 ? '4' : 'Proses',
                    onTapChevronButton: () {
                      // TODO
                    },
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
