import 'package:alvamind_library/app/theme/app_sizes.dart';
import 'package:alvamind_library/widget/organism/notification_list_body/search_not_found.dart';
import 'package:flutter/material.dart';

import '../../../app/asset/app_assets.dart';
import '../../../app/theme/app_colors.dart';
import '../notification_card/notification_card.dart';
import '../tags_organism.dart/tags_organism.dart';

class NotificationListBody extends StatefulWidget {
  const NotificationListBody({
    super.key,
  });

  @override
  State<NotificationListBody> createState() => _NotificationListBodyState();
}

class _NotificationListBodyState extends State<NotificationListBody> {
  int selected = 0;

  List listChips = [
    'Semua',
    'Order',
    'Promo',
    'Komplain',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TagsOrganism(
          listChips: const [
            'Semua',
            'Order',
            'Promo',
            'Komplain',
          ],
          selected: selected,
          onTap: (value) {
            // TODO
            setState(() {
              selected = value;
            });
          },
        ),
        SizedBox(height: AppSizes.padding),
        body(selected),
      ],
    );
  }

  Widget body(int index) {
    return Column(
      children: [
        index == 1
            ? Column(
                children: [
                  ...List.generate(3, (index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: AppSizes.padding * 2),
                      child: NotificationCard(
                        isNew: index > 1 ? false : true,
                        title: 'Pesanan Berhasil dibuat!',
                        dateNotification: '20 Dec, 2022',
                        timeNotification: '20:49 PM',
                        iconColor: AppColors.primary,
                        backgroundColorIcon: AppColors.blueLv5,
                        iconNotification: CustomIcon.documentBoldIcon,
                        textNotification: 'Selamat pesanan anda telah kami buat. anda bisa langsung mengceknya.',
                        onTap: () {
                          // TODO
                        },
                      ),
                    );
                  }),
                ],
              )
            : index == 2
                ? Column(
                    children: [
                      ...List.generate(3, (index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: AppSizes.padding * 2),
                          child: NotificationCard(
                            title: 'Ada Diskon Gratis Ongkir 7rb',
                            dateNotification: '20 Dec, 2022',
                            timeNotification: '20:49 PM',
                            iconColor: AppColors.orangeLv1,
                            backgroundColorIcon: Color(0xFFFACC15).withOpacity(0.2),
                            iconNotification: CustomIcon.discountBoldIcon,
                            textNotification: 'Anda bisa mendapatkan diskon sebesar 7rb. Syarat dan ketentuan berlaku.',
                            onTap: () {
                              // TODO
                            },
                          ),
                        );
                      }),
                    ],
                  )
                : index == 3
                    ? Column(
                        children: [
                          ...List.generate(3, (index) {
                            return Padding(
                              padding: EdgeInsets.only(bottom: AppSizes.padding * 2),
                              child: NotificationCard(
                                title: 'Komplain #123OJ',
                                dateNotification: '20 Dec, 2022',
                                timeNotification: '20:49 PM',
                                iconColor: AppColors.redLv1,
                                backgroundColorIcon: AppColors.redLv1.withOpacity(0.2),
                                iconNotification: CustomIcon.chatBoldIcon,
                                textNotification: 'Komplain anda berhasil ditanggapi. silahkan klik untuk mengetahui info selanjutnya.',
                                onTap: () {
                                  // TODO
                                },
                              ),
                            );
                          }),
                        ],
                      )
                    : NotFoundWidget(
                        image: AppAssets.boardPaperImage,
                        title: 'Kosong',
                        subtitle: 'Anda belum memiliki notifikasi saat ini',
                      )
      ],
    );
  }
}
