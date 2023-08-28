import 'package:alvamind_library/widget/molecule/app_ink_container.dart';
import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../molecule/app_icon_button.dart';
import '../../molecule/app_tags.dart';

class ListCard extends StatefulWidget {
  final String title;
  final String? subtitle;
  final IconData? rightIcon;
  final IconData? leftIcon;
  final Color? leftIconColor;
  final Color? rightIconColor;
  final String? textTags;
  final bool? isSubtitle;
  final void Function()? onTapChevronButton;
  final void Function()? onTapCard;
  final List<BoxShadow>? boxShadow;
  final Widget? moreWidget;
  final Color? tagColor;
  final Color? tagBorderColor;
  final Color? tagTextColor;
  const ListCard({
    super.key,
    required this.title,
    this.subtitle,
    this.rightIcon,
    this.leftIcon,
    this.textTags,
    this.onTapChevronButton,
    this.onTapCard,
    this.leftIconColor,
    this.rightIconColor,
    this.isSubtitle = true,
    this.boxShadow,
    this.moreWidget,
    this.tagBorderColor,
    this.tagColor,
    this.tagTextColor,
  });

  @override
  State<ListCard> createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  @override
  Widget build(BuildContext context) {
    return AppInkContainer(
      onTap: widget.onTapCard ?? () {},
      backgroundColor: AppColors.white,
      boxShadow: widget.boxShadow ??
          [
            const BoxShadow(
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
              Expanded(
                child: Row(
                  children: [
                    widget.leftIcon == null
                        ? const SizedBox.shrink()
                        : Icon(
                            widget.leftIcon,
                            color: widget.leftIconColor ?? AppColors.primary,
                          ),
                    widget.leftIcon == null
                        ? const SizedBox.shrink()
                        : SizedBox(
                            width: AppSizes.padding,
                          ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          widget.isSubtitle == false
                              ? const SizedBox.shrink()
                              : Text(
                                  widget.subtitle ?? '',
                                  style: AppTextStyle.medium(size: 14),
                                ),
                          Text(
                            widget.title,
                            softWrap: true,
                            overflow: TextOverflow.fade,
                            maxLines: 2,
                            style: AppTextStyle.bold(size: 18),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  AppTags(
                    text: widget.textTags ?? '',
                    color: widget.tagColor ?? AppColors.white,
                    textColor: widget.tagTextColor ?? AppColors.primary,
                    borderColor: widget.tagBorderColor ?? AppColors.primary,
                    borderWidth: 1,
                  ),
                  SizedBox(width: AppSizes.padding / 4),
                  AppIconButton(
                    padding: const EdgeInsets.all(0),
                    buttonColor: AppColors.transparent,
                    icon: Icon(
                      widget.rightIcon,
                      color: widget.rightIconColor ?? AppColors.blackLv2,
                    ),
                    onTap: widget.onTapChevronButton ?? () {},
                  )
                ],
              )
            ],
          ),
          widget.moreWidget ?? const SizedBox.shrink()
        ],
      ),
    );
  }
}
