import 'package:alvamind_library/widget/molecule/app_card_container.dart';

import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';
import '../../widget/atom/app_avatar.dart';
import '../../widget/atom/app_image.dart';
import '../../widget/molecule/app_expansion_list_tile.dart';
import '../../widget/organism/accordion/accordion_question_card.dart';
import '../../widget/organism/comments_and_reviews/comments_list.dart';
import '../../widget/organism/review/star_checked.dart';
import '../../widget/organism/tags_organism.dart/tags_organism.dart';
import '../../widget/organism/transaction_review_card/card_review.dart';
import 'sample_wrapper.dart';

class ReviewTabsSamplesView extends StatefulWidget {
  const ReviewTabsSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-review-tabs-samples';

  @override
  State<ReviewTabsSamplesView> createState() => _ReviewTabsSamplesViewState();
}

List<String> dummyName = [
  'Mitsuha Suzuiki',
  'Aoi Nara',
  'Kawaki Tenma',
];

class _ReviewTabsSamplesViewState extends State<ReviewTabsSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Review Tabs Samples')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            reviewTabs(),
            starChecked(),
          ],
        ),
      ),
    );
  }

  Widget reviewTabs() {
    return SampleWrapper(
      title: 'Review Tabs',
      widget: AppCardContainer(
        padding: EdgeInsets.all(0),
        backgroundColor: AppColors.transparent,
        child: Column(
          children: [
            CardReview(
              numberStar: 4,
              countStar: '4.6',
              countReview: '120',
            ),
            SizedBox(height: AppSizes.padding * 2),
            TagsOrganism(
              leftIcon: Icons.star_rounded,
              selectedColor: [
                ...List.generate(6, (index) {
                  return index == 1 ? AppColors.redLv1 : AppColors.primary;
                })
              ],
              listChips: const [
                'Semua',
                'Menunggu Respon',
                '5',
                '4',
                '3',
                '2',
              ],
              onTap: (value) {
                // TODO
              },
            ),
            SizedBox(
              height: AppSizes.padding * 2,
            ),
            listComment(),
          ],
        ),
      ),
    );
  }

  Widget listComment() {
    return Column(
      children: [
        ...List.generate(3, (i) {
          return Column(
            children: [
              CommentListCard(
                padding: EdgeInsets.symmetric(vertical: AppSizes.padding),
                isComment: true,
                titleUser: dummyName[i],
                subtitleUser: 'Occuptaion',
                countLike: '431',
                countStaruser: '${i + 3}',
                imageAvatar: 'https://picsum.photos/id/1$i/100/200',
                textComment: 'Adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore o eiusmod tempor incididunt ut labore et dolore.',
                dateComment: '6 hours ago',
                isImage: true,
                image: Row(
                  children: [
                    ...List.generate(3, (i) {
                      return Padding(
                        padding: i != 3 ? EdgeInsets.only(right: AppSizes.padding / 2) : EdgeInsets.all(0),
                        child: AppImage(
                          image: 'https://picsum.photos/id/2$i/200/200',
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
              i == 0
                  ? Padding(
                      padding: EdgeInsets.only(bottom: AppSizes.padding),
                      child: AppExpansionListTile(
                        backgroundColor: AppColors.transparent,
                        paddingChild: EdgeInsets.all(AppSizes.padding),
                        boxShadow: const [
                          BoxShadow(
                            color: AppColors.transparent,
                            offset: Offset(0, 0),
                            blurRadius: 0,
                            spreadRadius: 0,
                          ),
                        ],
                        leftItem: Padding(
                          padding: EdgeInsets.only(right: AppSizes.padding / 1.5),
                          child: const AppAvatar(
                            image: randomImage,
                            size: 40,
                          ),
                        ),
                        divider: false,
                        title: 'Full Name',
                        children: [
                          QuestionText(
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.blackLv7.withOpacity(0.5),
                                offset: Offset(0, 4),
                                blurRadius: 60,
                                spreadRadius: 0,
                              ),
                            ],
                            padding: EdgeInsets.only(
                              top: 0,
                              right: AppSizes.padding,
                              left: AppSizes.padding,
                              bottom: AppSizes.padding,
                            ),
                            borderRadius: BorderRadius.circular(16),
                            text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.',
                          )
                        ],
                      ),
                    )
                  : const SizedBox.shrink(),
            ],
          );
        }),
      ],
    );
  }

  Widget starChecked() {
    return StarChecked(
      onTapStar: (value) {
        print(value);
      },
    );
  }
}
