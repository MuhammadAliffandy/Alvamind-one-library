import 'package:flutter/material.dart';

import '../../app/asset/app_assets.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';
import '../../app/theme/app_text_style.dart';
import '../atom/app_image.dart';
import 'app_card_container.dart';
import 'app_icon_button.dart';

class AccountList extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final String? image;
  final TextStyle? titleTextStyle;
  final bool? rightButton;
  final Widget? leftItem;
  final Widget? rightItem;
  final List<BoxShadow>? boxShadow;
  final EdgeInsets? padding;
  final Color? backgroundColor;
  final void Function()? onTapChatButton;
  final void Function()? onTapCallButton;

  const AccountList({
    super.key,
    this.onTapCallButton,
    this.onTapChatButton,
    this.image,
    this.subtitle,
    this.title,
    this.rightButton = true,
    this.rightItem,
    this.leftItem,
    this.titleTextStyle,
    this.boxShadow,
    this.padding,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppCardContainer(
      padding: padding ?? EdgeInsets.all(0),
      boxShadow: boxShadow ?? [],
      backgroundColor: backgroundColor ?? AppColors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                leftItem == null
                    ? CircleAvatar(
                        backgroundImage: NetworkImage(
                          image ?? randomImage,
                        ),
                        maxRadius: 25,
                      )
                    : leftItem!,
                SizedBox(
                  width: AppSizes.padding,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title ?? '',
                        style: titleTextStyle ?? AppTextStyle.bold(size: 18),
                      ),
                      subtitle == null
                          ? const SizedBox.shrink()
                          : SizedBox(
                              height: AppSizes.padding / 4,
                            ),
                      subtitle == null
                          ? const SizedBox.shrink()
                          : Text(
                              subtitle ?? '',
                              maxLines: 1,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyle.medium(
                                size: 14,
                                color: AppColors.blackLv5,
                              ),
                            ),
                    ],
                  ),
                ),
                //
                rightButton == false
                    ? SizedBox(
                        width: AppSizes.padding * 4,
                      )
                    : const SizedBox.shrink(),

                rightButton == false
                    ? const SizedBox.shrink()
                    : Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Flexible(
                              child: AppIconButton(
                                buttonColor: AppColors.transparent,
                                padding: EdgeInsets.all(2),
                                icon: const Icon(
                                  CustomIcon.chatIcon,
                                  color: AppColors.primary,
                                ),
                                onTap: onTapChatButton ?? () {},
                              ),
                            ),
                            SizedBox(
                              width: AppSizes.padding,
                            ),
                            Flexible(
                              child: AppIconButton(
                                padding: EdgeInsets.all(2),
                                buttonColor: AppColors.transparent,
                                icon: const Icon(
                                  CustomIcon.contactIcon,
                                  color: AppColors.primary,
                                ),
                                onTap: onTapChatButton ?? () {},
                              ),
                            ),
                          ],
                        ),
                      )
              ],
            ),
          ),
          rightButton == false ? rightItem! : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
