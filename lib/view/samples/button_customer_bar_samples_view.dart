import 'package:flutter/material.dart';

import '../../app/asset/app_assets.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';
import '../../widget/organism/button_bar_customer/button_bar_customer .dart';
import 'sample_wrapper.dart';

class ButtonBarCustomerSamplesView extends StatefulWidget {
  const ButtonBarCustomerSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-buttonbar-customer-samples';

  @override
  State<ButtonBarCustomerSamplesView> createState() => _ButtonBarCustomerSamplesViewState();
}

class _ButtonBarCustomerSamplesViewState extends State<ButtonBarCustomerSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackLv9,
      appBar: AppBar(title: const Text('Button Bar Customer Samples')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buttonBarCustomerList1(),
            buttonBarCustomerList2(),
            buttonBarCustomerList3(),
            buttonBarCustomerList4(),
          ],
        ),
      ),
    );
  }

  int? _index = 5;
  Widget buttonBarCustomerList1() {
    return SampleWrapper(
      title: 'Button Bar list 1',
      widget: ButtonBarCustomer(
        index: _index,

        //
        iconLeftOut: CustomIcon.homeIcon,
        textLeftOut: 'Beranda',
        onTapButtonLeftOut: () {
          // TODO
          setState(() {
            _index = 0;
          });
        },
        //
        iconLeftIn: CustomIcon.documentIcon,
        textLeftIn: 'Order',
        onTapButtonLeftIn: () {
          // TODO
          setState(() {
            _index = 1;
          });
        },
        //
        iconCenter: CustomIcon.scanIcon,
        textCenter: 'Scan',
        iconCenterColor: AppColors.white,
        textCenterColor: AppColors.white,
        iconCenterBackgroundColor: AppColors.primary,
        onTapButtonCenter: () {
          // TODO
        },
        //
        iconRightIn: CustomIcon.chatIcon,
        textRightIn: 'Chat',
        onTapButtonRightIn: () {
          // TODO
          setState(() {
            _index = 3;
          });
        },
        //
        iconRightOut: Icons.settings,
        textRightOut: 'Pengaturan',
        onTapButtonRightOut: () {
          // TODO
          setState(() {
            _index = 4;
          });
        },
        //
      ),
    );
  }

  Widget buttonBarCustomerList2() {
    return SampleWrapper(
      title: 'Button Bar list 2',
      widget: ButtonBarCustomer(
        index: _index,

        //
        iconLeftOut: CustomIcon.homeIcon,
        textLeftOut: 'Beranda',
        onTapButtonLeftOut: () {
          // TODO
          setState(() {
            _index = 0;
          });
        },
        //
        iconLeftIn: CustomIcon.buildingIcon,
        textLeftIn: 'Outlet',
        onTapButtonLeftIn: () {
          // TODO
          setState(() {
            _index = 1;
          });
        },
        //
        iconCenter: CustomIcon.walletIcon,
        textCenter: 'Akutansi',

        // textCenterColor: AppColors.blackLv6,
        iconCenterBackgroundColor: Colors.white,
        onTapButtonCenter: () {
          // TODO

          setState(() {
            _index = 2;
          });
        },
        //
        iconRightIn: CustomIcon.threeUserIcon,
        textRightIn: 'Karyawan',
        onTapButtonRightIn: () {
          // TODO
          setState(() {
            _index = 3;
          });
        },
        //
        iconRightOut: Icons.settings,
        textRightOut: 'Pengaturan',
        onTapButtonRightOut: () {
          // TODO
          setState(() {
            _index = 4;
          });
        },
        //
      ),
    );
  }

  Widget buttonBarCustomerList3() {
    return SampleWrapper(
      title: 'Button Bar list 3',
      widget: ButtonBarCustomer(
        index: _index,

        //
        iconLeftOut: CustomIcon.homeIcon,
        textLeftOut: 'Beranda',
        onTapButtonLeftOut: () {
          // TODO
          setState(() {
            _index = 0;
          });
        },
        //
        iconLeftIn: CustomIcon.documentIcon,
        textLeftIn: 'Produksi',
        onTapButtonLeftIn: () {
          // TODO
          setState(() {
            _index = 1;
          });
        },
        //
        iconCenter: CustomIcon.scanIcon,
        textCenter: 'Scan',
        iconCenterColor: AppColors.white,
        textCenterColor: AppColors.white,
        iconCenterBackgroundColor: AppColors.primary,
        onTapButtonCenter: () {
          // TODO
        },
        //
        iconRightIn: CustomIcon.chatIcon,
        textRightIn: 'Inbox',
        onTapButtonRightIn: () {
          // TODO
          setState(() {
            _index = 3;
          });
        },
        //
        iconRightOut: Icons.settings,
        textRightOut: 'Pengaturan',
        onTapButtonRightOut: () {
          // TODO
          setState(() {
            _index = 4;
          });
        },
        //
      ),
    );
  }

  Widget buttonBarCustomerList4() {
    return SampleWrapper(
      title: 'Button Bar list 4',
      widget: ButtonBarCustomer(
        index: _index,

        //
        iconLeftOut: CustomIcon.homeIcon,
        textLeftOut: 'Beranda',
        onTapButtonLeftOut: () {
          // TODO
          setState(() {
            _index = 0;
          });
        },
        //
        iconLeftIn: CustomIcon.convert3dCubeIcon,
        textLeftIn: 'Antar Jemput',
        onTapButtonLeftIn: () {
          // TODO
          setState(() {
            _index = 1;
          });
        },
        //
        iconCenter: CustomIcon.scanIcon,
        textCenter: 'Scan',
        iconCenterColor: AppColors.white,
        textCenterColor: AppColors.white,
        iconCenterBackgroundColor: AppColors.primary,
        onTapButtonCenter: () {
          // TODO
        },
        //
        iconRightIn: CustomIcon.chatIcon,
        textRightIn: 'Inbox',
        onTapButtonRightIn: () {
          // TODO
          setState(() {
            _index = 3;
          });
        },
        //
        iconRightOut: Icons.settings,
        textRightOut: 'Pengaturan',
        onTapButtonRightOut: () {
          // TODO
          setState(() {
            _index = 4;
          });
        },
        //
      ),
    );
  }
}
