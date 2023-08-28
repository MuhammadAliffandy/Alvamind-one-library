import 'package:alvamind_library/app/theme/app_text_style.dart';
import 'package:alvamind_library/widget/molecule/app_icon_button.dart';
import 'package:alvamind_library/widget/molecule/app_long_card.dart';
import 'package:flutter/material.dart';

import '../../app/asset/app_assets.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';
import '../../widget/atom/app_image.dart';
import '../../widget/organism/item_card/item_card_image.dart';
import '../../widget/organism/item_card/item_card_list.dart';
import '../../widget/organism/item_card/item_card_list_selected_done.dart';
import '../../widget/organism/item_card/item_card_list_selected.dart';
import 'sample_wrapper.dart';

class ItemCardsSamplesView extends StatefulWidget {
  const ItemCardsSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-item-cards-samples';

  @override
  State<ItemCardsSamplesView> createState() => _ItemCardsSamplesViewState();
}

class _ItemCardsSamplesViewState extends State<ItemCardsSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackLv9,
      appBar: AppBar(title: const Text('Item Cards Samples')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            itemCardImage(),
            itemCardList(),
            itemCardListProfile(),
            Row(
              children: [
                itemCardListVerticalMode(),
              ],
            ),
            itemCardListSelectedDetail(),
            itemCardListSelectedDetailCustom(),
            itemCardListSelected(),
            itemCardListSelectedCustomButton(),
            itemCardListSelectedDone(),
            itemCardListSelectedDoneCustom(),
            itemCardListSelectedStatus(),
          ],
        ),
      ),
    );
  }

  Widget itemCardImage() {
    return SampleWrapper(
      title: 'Item Card Image',
      widget: ItemCardImage(
        image: randomImage,
        stars: '5.0',
        title: 'Title Here',
        subtitle: 'Subtitle here',
        price: 10000,
        onTapCard: () {},
        onTapLikeButton: () {},
      ),
    );
  }

  Widget itemCardList() {
    return const SampleWrapper(
      title: 'ItemCardList',
      widget: ItemCardList(
        starImageCount: '50',
        title: 'Barokah\nLaundry',
        isList: true,
        textPrice: 'Rp.00',
        statusPrice: '/00 days',
        dateProgress: '2 Agustus 2023',
        textLeftButton: 'Detail Pesanan',
        textRightButton: 'Lacak Pengiriman',
      ),
    );
  }

  Widget itemCardListProfile() {
    return const SampleWrapper(
      title: 'ItemCardList',
      widget: ItemCardList(
        starImageCount: '50',
        title: 'Barokah Laundry',
        dateProgress: '2 Agustus 2023',
        textLeftButton: 'Detail Pesanan',
        textRightButton: 'Lacak Pengiriman',
        address: 'Jl. Sukamenak DPR RI KOM',
        isProfile: true,
      ),
    );
  }

  Widget itemCardListVerticalMode() {
    return SampleWrapper(
      title: 'ItemCardList Vertical',
      widget: ItemCardList(
        starImageCount: '50',
        title: 'Barokah Laundry',
        isVertical: true,
        textPrice: 'Rp.00',
        statusPrice: '/00 days',
        dateProgress: '2 Agustus 2023',
        textLeftButton: 'Detail Pesanan',
        textRightButton: 'Lacak Pengiriman',
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.padding,
          vertical: AppSizes.padding,
        ),
      ),
    );
  }

  Widget itemCardListSelectedDetail() {
    return const SampleWrapper(
      title: 'ItemCardList Selected Original ',
      widget: ItemCardListSelected(
        starImageCount: '50',
        title: 'Cuci Kering',
        isList: true,
        textPrice: 'Rp7rb',
        statusPrice: '/kg',
        typeItem: 'Pakaian',
        timeWork: '3 Hari Kerja',
        dateProgress: '2 Agustus 2023',
      ),
    );
  }

  bool isSelected = false;
  Widget itemCardListSelectedDetailCustom() {
    return SampleWrapper(
      title: 'ItemCardList Selected Original Custom ',
      widget: ItemCardListSelected(
        starImageCount: '50',
        title: 'Cuci Kering',
        isSelected: isSelected,
        textPrice: 'Rp7rb',
        statusPrice: '/kg',
        typeItem: 'Pakaian',
        dateProgress: '2 Agustus 2023',
        textLeftButton: 'Detail Pesanan',
        textRightButton: 'Lacak Pengiriman',
        onTapCard: () {
          // TODO
          setState(() {
            isSelected = !isSelected;
          });
        },
      ),
    );
  }

  Widget itemCardListSelected() {
    return const SampleWrapper(
      title: 'ItemCardList Selected',
      widget: ItemCardListSelected(
        starImageCount: '50',
        title: 'Cuci Kering',
        isSelected: true,
        textPrice: 'Rp7rb',
        statusPrice: '/kg',
        typeItem: 'Pakaian',
        timeWork: '3 Hari Kerja',
      ),
    );
  }

  Widget itemCardListSelectedCustomButton() {
    return SampleWrapper(
      title: 'ItemCardList Selected Custom Button',
      widget: ItemCardListSelected(
        starImageCount: '50',
        title: 'Cuci Kering',
        isSelected: true,
        textPrice: 'Rp7rb',
        statusPrice: '/kg',
        typeItem: 'Pakaian',
        timeWork: '3 Hari Kerja',
        customSelectedButton: AppLongCard(
          backgroundColor: AppColors.transparent,
          padding: EdgeInsets.all(AppSizes.padding / 2),
          children: [
            Text(
              'Kuantitas',
              style: AppTextStyle.bold(
                size: 14,
                color: AppColors.white,
              ),
            ),
            Row(
              children: [
                AppIconButton(
                  buttonColor: AppColors.white,
                  icon: Icon(
                    Icons.add,
                    size: 16,
                  ),
                  onTap: () {},
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppSizes.padding),
                  child: Text(
                    '0',
                    style: AppTextStyle.bold(size: 14, color: AppColors.white),
                  ),
                ),
                AppIconButton(
                  buttonColor: AppColors.white,
                  icon: Icon(
                    Icons.horizontal_rule,
                    size: 16,
                  ),
                  onTap: () {},
                ),
              ],
            )
          ],
        ),
        onTapCard: () {},
      ),
    );
  }

  Widget itemCardListSelectedDone() {
    return SampleWrapper(
      title: 'ItemCardList Selected Done',
      widget: ItemCardListSelectedDone(
        title: 'Cuci Kering',
        isSelected: true,
        morePayment: 'Rp2.500',
        shuttlePayment: 'Free',
        textButton: 'Free Pembayaran Wallet Platform',
        onTapButton: () {
          // TODO
        },
      ),
    );
  }

  Widget itemCardListSelectedDoneCustom() {
    return SampleWrapper(
      title: 'ItemCardList Selected Done',
      widget: ItemCardListSelectedDone(
        title: 'Drop Service',
        isSelected: true,
        subtitle: Text(
          'Serahkan laundry anda ke petugas toko',
          style: AppTextStyle.medium(
            size: 12,
            color: AppColors.blackLv5,
          ),
        ),
        textButton: 'Pembayaran di Kasir Outlet',
        selectedColor: AppColors.orangeLv1,
        iconTitle: const Icon(
          CustomIcon.boxIcon,
          color: AppColors.black,
        ),
        onTapButton: () {
          // TODO
        },
      ),
    );
  }

  Widget itemCardListSelectedStatus() {
    return SampleWrapper(
      title: 'ItemCardList Selected Status',
      widget: ItemCardListSelected(
        starImageCount: '50',
        title: 'Cuci Kering',
        textPrice: 'Rp7rb',
        statusPrice: '/kg',
        dateProgress: '2 Agustus 2023',
        textLeftButton: 'Detail Pesanan',
        textRightButton: 'Lacak Pengiriman',
        typeItem: 'Pakaian',
        timeWork: '3 Hari Kerja',
        isStatus: true,
        onTapLeftButton: () {
          // TODO
        },
        onTapRightButton: () {
          // TODO
        },
      ),
    );
  }
}
