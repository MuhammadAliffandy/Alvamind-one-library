import 'package:flutter/material.dart';

import '../../../app/asset/app_assets.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../atom/app_divider.dart';
import '../../atom/app_image.dart';
import '../../molecule/app_button.dart';
import '../../molecule/app_card.dart';
import '../../molecule/app_icon_button.dart';
import '../../molecule/app_ink_container.dart';
import '../../molecule/app_tags.dart';

class ItemCardList extends StatefulWidget {
  final EdgeInsetsGeometry? padding;
  final bool? isList;
  final bool? isVertical;
  final bool? isProfile;
  final bool? isOwner;
  final bool? isCustomer;
  final bool? showHeartButton;
  final bool? showTag;
  final String title;
  final String? address;
  final String? textPrice;
  final String? statusPrice;
  final String? dateProgress;
  final String? statustProgressText;
  final String? dataProgress;
  final String? textLeftButton;
  final String? textRightButton;
  final String? labelingText;
  final String? starImageCount;
  final String? tagText;
  final double? labelingCount;
  final String? dateProfileItem;
  final String? image;
  final Color? tagColor;
  final Color? backgroundColor;
  final Color? leftButtonColor;
  final Color? leftTextButtonColor;
  final Color? rightButtonColor;
  final Color? rightTextButtonColor;
  final Color? iconHeartColor;
  final BorderRadius? borderRadius;
  final Widget? detailInfoCard;
  final IconData? iconHeartButton;
  final IconData? leftIconButton;
  final IconData? rightIconButton;
  final List<BoxShadow>? boxShadow;
  final Widget? customButton;
  final double? fontSizeButton;
  final void Function()? onTapRightButton;
  final void Function()? onTapLeftButton;
  final void Function()? onTapHearButton;
  final void Function()? onTapCard;

  const ItemCardList({
    super.key,
    required this.title,
    this.isVertical = false,
    this.isProfile = false,
    this.isOwner = false,
    this.isCustomer = false,
    this.showHeartButton = true,
    this.showTag = true,
    this.padding,
    this.dataProgress,
    this.address,
    this.dateProgress,
    this.isList,
    this.statusPrice,
    this.onTapLeftButton,
    this.onTapRightButton,
    this.labelingText,
    this.labelingCount,
    this.statustProgressText,
    this.textLeftButton,
    this.textPrice,
    this.textRightButton,
    this.starImageCount,
    this.dateProfileItem,
    this.tagColor,
    this.tagText,
    this.detailInfoCard,
    this.onTapCard,
    this.boxShadow,
    this.image,
    this.backgroundColor,
    this.borderRadius,
    this.iconHeartButton,
    this.onTapHearButton,
    this.iconHeartColor,
    this.leftButtonColor,
    this.leftIconButton,
    this.rightButtonColor,
    this.rightIconButton,
    this.leftTextButtonColor,
    this.rightTextButtonColor,
    this.customButton,
    this.fontSizeButton,
  });

  @override
  State<ItemCardList> createState() => _ItemCardListState();
}

class _ItemCardListState extends State<ItemCardList> {
  @override
  Widget build(BuildContext context) {
    return AppInkContainer(
      onTap: widget.onTapCard ?? () {},
      padding: widget.padding ?? EdgeInsets.all(AppSizes.padding),
      backgroundColor: widget.backgroundColor ?? AppColors.white,
      boxShadow: widget.boxShadow,
      borderRadius: widget.borderRadius ?? BorderRadius.circular(30),
      child: widget.isVertical == true ? verticalMode() : horizontalMode(),
    );
  }

