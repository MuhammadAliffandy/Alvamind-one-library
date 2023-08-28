import 'package:alvamind_library/app/theme/app_sizes.dart';
import 'package:alvamind_library/widget/atom/app_divider.dart';
import 'package:alvamind_library/widget/molecule/app_button.dart';
import 'package:alvamind_library/widget/molecule/app_chips.dart';
import 'package:alvamind_library/widget/molecule/app_tags.dart';
import 'package:flutter/material.dart';

import '../../app/asset/app_assets.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_text_style.dart';
import '../../widget/molecule/app_expansion_list_tile.dart';
import '../../widget/molecule/app_text_field.dart';
import '../../widget/organism/accordion/accordion_question_card.dart';
import '../../widget/organism/accordion/accordion_stock_note.dart';
import '../../widget/organism/item_card/item_card_list.dart';
import '../../widget/organism/item_card/item_card_list_selected.dart';
import '../../widget/organism/payment_method/payment_method.dart';
import '../../widget/organism/transaction_review_card/list_card_progress.dart';
import 'sample_wrapper.dart';

class AccordionSamplesView extends StatefulWidget {
  const AccordionSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-accordion-samples';

  @override
  State<AccordionSamplesView> createState() => _AccordionSamplesViewState();
}

final List<String> imagePayment = [
  AppAssets.paypalIcon,
  AppAssets.googleIcon,
  AppAssets.appleIcon,
  AppAssets.mastercardIcon,
  AppAssets.walletIcon,
  AppAssets.moneyIcon,
];

final List<String> titlePayment = [
  'PayPal',
  'Google',
  'Apple Pay',
  '•••• •••• •••• •••• 4679',
  'Platform Wallet',
  'Cash Money',
];

