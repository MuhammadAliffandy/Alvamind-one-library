import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../molecule/app_card_container.dart';
import '../../molecule/app_progress_line.dart';

class CardReview extends StatelessWidget {
  final String countStar;
  final String countReview;
  final int numberStar;
  const CardReview({
    super.key,
    required this.countReview,
    required this.countStar,
    required this.numberStar,
  });

  @override
  Widget build(BuildContext context) {
    return AppCardContainer(
      boxShadow: const [
        BoxShadow(
          color: AppColors.blackLv7,
          offset: Offset(0, 4),
          blurRadius: 60,
          spreadRadius: 0,
        ),
      ],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      countStar,
                      style: AppTextStyle.bold(size: 32),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6),
                      child: Text(
                        '/5',
                        style: AppTextStyle.medium(size: 14),
                      ),
                    ),
                  ],
                ),
                Text(
                  'Berdasarkan ${countReview} Ulasan',
                  style: AppTextStyle.medium(
                    size: 12,
                    color: AppColors.blackLv5,
                  ),
                ),
                SizedBox(
                  height: AppSizes.padding / 2,
                ),
                Row(
                  children: [
                    ...List.generate(5, (index) {
                      return Icon(
                        Icons.star_rate_rounded,
                        size: 25,
                        color: index == numberStar ? AppColors.blackLv4 : AppColors.orangeLv1,
                      );
                    })
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              lineProgress('5 bintang', 60),
              SizedBox(
                height: AppSizes.padding / 4,
              ),
              lineProgress('4 bintang', 40),
              SizedBox(
                height: AppSizes.padding / 4,
              ),
              lineProgress('3 bintang', 30),
              SizedBox(
                height: AppSizes.padding / 4,
              ),
              lineProgress('2 bintang', 20),
              SizedBox(
                height: AppSizes.padding / 4,
              ),
              lineProgress(' 1 bintang', 10),
            ],
          )
        ],
      ),
    );
  }

  Widget lineProgress(String text, double valueStar) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: AppTextStyle.medium(
            size: 12,
            color: AppColors.blackLv5,
          ),
        ),
        SizedBox(
          width: AppSizes.padding / 2,
        ),
        AppProgressLine(
          value: valueStar,
          maxValue: 100,
          lineWidth: 80,
          lineHeight: 6,
          showLabel: false,
          lineColor: AppColors.orangeLv1,
        ),
      ],
    );
  }
}
