import 'package:alvamind_library/app/theme/app_colors.dart';
import 'package:alvamind_library/app/theme/app_sizes.dart';
import 'package:alvamind_library/app/theme/app_text_style.dart';
import 'package:alvamind_library/widget/molecule/app_icon_button.dart';
import 'package:alvamind_library/widget/molecule/app_ink_container.dart';
import 'package:flutter/material.dart';

import '../../../app/asset/app_assets.dart';
import '../../molecule/app_card_container.dart';

class OutletHeroCategory extends StatelessWidget {
  final String leftTitle;
  final String centerTitle;
  final String rightTitle;
  final String? leftSubtitle;
  final String? rightSubtitle;
  final String? centerSubtitle;
  final void Function() onTapLeftButton;
  final void Function() onTapCenterButton;
  final void Function() onTapRightButton;

  const OutletHeroCategory({
    required this.leftTitle,
    required this.centerTitle,
    required this.rightTitle,
    required this.onTapCenterButton,
    required this.onTapLeftButton,
    required this.onTapRightButton,
    this.leftSubtitle,
    this.centerSubtitle,
    this.rightSubtitle,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppCardContainer(
      backgroundColor: AppColors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buttonWithText(
            leftTitle,
            leftSubtitle ?? 'ID Komplain',
            CustomIcon.documentBoldIcon,
            onTapLeftButton,
          ),
          buttonWithText(
            centerTitle,
            centerSubtitle ?? 'Estimate Time',
            Icons.access_time_filled_sharp,
            onTapCenterButton,
          ),
          buttonWithText(
            rightTitle,
            rightSubtitle ?? 'Package Weight',
            CustomIcon.infoSquareIcon,
            onTapRightButton,
          ),
        ],
      ),
    );
  }

  Widget buttonWithText(
    String title,
    String subtitle,
    IconData icon,
    void Function() onTap,
  ) {
    return AppInkContainer(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      padding: EdgeInsets.all(0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AppIconButton(
            buttonColor: AppColors.greenLv7,
            icon: Icon(
              icon,
              color: AppColors.greenLv1,
            ),
            onTap: () {},
          ),
          SizedBox(height: AppSizes.padding / 1.5),
          Text(
            title,
            style: AppTextStyle.bold(size: 16),
          ),
          SizedBox(height: AppSizes.padding / 1.5),
          Text(
            subtitle,
            style: AppTextStyle.bold(
              size: 12,
              color: AppColors.blackLv4,
            ),
          ),
        ],
      ),
    );
  }
}