class _AccordionSamplesViewState extends State<AccordionSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Accordion Samples')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            questionAccordion(),
            questionAccordionBlack(),
            dateInAccordion(),
            accordionDropShip(),
            accordionTransferBank(),
            accordionItemComplain(),
            accordionItemSelectedStatus(),
            accordionStockNote(),
            accordionTransferBankWaiting(),
          ],
        ),
      ),
    );
  }

  Widget questionAccordion() {
    return SampleWrapper(
      title: 'Question Card',
      widget: AppExpansionListTile(
        title: 'Question',
        expand: true,
        backgroundColor: Colors.white,
        children: [
          QuestionText(
            text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua  sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            color: AppColors.black,
            padding: EdgeInsets.all(0),
          )
        ],
      ),
    );
  }

  Widget questionAccordionBlack() {
    return SampleWrapper(
      title: 'Question Card',
      widget: AppExpansionListTile(
        title: 'Question',
        titleColor: AppColors.white,
        expand: true,
        backgroundColor: AppColors.blackLv1,
        children: [
          QuestionText(
            text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua  sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            color: AppColors.white,
            backgroundColor: AppColors.transparent,
            padding: EdgeInsets.all(0),
          )
        ],
      ),
    );
  }

  Widget dateInAccordion() {
    return SampleWrapper(
      title: 'Date with Accordion',
      widget: AppExpansionListTile(
        title: 'Title',
        expand: true,
        backgroundColor: Colors.white,
        children: [
          Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              children: [
                AppTextField(
                  hintText: '23 Juni 2023 - 25 Juni 2023',
                  suffixIcon: Icons.calendar_month,
                  iconsColor: AppColors.black,
                  fillColor: AppColors.blackLv10,
                  borderRadius: 16,
                  labelStyle: AppTextStyle.bold(
                    size: 12,
                    color: AppColors.blackLv2,
                  ),
                  textStyle: AppTextStyle.bold(
                    size: 14,
                    color: AppColors.blackLv2,
                  ),
                  hintStyle: AppTextStyle.semibold(
                    size: 14,
                    color: AppColors.blackLv4,
                  ),
                ),
                const SizedBox(height: 18),
                const AppExpansionListTile(
                  title: 'Placeholder',
                  icon: Icons.person,
                  buttonDropColor: AppColors.black,
                  backgroundColor: AppColors.blackLv10,
                  children: [],
                ),
                const SizedBox(height: 18),
                const AppTextField(
                  hintText: '23 Juni 2023 - 25 Juni 2023',
                  minLines: 6,
                  borderRadius: 16,
                  fillColor: AppColors.blackLv10,
                ),
                const SizedBox(height: 18),
                QuestionText(
                  text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  padding: const EdgeInsets.all(0),
                ),
                const SizedBox(height: 18),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget accordionDropShip() {
    return SampleWrapper(
        title: 'Accordion Drop Ship',
        widget: AppExpansionListTile(
          backgroundColor: AppColors.white,
          expand: true,
          title: 'Tujuan',
          children: [
            ItemCardList(
              starImageCount: '50',
              title: 'Barokah Laundry',
              dateProgress: '2 Agustus 2023',
              dateProfileItem: '+62 82335456789',
              textLeftButton: 'Detail Pesanan',
              textRightButton: 'Lacak Pengiriman',
              address: 'Jl. Sukamenak DPR RI KOM...',
              tagText: 'Sudah Pin Point',
              tagColor: AppColors.greenLv1,
              isProfile: true,
              onTapCard: () {
                // TODO
              },
            ),
            AppDivider(
              thickness: 1,
              color: AppColors.blackLv7,
              padding: EdgeInsets.symmetric(horizontal: AppSizes.padding),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.padding, vertical: AppSizes.padding),
              child: AppButton(
                text: 'Ubah Alamat',
                padding: EdgeInsets.symmetric(vertical: AppSizes.padding / 2),
                buttonColor: AppColors.transparent,
                rounded: true,
                borderWidth: 2,
                textColor: AppColors.primary,
                borderColor: AppColors.primary,
                onTap: () {
                  // TODO
                },
              ),
            ),
          ],
        ));
  }

  Widget accordionTransferBank() {
    return SampleWrapper(
      title: 'Accordion Transfer Bank',
      widget: AppExpansionListTile(
        backgroundColor: AppColors.white,
        paddingChild: EdgeInsets.all(AppSizes.padding),
        title: 'Transfer Bank',
        expand: true,
        children: [
          ...List.generate(6, (i) {
            return Padding(
              padding: EdgeInsets.only(bottom: AppSizes.padding),
              child: PaymentCard(
                onTap: () {},
                boxShadow: [
                  BoxShadow(
                    color: AppColors.blackLv7.withOpacity(0.5),
                    offset: Offset(0, 4),
                    blurRadius: 60,
                    spreadRadius: 0,
                  ),
                ],
                backgroundColor: AppColors.white,
                image: imagePayment[i],
                title: titlePayment[i],
                subtitle: i == 0 ? 'Admin Fee Rp 0.0000' : null,
                withTags: i == 4 ? true : false,
                textTags: i == 4 ? 'Top Up' : null,
                titleColor: AppColors.black,
              ),
            );
          })
        ],
      ),
    );
  }

  bool selected = false;

  Widget accordionItemComplain() {
    return SampleWrapper(
      title: 'Accordion Item Complain',
      widget: AppExpansionListTile(
        paddingChild: EdgeInsets.all(AppSizes.padding),
        backgroundColor: AppColors.white,
        title: 'Selasa 23 Juni 2023',
        subtitle: 'Status Complain',
        expand: true,
        moreItem: AppChips(
          fontSize: 14,
          padding: EdgeInsets.symmetric(
            vertical: AppSizes.padding / 2,
            horizontal: AppSizes.padding,
          ),
          text: 'Chips',
          onTap: () {
            setState(() {
              selected = !selected;
            });
          },
          isSelected: selected,
        ),
        children: const [
          ItemCardListSelected(
            starImageCount: '50',
            title: 'Cuci Kering',
            isList: true,
            textPrice: 'Rp7rb',
            statusPrice: '/kg',
            dateProgress: '2 Agustus 2023',
            textLeftButton: 'Detail Pesanan',
            textRightButton: 'Lacak Pengiriman',
          ),
        ],
      ),
    );
  }

  Widget accordionItemSelectedStatus() {
    return SampleWrapper(
      title: 'Accordion Item Selected Status',
      widget: AppExpansionListTile(
        paddingChild: EdgeInsets.all(AppSizes.padding),
        backgroundColor: AppColors.white,
        title: 'Images',
        expand: true,
        moreItem: const AppTags(
          text: '3 Item',
          color: AppColors.transparent,
          borderWidth: 1,
          borderColor: AppColors.blackLv5,
          textColor: AppColors.blackLv5,
        ),
        children: [
          ...List.generate(3, (index) {
            return Padding(
              padding: index == 3
                  ? const EdgeInsets.all(0)
                  : EdgeInsets.only(
                      bottom: AppSizes.padding,
                    ),
              child: ItemCardListSelected(
                boxShadow: [
                  BoxShadow(
                    color: AppColors.blackLv7.withOpacity(0.5),
                    offset: Offset(0, 4),
                    blurRadius: 60,
                    spreadRadius: 0,
                  ),
                ],
                starImageCount: '50',
                title: 'Cuci Kering',
                textPrice: '4',
                statusPrice: '/pcs',
                dateProgress: '2 Agustus 2023',
                textLeftButton: 'Detail Pesanan',
                textRightButton: 'Lacak Pengiriman',
                isStatus: true,
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

  Widget accordionStockNote() {
    return SampleWrapper(
      title: 'Accordion Stock',
      widget: AccordionStockNote(),
    );
  }

  Widget accordionTransferBankWaiting() {
    return SampleWrapper(
      title: 'Accordion Transfer Bank Waiting',
      widget: AppExpansionListTile(
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
                leftIcon: CustomIcon.walletIcon,
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
    );
  }
}
