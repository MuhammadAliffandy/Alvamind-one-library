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
import '../../molecule/app_progress_line.dart';

class ItemCardListSelected extends StatefulWidget {
  final EdgeInsetsGeometry? padding;
  final bool? isList;
  final bool? isSelected;
  final bool? isStatus;
  final bool? withCustomItem;
  final bool? showLabel;
  final bool? showButton;
  final Widget? rightItem;
  final String title;
  final String? timeWork;
  final String? typeItem;
  final String? textPrice;
  final String? statusPrice;
  final String? dateProgress;
  final String? statustProgressText;
  final String? dataProgress;
  final String? textLeftButton;
  final String? textRightButton;
  final String? labelingText;
  final String? starImageCount;
  final String? image;
  final double? labelingCount;
  final Color? selectedButtonColor;
  final Color? labelingColor;
  final BorderRadius? borderRadiusSelected;
  final BorderRadius? borderRadius;
  final IconData? iconHeartButton;
  final Color? iconHeartColor;
  final List<BoxShadow>? boxShadow;
  final Widget? customSelectedButton;
  final void Function()? onTapRightButton;
  final void Function()? onTapLeftButton;
  final void Function()? onTapHeartButton;
  final void Function()? onTapCard;
  final void Function()? onTapSelectedButton;

  const ItemCardListSelected({
    super.key,
    required this.title,
    this.padding,
    this.dataProgress,
    this.dateProgress,
    this.isList = false,
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
    this.isSelected,
    this.timeWork,
    this.typeItem,
    this.showButton = true,
    this.isStatus = false,
    this.onTapCard,
    this.boxShadow,
    this.selectedButtonColor,
    this.onTapSelectedButton,
    this.rightItem,
    this.withCustomItem = false,
    this.showLabel = true,
    this.image,
    this.borderRadius,
    this.borderRadiusSelected,
    this.iconHeartButton,
    this.iconHeartColor,
    this.onTapHeartButton,
    this.customSelectedButton,
    this.labelingColor,
  });

  @override
  State<ItemCardListSelected> createState() => _ItemCardListSelectedState();
}

class _ItemCardListSelectedState extends State<ItemCardListSelected> {
  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        color: widget.isSelected == true ? widget.selectedButtonColor ?? AppColors.primary : AppColors.transparent,
        borderRadius: widget.borderRadiusSelected ?? BorderRadius.circular(30),
        boxShadow: widget.boxShadow ?? [],
      ),
      child: Padding(
        padding: widget.isSelected == true ? EdgeInsets.all(AppSizes.padding / 3) : const EdgeInsets.all(0),
        child: Column(
          children: [
            AppInkContainer(
              onTap: widget.onTapCard ?? () {},
              padding: widget.padding ?? EdgeInsets.all(AppSizes.padding),
              backgroundColor: AppColors.white,
              borderRadius: widget.borderRadius ?? BorderRadius.circular(30),
              child: horizontalMode(),
            ),
            widget.isSelected == true ? SizedBox(height: AppSizes.padding / 2) : const SizedBox.shrink(),
            widget.isSelected == true
                ? widget.customSelectedButton == null
                    ? AppButton(
                        padding: EdgeInsets.symmetric(horizontal: AppSizes.padding, vertical: AppSizes.padding / 4),
                        text: 'Dipilih',
                        borderColor: widget.selectedButtonColor ?? AppColors.transparent,
                        rightIcon: Icons.check_box_rounded,
                        buttonColor: widget.selectedButtonColor ?? AppColors.primary,
                        onTap: widget.onTapSelectedButton ?? () {},
                      )
                    : widget.customSelectedButton!
                : const SizedBox.shrink(),
            widget.isSelected == true ? SizedBox(height: AppSizes.padding / 2) : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }

  Widget horizontalMode() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            imageCard(90, 90),
            SizedBox(
              width: AppSizes.padding,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  headItem(),
                  widget.isSelected == false
                      ? const SizedBox.shrink()
                      : SizedBox(
                          height: AppSizes.padding / 2,
                        ),
                  Flex(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    direction: Axis.horizontal,
                    children: [
                      subItem(),
                      priceStatus(),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        widget.isStatus == true ? buttonDown() : const SizedBox.shrink(),
      ],
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
        widget.isStatus == true
            ? widget.showLabel == false
                ? const SizedBox.shrink()
                : AppProgressLine(
                    lineColor: widget.labelingColor ?? AppColors.primary,
                    value: widget.labelingCount ?? 20,
                    maxValue: 100,
                    label: widget.labelingText ?? 'Labeling',
                  )
            : const SizedBox.shrink(),
        widget.isStatus == true
            ? widget.showButton == false || widget.showLabel == false
                ? const SizedBox.shrink()
                : SizedBox(
                    height: AppSizes.padding,
                  )
            : const SizedBox.shrink(),
        //
        //
        widget.showButton == false
            ? const SizedBox.shrink()
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: AppButton(
                      onTap: widget.onTapLeftButton ?? () {},
                      text: widget.textLeftButton ?? '',
                      rounded: true,
                      borderWidth: 2,
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
                      textColor: AppColors.primary,
                      buttonColor: AppColors.white,
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

  Widget headItem() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.title,
          style: AppTextStyle.bold(size: 20),
        ),
        widget.isList == true
            ? widget.withCustomItem == false
                ? heartButton()
                : widget.rightItem!
            : const SizedBox.shrink(),
      ],
    );
  }

  Widget subItem() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.typeItem == null
            ? const SizedBox.shrink()
            : Row(
                children: [
                  customIcon4Circle(),
                  SizedBox(
                    width: AppSizes.padding / 2,
                  ),
                  Text(
                    widget.typeItem ?? 'Pakaian',
                    style: AppTextStyle.regular(
                      size: 14,
                    ),
                  )
                ],
              ),
        widget.typeItem == null
            ? const SizedBox.shrink()
            : SizedBox(
                height: AppSizes.padding / 4,
              ),
        widget.timeWork == null
            ? const SizedBox.shrink()
            : Row(
                children: [
                  const Icon(
                    Icons.access_time_sharp,
                    size: 16,
                  ),
                  SizedBox(
                    width: AppSizes.padding / 2,
                  ),
                  Text(
                    widget.timeWork ?? '3 Hari Kerja',
                    style: AppTextStyle.regular(
                      size: 14,
                    ),
                  )
                ],
              ),
      ],
    );
  }

  Widget customIcon4Circle() {
    return const Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.circle_outlined,
              size: 6,
            ),
            SizedBox(
              width: 2,
            ),
            Icon(
              Icons.circle_outlined,
              size: 6,
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.circle_outlined,
              size: 6,
            ),
            SizedBox(
              width: 2,
            ),
            Icon(
              Icons.circle_outlined,
              size: 6,
            ),
          ],
        )
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
          Container()
        ],
      ),
    );
  }

  Widget priceStatus() {
    return Flex(
      direction: Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.center,
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
      padding: EdgeInsets.all(0),
      buttonColor: AppColors.transparent,
      icon: Icon(
        widget.iconHeartButton ?? heartIcon,
        color: widget.iconHeartColor ?? AppColors.primary,
      ),
      onTap: widget.onTapHeartButton ??
          () {
            setState(() {
              heartIcon == CustomIcon.heartIcon ? heartIcon = CustomIcon.heartBoldIcon : heartIcon = CustomIcon.heartIcon;
            });
          },
    );
  }
}
