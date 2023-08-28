import 'package:alvamind_library/widget/organism/oultlet_summary_body/owner_summary_body.dart';
import 'package:alvamind_library/widget/organism/oultlet_summary_body/public_summary_body.dart';
import 'package:flutter/material.dart';
import '../../app/asset/app_assets.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';

import '../../widget/atom/app_image.dart';
import '../../widget/molecule/app_button.dart';
import '../../widget/organism/bar_chart/bar_chart.dart';
import '../../widget/organism/bar_chart/bar_chart_group_data.dart';
import '../../widget/organism/bar_chart/chart.dart';
import '../../widget/organism/comments_and_reviews/comments_list.dart';
import '../../widget/organism/tags_organism.dart/tags_organism.dart';
import '../../widget/organism/transaction_review_card/card_review.dart';
import '../../widget/organism/transaction_review_card/list_card_progress.dart';
import 'sample_wrapper.dart';

class OutletSummaryBodySamplesView extends StatefulWidget {
  const OutletSummaryBodySamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-outlet-summary-body-samples';

  @override
  State<OutletSummaryBodySamplesView> createState() => _OutletSummaryBodySamplesViewState();
}

class _OutletSummaryBodySamplesViewState extends State<OutletSummaryBodySamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Outlet Tab Bodies Samples')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ownerSummary(),
            publicSummary(),
          ],
        ),
      ),
    );
  }

  Widget ownerSummary() {
    return SampleWrapper(
      title: 'Owner Summary',
      widget: OwnerSummaryBody(
        countMachine: 15,
        countConsument: 100,
        countEmployees: 100,
        countTransaction: 25,
        barChart: barChartWrapper(),
        statusComplainWidget: ListCard(
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
        deleteButton: AppButton(
          text: 'Hapus',
          textColor: AppColors.black,
          buttonColor: AppColors.redLv1.withOpacity(0.2),
          onTap: () {},
        ),
      ),
    );
  }

  Widget publicSummary() {
    return SampleWrapper(
      title: 'Public Summary',
      widget: PublicSummaryBody(
        termsCondtionText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitatioaboris nisi ut Selengkapnya...',
        addressText: 'Grand City St. 100, New York, United States',
        countImages: '30+',
        images: [
          ...List.generate(3, (i) {
            return 'https://picsum.photos/id/5$i/100/200';
          })
        ],
        onTapGalleryMore: () {
          // TODO
        },
        onTapReviewMore: () {
          // TODO
        },
        childrenReview: [
          const CardReview(
            numberStar: 4,
            countStar: '4.6',
            countReview: '120',
          ),
          SizedBox(height: AppSizes.padding * 2),
          CommentListCard(
            padding: EdgeInsets.all(0),
            isComment: true,
            titleUser: 'Shizuka Otomo',
            subtitleUser: 'Occuptaion',
            countLike: '431',
            countStaruser: '0',
            imageAvatar: randomImage,
            textComment: 'Adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.',
            dateComment: '6 hours ago',
            isImage: true,
            image: Row(
              children: [
                ...List.generate(3, (i) {
                  return Padding(
                    padding: i != 3 ? EdgeInsets.only(right: AppSizes.padding / 2) : EdgeInsets.all(0),
                    child: AppImage(
                      image: 'https://picsum.photos/id/1$i/100/200',
                      width: 70,
                      height: 70,
                      borderRadius: 24,
                      backgroundColor: AppColors.redLv5,
                    ),
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget barChartWrapper() {
    return Column(
      children: [
        BarChart(
            textTypeChart: 'Omzet',
            textDateRange: '1 Jan 2023 - 31 Juli 2023',
            countTotal: 'Rp. 687.375.337',
            countTransaction: '1000',
            onTapItem: (value) {},
            tagBar: TagsOrganism(
              listChips: const [
                'Drop Service',
                'Self Service',
                'Delivery',
                'Home Service',
              ],
              selected: -1,
              onTap: (value) {
                // TODO
                setState(() {
                  tagSelected = value;
                });
              },
            ),
            barChart: tagSelected == 0
                ? Chart(
                    listValueChart: [
                      generateGroupDataOmzet(0, 1, 3, 2, 2),
                      generateGroupDataOmzet(1, 2, 1, 1.2, 2),
                      generateGroupDataOmzet(2, 1, 2, 1.2, 2),
                      generateGroupDataOmzet(3, 2, 2, 1.1, 2),
                      generateGroupDataOmzet(4, 2, 1, 1.4, 2),
                      generateGroupDataOmzet(5, 2, 2, 1.4, 2),
                    ],
                  )
                : tagSelected == 1
                    ? Chart(
                        listValueChart: [
                          generateGroupDataOmzet(0, 1, 2, 2, 2),
                          generateGroupDataOmzet(1, 2, 1, 1.2, 2),
                          generateGroupDataOmzet(2, 1, 2, 1.2, 2),
                          generateGroupDataOmzet(3, 2, 2, 1.1, 2),
                          generateGroupDataOmzet(4, 2, 1, 1.4, 2),
                          generateGroupDataOmzet(5, 2, 2, 1.4, 2),
                        ],
                      )
                    : tagSelected == 2
                        ? Chart(
                            listValueChart: [
                              generateGroupDataOmzet(0, 1, 2, 2, 2),
                              generateGroupDataOmzet(1, 2, 1, 1.2, 2),
                              generateGroupDataOmzet(2, 1, 2, 1.2, 2),
                              generateGroupDataOmzet(3, 2, 2, 1.1, 2),
                              generateGroupDataOmzet(4, 2, 1, 1.4, 2),
                              generateGroupDataOmzet(5, 2, 2, 1.4, 2),
                            ],
                          )
                        : Chart(
                            listValueChart: [
                              generateGroupDataOmzet(0, 1, 1, 2, 2),
                              generateGroupDataOmzet(1, 2, 1, 1.2, 2),
                              generateGroupDataOmzet(2, 1, 2, 1.2, 2),
                              generateGroupDataOmzet(3, 2, 1, 1.1, 2),
                              generateGroupDataOmzet(4, 2, 1, 1.4, 2),
                              generateGroupDataOmzet(5, 2, 2, 1.4, 2),
                            ],
                          )),
        SizedBox(
          height: AppSizes.padding,
        ),
        BarChart(
          textTypeChart: 'Laba Rugi',
          textDateRange: '1 Jan 2023 - 31 Juli 2023',
          countTotal: '- Rp687.375.337',
          countTotalColor: AppColors.redLv1,
          countTransaction: '1000',
          onTapItem: (value) {},
          tagBar: TagsOrganism(
            listChips: const [
              'Pemasukan',
              'Pengeluaran',
            ],
            onTap: (value) {
              // TODO
              setState(() {
                tagSelected2 = value;
              });
            },
          ),
          barChart: tagSelected2 == 0
              ? Chart(
                  listValueChart: [
                    generateGroupDataProfit(0, 5, 5),
                    generateGroupDataProfit(1, 4, 2),
                    generateGroupDataProfit(4, 2, 2),
                    generateGroupDataProfit(2, 2, 1),
                    generateGroupDataProfit(3, 1, 2),
                    generateGroupDataProfit(5, 2, 1),
                  ],
                )
              : Chart(
                  listValueChart: [
                    generateGroupDataProfit(0, 4, 5),
                    generateGroupDataProfit(1, 1, 2),
                    generateGroupDataProfit(2, 2, 1),
                    generateGroupDataProfit(3, 2, 2),
                    generateGroupDataProfit(4, 2, 2),
                    generateGroupDataProfit(5, 2, 1),
                  ],
                ),
        ),
      ],
    );
  }
}