  Widget verticalMode() {
    return Container(
      child: Flex(
        direction: Axis.vertical,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          imageCard(150, 150),
          SizedBox(
            height: AppSizes.padding,
          ),
          Flex(
            direction: widget.isVertical == true ? Axis.vertical : Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: AppTextStyle.bold(size: 20),
                softWrap: true,
                maxLines: 2,
                overflow: TextOverflow.clip,
              ),
              SizedBox(
                height: AppSizes.padding / 2,
              ),
              Text(
                widget.address ?? 'City, Country',
                style: AppTextStyle.regular(size: 12),
                softWrap: true,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: AppSizes.padding / 2,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    priceStatus(),
                    SizedBox(
                      width: AppSizes.padding,
                    ),
                    heartButton(),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget horizontalMode() {
    return Column(
      children: [
        Flex(
          direction: Axis.horizontal,
          children: [
            imageCard(100, 100),
            SizedBox(
              width: AppSizes.padding,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  headItem(),
                  Flex(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    direction: Axis.horizontal,
                    children: [
                      Expanded(
                        child: Text(
                          widget.address ?? 'City, Country',
                          style: AppTextStyle.medium(size: 14),
                          softWrap: true,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      priceStatus(),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        widget.isOwner == true
            ? widget.customButton != null
                ? widget.customButton ?? buttonDown()
                : buttonDown()
            : const SizedBox.shrink(),
      ],
    );
  }

  Widget headItem() {
    return Column(
      children: [
        widget.isProfile == true
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.dateProfileItem ?? 'Berdiri 2023',
                    style: AppTextStyle.regular(size: 10),
                  ),
                  widget.isCustomer == true
                      ? const SizedBox.shrink()
                      : AppTags(
                          text: widget.tagText ?? 'Premium',
                          color: widget.tagColor ?? AppColors.orangeLv1,
                          fontSize: 10,
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                          borderRadius: 8,
                        ),
                ],
              )
            : const SizedBox.shrink(),
        widget.isProfile == true
            ? SizedBox(
                height: AppSizes.padding / 2,
              )
            : const SizedBox.shrink(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title,
              style: AppTextStyle.bold(size: 20),
            ),
            widget.isCustomer == true || widget.isList == false
                ? const SizedBox.shrink()
                : widget.showHeartButton == false
                    ? const SizedBox.shrink()
                    : heartButton(),
          ],
        ),
      ],
    );
  }

  Widget imageCard(double width, double height) {
    return AppCard(
      onTap: () {},
      backgroundImage: widget.image ?? randomImage,
      height: width,
      width: height,
      borderRadius: 20,
      padding: EdgeInsets.symmetric(
        vertical: AppSizes.padding / 2,
        horizontal: AppSizes.padding / 2,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          widget.showTag == false
              ? const Center()
              : Align(
                  alignment: Alignment.centerRight,
                  child: AppTags(
                    text: widget.starImageCount ?? '',
                    color: AppColors.blackLv9.withOpacity(0.54),
                    borderRadius: 100,
                    textColor: AppColors.primary,
                    leftIcon: Icons.star,
                    iconsColor: AppColors.orangeLv1,
                    fontSize: 10,
                    padding: EdgeInsets.all(AppSizes.padding / 4),
                  ),
                ),
        ],
      ),
    );
  }

  Widget priceStatus() {
    return Flex(
      direction: widget.isVertical == true ? Axis.horizontal : Axis.vertical,
      mainAxisAlignment: widget.isVertical == true ? MainAxisAlignment.start : MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          widget.textPrice ?? '',
          style: AppTextStyle.bold(
            size: 24,
            color: AppColors.primary,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            widget.statusPrice ?? '',
            style: AppTextStyle.medium(
              size: 10,
              color: AppColors.blackLv4,
            ),
          ),
        ),
      ],
    );
  }

  IconData heartIcon = CustomIcon.heartIcon;
  Widget heartButton() {
    return AppIconButton(
      padding: const EdgeInsets.all(0),
      buttonColor: AppColors.transparent,
      icon: Icon(
        widget.iconHeartButton ?? heartIcon,
        color: widget.iconHeartColor ?? AppColors.primary,
      ),
      onTap: widget.onTapHearButton ??
          () {
            setState(() {
              heartIcon == CustomIcon.heartIcon ? heartIcon = CustomIcon.heartBoldIcon : heartIcon = CustomIcon.heartIcon;
            });
          },
    );
  }

  Widget buttonDown() {
    return Column(
      children: [
        AppDivider(
          thickness: 2,
          color: AppColors.blackLv8,
          padding: EdgeInsets.symmetric(vertical: AppSizes.padding),
        ),
        //
        // isList
        widget.detailInfoCard ?? const SizedBox.shrink(),
        //
        widget.detailInfoCard == null
            ? const SizedBox.shrink()
            : SizedBox(
                height: AppSizes.padding,
              ),
        //
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: AppButton(
                onTap: widget.onTapLeftButton ?? () {},
                text: widget.textLeftButton ?? '',
                rounded: true,
                textColor: widget.leftTextButtonColor ?? AppColors.white,
                borderWidth: 2,
                fontSize: widget.fontSizeButton ?? 16,
                leftIcon: widget.leftIconButton,
                buttonColor: widget.leftButtonColor ?? AppColors.primary,
                borderColor: AppColors.primary,
                padding: EdgeInsets.symmetric(
                  vertical: AppSizes.padding / 2.5,
                ),
              ),
            ),
            SizedBox(
              width: AppSizes.padding / 2,
            ),
            Expanded(
              child: AppButton(
                onTap: widget.onTapRightButton ?? () {},
                padding: EdgeInsets.symmetric(
                  vertical: AppSizes.padding / 2.5,
                ),
                text: widget.textRightButton ?? '',
                fontSize: widget.fontSizeButton ?? 16,
                textColor: widget.rightTextButtonColor ?? AppColors.primary,
                leftIcon: widget.rightIconButton,
                buttonColor: widget.rightButtonColor ?? AppColors.white,
                borderWidth: 2,
                borderColor: AppColors.primary,
                rounded: true,
              ),
            ),
          ],
        )
      ],
    );
  }
}
