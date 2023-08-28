import 'package:flutter/material.dart';

import '../../../app/asset/app_assets.dart';
import '../../../app/theme/app_colors.dart';

import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../molecule/app_ink_container.dart';
import '../../molecule/app_long_card.dart';
import '../../molecule/app_tags.dart';

class NotificationCard extends StatelessWidget {
  final String title;
  final String dateNotification;
  final String timeNotification;
  final String textNotification;
  final bool? isNew;
  final Color? backgroundColorIcon;
  final Color? iconColor;
  final IconData? iconNotification;
  final void Function() onTap;
  final EdgeInsets? padding;
  const NotificationCard({
    required this.dateNotification,
    required this.timeNotification,
    required this.textNotification,
    required this.title,
    required this.onTap,
    this.isNew = false,
    this.backgroundColorIcon,
    this.iconColor,
    this.iconNotification,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppInkContainer(
      onTap: onTap,
      padding: padding ?? EdgeInsets.all(AppSizes.padding / 2),
      backgroundColor: AppColors.transparent,
      borderRadius: BorderRadius.circular(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppLongCard(
            padding: EdgeInsets.all(0),
            backgroundColor: AppColors.transparent,
            children: [
              Expanded(
                child: Row(
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: backgroundColorIcon ?? AppColors.blueLv5,
                      child: Icon(
                        iconNotification ?? CustomIcon.documentIcon,
                        color: iconColor ?? AppColors.primary,
                      ),
                    ),
                    SizedBox(
                      width: AppSizes.padding,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            softWrap: true,
                            maxLines: 2,
                            overflow: TextOverflow.fade,
                            style: AppTextStyle.bold(size: 18),
                          ),
                          SizedBox(
                            height: AppSizes.padding / 3,
                          ),
                          Text(
                            '${dateNotification}  |  ${timeNotification}',
                            style: AppTextStyle.medium(
                              size: 14,
                              color: AppColors.blackLv4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              isNew == true ? const AppTags(text: 'Baru') : SizedBox.shrink(),
            ],
          ),
          SizedBox(
            height: AppSizes.padding,
          ),
          Text(
            textNotification,
            style: AppTextStyle.regular(size: 14),
          ),
        ],
      ),
    );
  }
}
