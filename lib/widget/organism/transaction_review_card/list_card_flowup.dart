import 'package:alvamind_library/widget/molecule/app_ink_container.dart';
import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../molecule/app_icon_button.dart';

class ListCardFlow extends StatelessWidget {
  final String title;
  final String? leftTitle;
  final String subtitle;
  final String? textTags;

  final IconData? leftIcon;
  final void Function()? onTap;

  const ListCardFlow({
    super.key,
    required this.title,
    required this.subtitle,
    this.leftIcon,
    this.textTags,
    this.leftTitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppInkContainer(
      onTap: onTap ?? () {},
      backgroundColor: AppColors.white,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppIconButton(
                buttonColor: AppColors.greenLv7,
                icon: Icon(
                  leftIcon,
                  color: AppColors.greenLv1,
                ),
                onTap: () {},
              ),
              SizedBox(
                width: AppSizes.padding,
              ),
              Text(
                leftTitle ?? '',
                style: AppTextStyle.bold(size: 18),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                title,
                style: AppTextStyle.bold(size: 18),
              ),
              SizedBox(
                height: AppSizes.padding / 4,
              ),
              Text(
                subtitle,
                style: AppTextStyle.bold(
                  size: 14,
                  color: AppColors.greenLv1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
