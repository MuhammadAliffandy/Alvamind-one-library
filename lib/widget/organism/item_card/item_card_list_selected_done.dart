import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../molecule/app_button.dart';
import '../../molecule/app_card_container.dart';

class ItemCardListSelectedDone extends StatelessWidget {
  final String title;
  final String? morePayment;
  final String? shuttlePayment;
  final String? textButton;
  final bool? isSelected;
  final Widget? subtitle;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? selectedPadding;
  final Color? color;
  final Color? selectedColor;
  final BorderRadius? selectedBorderRadius;
  final BorderRadius? borderRadius;
  final Icon? iconTitle;

  final void Function()? onTapButton;

  const ItemCardListSelectedDone({
    super.key,
    required this.title,
    this.padding,
    this.isSelected,
    this.morePayment,
    this.shuttlePayment,
    this.onTapButton,
    this.textButton,
    this.borderRadius,
    this.selectedColor,
    this.color,
    this.selectedBorderRadius,
    this.selectedPadding,
    this.iconTitle,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return AppCardContainer(
      padding: selectedPadding ?? const EdgeInsets.all(0),
      backgroundColor: selectedColor ?? AppColors.primary,
      borderRadius: selectedBorderRadius ?? BorderRadius.circular(30),
      child: Padding(
        padding: isSelected == true ? EdgeInsets.all(AppSizes.padding / 3) : const EdgeInsets.all(0),
        child: Column(
          children: [
            AppCardContainer(
              padding: padding ?? EdgeInsets.all(AppSizes.padding),
              backgroundColor: color ?? AppColors.white,
              borderRadius: borderRadius ?? BorderRadius.circular(30),
              child: horizontalMode(),
            ),
            isSelected == true ? SizedBox(height: AppSizes.padding / 2) : const SizedBox.shrink(),
            isSelected == true
                ? AppButton(
                    buttonColor: selectedColor ?? AppColors.primary,
                    padding: EdgeInsets.symmetric(horizontal: AppSizes.padding, vertical: AppSizes.padding / 4),
                    text: textButton ?? '',
                    borderColor: selectedColor ?? AppColors.transparent,
                    borderWidth: 0,
                    onTap: onTapButton ?? () {},
                  )
                : const SizedBox.shrink(),
            isSelected == true ? SizedBox(height: AppSizes.padding / 2) : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }

  Widget horizontalMode() {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headItem(),
            SizedBox(height: AppSizes.padding / 2),
            subtitle == null ? const SizedBox.shrink() : subtitle ?? Text(''),
            morePayment == null || shuttlePayment == null ? const SizedBox.shrink() : SizedBox(height: AppSizes.padding / 2),
            morePayment == null || shuttlePayment == null ? const SizedBox.shrink() : subItem()
          ],
        ),
        // buttonDown()
      ],
    );
  }

  Widget headItem() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        iconTitle == null
            ? const Icon(
                Icons.check_box_outlined,
              )
            : iconTitle!,
        SizedBox(
          width: AppSizes.padding / 2,
        ),
        Text(
          title,
          style: AppTextStyle.bold(size: 20),
        ),
      ],
    );
  }

  Widget subItem() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Biaya lain lain:',
              style: AppTextStyle.bold(
                size: 14,
              ),
            ),
            Text(
              morePayment ?? '',
              style: AppTextStyle.bold(
                size: 14,
              ),
            )
          ],
        ),
        SizedBox(
          height: AppSizes.padding / 4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Biaya Antar Jemput',
              style: AppTextStyle.bold(
                size: 14,
              ),
            ),
            Text(
              shuttlePayment ?? '',
              style: AppTextStyle.bold(
                size: 14,
              ),
            )
          ],
        ),
      ],
    );
  }
}
