import 'package:alvamind_library/app/theme/app_sizes.dart';
import 'package:alvamind_library/app/theme/app_text_style.dart';

import 'package:alvamind_library/view/samples/sample_wrapper.dart';
import 'package:alvamind_library/widget/molecule/app_account_list.dart';
import 'package:alvamind_library/widget/molecule/app_card_container.dart';
import 'package:alvamind_library/widget/molecule/app_ink_container.dart';

import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../widget/atom/app_image.dart';
import '../../widget/organism/item_card/item_card_list_selected.dart';

class BodySamplesView extends StatefulWidget {
  const BodySamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-body-samples';

  @override
  State<BodySamplesView> createState() => _BodySamplesViewState();
}

class _BodySamplesViewState extends State<BodySamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackLv10,
      appBar: AppBar(title: const Text('Body Samples')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            bodyOrganism(),
          ],
        ),
      ),
    );
  }

  Widget bodyOrganism() {
    return SampleWrapper(
        title: 'Body',
        widget: AppCardContainer(
          backgroundColor: AppColors.transparent,
          padding: const EdgeInsets.all(0),
          child: Column(
            children: [
              const ItemCardListSelected(
                starImageCount: '50',
                title: 'Cuci Kering',
                isList: true,
                textPrice: 'Rp7rb',
                statusPrice: '/kg',
                typeItem: 'Pakaian',
                timeWork: '3 Hari Kerja',
                dateProgress: '2 Agustus 2023',
                textLeftButton: 'Detail Pesanan',
                textRightButton: 'Lacak Pengiriman',
              ),
              SizedBox(height: AppSizes.padding * 1.5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(4, (i) {
                      return Padding(
                        padding: i != 4 ? EdgeInsets.only(right: AppSizes.padding / 2) : EdgeInsets.all(0),
                        child: const AppImage(
                          image: randomImage,
                          width: 100,
                          height: 100,
                          borderRadius: 24,
                          backgroundColor: AppColors.blueLv5,
                        ),
                      );
                    }),
                  ],
                ),
              ),
              SizedBox(height: AppSizes.padding * 1.5),
              AppInkContainer(
                backgroundColor: AppColors.transparent,
                borderRadius: BorderRadius.circular(0),
                child: AccountList(
                  padding: EdgeInsets.all(0),
                  rightButton: false,
                  image: randomImage,
                  title: 'Barokah Laundry',
                  subtitle: 'Sebaiknya memindsfsdfsfdfsdfsfhfsjdfjksfjkhfjkfhsdjkh.',
                  rightItem: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        maxRadius: 12,
                        backgroundColor: AppColors.blueLv2,
                        child: Text(
                          '3',
                          style: AppTextStyle.regular(
                            size: 10,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: AppSizes.padding / 2,
                      ),
                      Text(
                        '20.00',
                        style: AppTextStyle.medium(
                          size: 14,
                          color: AppColors.blackLv4,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
