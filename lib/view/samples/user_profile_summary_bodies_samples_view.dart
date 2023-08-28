import 'package:alvamind_library/app/theme/app_text_style.dart';
import 'package:alvamind_library/widget/molecule/app_icon_button.dart';
import 'package:flutter/material.dart';
import '../../app/asset/app_assets.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';
import '../../widget/molecule/app_account_list.dart';
import '../../widget/molecule/app_button.dart';
import '../../widget/molecule/app_card_container.dart';
import '../../widget/molecule/app_expansion_list_tile.dart';
import '../../widget/organism/tab _detail_outlet/tab_detail_outlet.dart';
import '../../widget/organism/transaction_review_card/list_card_progress.dart';
import '../../widget/organism/transaction_review_card/list_transaction.dart';
import 'sample_wrapper.dart';

class UserProfileSummaryBodySamplesView extends StatefulWidget {
  const UserProfileSummaryBodySamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-user-profile-summary-body-samples';

  @override
  State<UserProfileSummaryBodySamplesView> createState() => _UserProfileSummaryBodySamplesViewState();
}

class _UserProfileSummaryBodySamplesViewState extends State<UserProfileSummaryBodySamplesView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(title: const Text('User Profile Summary Body Samples')),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(AppSizes.padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              userProfileSummaryBody(),
            ],
          ),
        ),
      ),
    );
  }

  int tagSelected = 0;

  Widget userProfileSummaryBody() {
    return SampleWrapper(
        title: 'User Profile Summary Body  ',
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
              ListCard(
                leftIcon: CustomIcon.walletBoldIcon,
                rightIcon: Icons.chevron_right_rounded,
                title: 'Selasa, 23 Juni 2023',
                subtitle: 'Status Complain',
                textTags: 'Proses',
                onTapChevronButton: () {
                  // TODO
                },
                onTapCard: () {
                  // TODO
                },
              ),
              SizedBox(height: AppSizes.padding * 1.5),
              AppExpansionListTile(
                title: 'Transfer Bank',
                backgroundColor: AppColors.white,
                paddingChild: EdgeInsets.all(AppSizes.padding),
                children: [
                  ...List.generate(3, (index) {
                    return Padding(
                      padding: index == 3
                          ? EdgeInsets.all(0)
                          : EdgeInsets.only(
                              bottom: AppSizes.padding,
                            ),
                      child: ListCard(
                        leftIcon: CustomIcon.walletBoldIcon,
                        rightIcon: Icons.chevron_right_rounded,
                        title: 'Selasa, 23 Juni 2023',
                        subtitle: 'Status Complain',
                        textTags: 'Proses',
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
              SizedBox(height: AppSizes.padding * 1.5),
              AppExpansionListTile(
                paddingChild: EdgeInsets.all(
                  AppSizes.padding,
                ),
                backgroundColor: AppColors.white,
                title: 'Pengaturan',
                children: [
                  ...List.generate(2, (i) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: AppSizes.padding),
                      child: AccountList(
                        backgroundColor: AppColors.white,
                        padding: EdgeInsets.all(AppSizes.padding / 1.5),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.blackLv7.withOpacity(0.5),
                            offset: Offset(0, 4),
                            blurRadius: 60,
                            spreadRadius: 0,
                          ),
                        ],
                        rightButton: false,
                        title: i == 0 ? 'Pengaturan Gaji Komisi' : 'Log Out dari semua device',
                        titleTextStyle: AppTextStyle.medium(size: 16),
                        leftItem: AppIconButton(
                            buttonColor: i == 0 ? AppColors.blueLv5 : AppColors.redLv5.withOpacity(0.3),
                            icon: Icon(
                              i == 0 ? CustomIcon.walletBoldIcon : Icons.logout,
                              color: i == 0 ? AppColors.primary : AppColors.redLv1,
                              size: 16,
                            ),
                            onTap: () {}),
                      ),
                    );
                  }),
                ],
              ),
              SizedBox(height: AppSizes.padding),
              AppButton(
                text: 'Hapus',
                textColor: AppColors.black,
                buttonColor: AppColors.redLv1.withOpacity(0.2),
                onTap: () {},
              ),
            ],
          ),
        ));
  }
}
