import 'package:alvamind_library/app/asset/app_assets.dart';

import 'package:alvamind_library/app/theme/app_sizes.dart';
import 'package:alvamind_library/widget/organism/tab%20_detail_outlet/tab_detail_outlet.dart';
import 'package:flutter/material.dart';

import 'sample_wrapper.dart';

class TabDetailOutletSamplesView extends StatefulWidget {
  const TabDetailOutletSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-tab-detail-outlet-samples';

  @override
  State<TabDetailOutletSamplesView> createState() => _TabDetailOutletSamplesViewState();
}

class _TabDetailOutletSamplesViewState extends State<TabDetailOutletSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tab Detail Outlet Samples')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            tabBarOutletDetail(),
            tabBarDetailUserProfile(),
            tabBarDetailEmployee(),
            tabBarDetailInventori(),
            tabBarDetailCustom(),
          ],
        ),
      ),
    );
  }

  Widget tabBarOutletDetail() {
    return SampleWrapper(
      title: 'Tab Bar Detail Outlet',
      widget: DefaultTabController(
        length: 7,
        child: TabBarDetailOutlet(
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
      ),
    );
  }

  Widget tabBarDetailUserProfile() {
    return SampleWrapper(
      title: 'Tab Bar Detail User Profile',
      widget: DefaultTabController(
        length: 7,
        child: TabBarDetailOutlet(
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
      ),
    );
  }

  Widget tabBarDetailEmployee() {
    return SampleWrapper(
      title: 'Tab Bar Detail Employee',
      widget: DefaultTabController(
        length: 4,
        child: TabBarDetailOutlet(
          leftIcon: const [
            CustomIcon.chartCurvedIcon,
            CustomIcon.timesquareIcon,
            CustomIcon.timesquareIcon,
            CustomIcon.timesquareIcon,
          ],
          listTabBar: const [
            'Ringkasan',
            'Presensi',
            'Gaji',
            'Komisi',
          ],
          onTap: (value) {
            // TODO
          },
        ),
      ),
    );
  }

  Widget tabBarDetailInventori() {
    return SampleWrapper(
      title: 'Tab Bar Detail Inventori',
      widget: DefaultTabController(
        length: 3,
        child: TabBarDetailOutlet(
          leftIcon: const [
            CustomIcon.chartCurvedIcon,
            CustomIcon.boxIcon,
            CustomIcon.timesquareIcon,
          ],
          listTabBar: const [
            'Ringkasan',
            'Item Inventori',
            'Riwayat Pembelian',
          ],
          onTap: (value) {
            // TODO
          },
        ),
      ),
    );
  }

  Widget tabBarDetailCustom() {
    return SampleWrapper(
      title: 'Tab Bar Detail Custom',
      widget: DefaultTabController(
        length: 2,
        child: TabBarDetailOutlet(
          isScrollable: false,
          listTabBar: const [
            'Aktif',
            'Selesai'
          ],
          onTap: (value) {
            // TODO
          },
        ),
      ),
    );
  }
}
