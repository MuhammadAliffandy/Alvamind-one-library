import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';

class ProfileInfo extends StatelessWidget {
  final List<String>? title;
  final List<String>? subtitle;

  final double? fontSize;
  final double? iconSize;
  final double? backgroundSize;

  const ProfileInfo({
    super.key,
    this.title,
    this.subtitle,
    this.backgroundSize,
    this.fontSize,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        detailInfo(title![0], subtitle![0]),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 12,
          ),
          height: 18,
          width: 1,
          color: AppColors.blackLv4,
        ),
        detailInfo(title![1], subtitle![1]),
      ],
    );
  }

  Widget detailInfo(
    String title,
    String subtitle,
  ) {
    return Column(
      children: [
        Text(
          title,
          softWrap: true,
          maxLines: 3,
          overflow: TextOverflow.fade,
          textAlign: TextAlign.center,
          style: AppTextStyle.bold(size: 18),
        ),
        SizedBox(
          height: AppSizes.padding / 2,
        ),
        Text(
          subtitle,
          softWrap: true,
          maxLines: 3,
          overflow: TextOverflow.fade,
          textAlign: TextAlign.center,
          style: AppTextStyle.medium(
            size: 12,
            color: AppColors.blackLv4,
          ),
        ),
      ],
    );
  }
}
