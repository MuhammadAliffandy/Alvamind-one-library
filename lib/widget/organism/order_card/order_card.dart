import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../atom/app_divider.dart';
import '../../atom/app_image.dart';
import '../../molecule/app_button.dart';
import '../../molecule/app_card.dart';
import '../../molecule/app_ink_container.dart';
import '../../molecule/app_progress_line.dart';
import '../../molecule/app_tags.dart';

class OrderCard extends StatelessWidget {
  final double? labelingCount;
  final double? tagBorderWidth;
  final EdgeInsetsGeometry? padding;
  final String title;
  final String? dateDone;
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
  final String? image;
  final Color? backgroundColor;
  final Color? tagColor;
  final Color? tagBorderColor;
  final Color? tagTextColor;
  final Color? leftButtonColor;
  final Color? rightButtonColor;
  final Color? leftButtonBorderColor;
  final Color? leftButtonTextColor;
  final Color? rightButtonTextColor;
  final Color? rightButtonBorderColor;
  final Color? labelingColor;
  final bool? isProgress;
  final bool? isDone;
  final bool? showButton;
  final bool? showProgressLine;
  final void Function()? onTapRightButton;
  final void Function()? onTapLeftButton;
  final List<BoxShadow>? boxShadow;
  final List<Widget>? customWidget;

  const OrderCard({
    super.key,
    required this.title,
    this.padding,
    this.dataProgress,
    this.isDone,
    this.dateDone,
    this.dateProgress,
    this.isProgress,
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
    this.backgroundColor,
    this.tagBorderColor,
    this.tagBorderWidth,
    this.tagColor,
    this.tagText,
    this.tagTextColor,
    this.leftButtonBorderColor,
    this.leftButtonColor,
    this.leftButtonTextColor,
    this.rightButtonBorderColor,
    this.rightButtonColor,
    this.rightButtonTextColor,
    this.labelingColor,
    this.image,
    this.boxShadow,
    this.showButton = true,
    this.showProgressLine = true,
    this.customWidget,
  });

  @override
  Widget build(BuildContext context) {
    return AppInkContainer(
      padding: padding ?? EdgeInsets.all(AppSizes.padding),
      backgroundColor: backgroundColor ?? AppColors.white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: boxShadow ?? [],
      child: Column(
        children: [
          Row(
            children: [
              imageCard(),
              SizedBox(
                width: AppSizes.padding,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    isProgress == true
                        ? dateProgress == null
                            ? const SizedBox.shrink()
                            : statusProgress()
                        : SizedBox.shrink(),
                    isProgress == true ? SizedBox(height: AppSizes.padding / 2) : const SizedBox.shrink(),
                    //
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          softWrap: true,
                          maxLines: 3,
                          overflow: TextOverflow.fade,
                          style: AppTextStyle.bold(size: 20),
                        ),
                        isDone == true ? SizedBox(height: AppSizes.padding / 2) : const SizedBox.shrink(),
                        isDone == true
                            ? dateDone == null
                                ? const SizedBox.shrink()
                                : Text(
                                    dateDone ?? '',
                                    softWrap: true,
                                    maxLines: 3,
                                    overflow: TextOverflow.fade,
                                    style: AppTextStyle.regular(size: 14),
                                  )
                            : const SizedBox.shrink(),
                        SizedBox(height: AppSizes.padding / 2),
                        priceStatus(),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          AppDivider(
            thickness: 2,
            color: AppColors.blackLv8,
            padding: EdgeInsets.symmetric(vertical: AppSizes.padding),
          ),
          //
          // isProgress
          isProgress == true
              ? showProgressLine == true
                  ? AppProgressLine(
                      lineColor: labelingColor ?? AppColors.primary,
                      value: labelingCount ?? 20,
                      maxValue: 100,
                      label: labelingText ?? 'Labeling',
                    )
                  : const SizedBox.shrink()
              : const SizedBox.shrink(),
          isProgress == true
              ? showProgressLine == true
                  ? SizedBox(
                      height: AppSizes.padding,
                    )
                  : const SizedBox.shrink()
              : const SizedBox.shrink(),
          //
          //
          // button down
          showButton == true
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: AppButton(
                        onTap: onTapLeftButton ?? () {},
                        text: textLeftButton ?? '',
                        rounded: true,
                        textColor: leftButtonTextColor ?? AppColors.white,
                        borderWidth: 2,
                        buttonColor: leftButtonColor ?? AppColors.primary,
                        borderColor: leftButtonBorderColor ?? AppColors.primary,
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
                        onTap: onTapRightButton ?? () {},
                        padding: EdgeInsets.symmetric(
                          vertical: AppSizes.padding / 2.5,
                        ),
                        text: textRightButton ?? '',
                        textColor: rightButtonTextColor ?? AppColors.primary,
                        borderWidth: 2,
                        buttonColor: rightButtonColor ?? AppColors.white,
                        borderColor: rightButtonBorderColor ?? AppColors.primary,
                        rounded: true,
                      ),
                    ),
                  ],
                )
              : const SizedBox.shrink(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...customWidget ?? [],
            ],
          )
        ],
      ),
    );
  }

  Widget statusProgress() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            dateProgress ?? '',
            softWrap: true,
            maxLines: 3,
            overflow: TextOverflow.fade,
            style: AppTextStyle.medium(size: 14),
          ),
        ),
        AppTags(
          text: tagText ?? 'Sedang Progress',
          color: tagColor ?? AppColors.white,
          textColor: tagTextColor ?? AppColors.primary,
          borderWidth: tagBorderWidth ?? 1,
          borderColor: tagBorderColor ?? AppColors.primary,
        ),
      ],
    );
  }

  Widget imageCard() {
    return AppCard(
      onTap: () {},
      backgroundImage: image ?? randomImage,
      height: 100,
      width: 100,
      borderRadius: 20,
      padding: EdgeInsets.symmetric(
        vertical: AppSizes.padding / 2,
        horizontal: AppSizes.padding / 2,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: AppTags(
              text: starImageCount ?? '',
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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Text(
              textPrice ?? '',
              style: AppTextStyle.bold(
                size: 24,
                color: AppColors.primary,
              ),
            ),
          ],
        ),
        statusPrice == null
            ? const SizedBox.shrink()
            : Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  statusPrice ?? '',
                  style: AppTextStyle.medium(
                    size: 10,
                    color: AppColors.blackLv4,
                  ),
                ),
              ),
        isDone == true
            ? SizedBox(
                width: AppSizes.padding / 4,
              )
            : const SizedBox.shrink(),
        isDone == true
            ? const AppTags(
                text: 'Paid',
                color: AppColors.white,
                textColor: AppColors.primary,
                borderWidth: 1,
                borderColor: AppColors.primary,
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
