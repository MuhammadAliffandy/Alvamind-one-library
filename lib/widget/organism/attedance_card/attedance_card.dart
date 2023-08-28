import 'package:flutter/material.dart';

import '../../../app/asset/app_assets.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../molecule/app_card_container.dart';
import '../../molecule/app_icon_button.dart';
import '../../molecule/app_tags.dart';

class AttedanceCard extends StatelessWidget {
  final String dateAttedance;
  final String timeStart;
  final String timeEnd;
  final Widget? statusTags;

  const AttedanceCard({
    Key? key,
    required this.dateAttedance,
    required this.timeEnd,
    required this.timeStart,
    this.statusTags,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppCardContainer(
        boxShadow: const [
          BoxShadow(
            color: AppColors.blackLv7,
            offset: Offset(0, 4),
            blurRadius: 60,
            spreadRadius: 0,
          ),
        ],
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  dateAttedance,
                  style: AppTextStyle.bold(
                    size: 14,
                    color: AppColors.blackLv4,
                  ),
                ),
                statusTags ??
                    const AppTags(
                      text: 'Masuk Kerja',
                      borderColor: AppColors.greenLv1,
                      borderWidth: 1,
                      color: AppColors.transparent,
                      textColor: AppColors.greenLv1,
                    ),
              ],
            ),
            SizedBox(
              height: AppSizes.padding,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    AppIconButton(
                      icon: const Icon(
                        CustomIcon.loginIcon,
                        color: AppColors.primary,
                      ),
                      borderRadius: 15,
                      buttonColor: AppColors.blueLv5,
                      onTap: () {},
                    ),
                    SizedBox(
                      width: AppSizes.padding,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Check-In',
                          style: AppTextStyle.regular(
                            size: 10,
                            color: AppColors.blackLv4,
                          ),
                        ),
                        SizedBox(
                          height: AppSizes.padding / 3,
                        ),
                        Text(
                          timeStart,
                          style: AppTextStyle.bold(
                            size: 18,
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    AppIconButton(
                      icon: const Icon(
                        CustomIcon.logoutIcon,
                        color: AppColors.primary,
                      ),
                      borderRadius: 15,
                      buttonColor: AppColors.blueLv5,
                      onTap: () {},
                    ),
                    SizedBox(
                      width: AppSizes.padding,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Check-Out',
                          style: AppTextStyle.regular(
                            size: 10,
                            color: AppColors.blackLv4,
                          ),
                        ),
                        SizedBox(
                          height: AppSizes.padding / 3,
                        ),
                        Text(
                          timeEnd,
                          style: AppTextStyle.bold(
                            size: 18,
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ));
  }
}
