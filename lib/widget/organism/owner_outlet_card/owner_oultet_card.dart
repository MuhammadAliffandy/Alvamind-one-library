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
import '../../molecule/app_tags.dart';

class OwnerOutletCard extends StatelessWidget {
  final String title;
  final EdgeInsetsGeometry? padding;
  final bool? isSelected;
  final String? morePayment;
  final String? shuttlePayment;
  final String? textButton;
  final String? tagText;
  final Color? tagColor;
  final String? starImageCount;
  final String? address;
  final String? textLeftButton;
  final String? textRightButton;
  final Widget? ownerCard;

  final void Function()? functionButton;
  final void Function()? functionRightButton;
  final void Function()? functionLeftButton;

  const OwnerOutletCard({
    super.key,
    required this.title,
    this.padding,
    this.isSelected,
    this.morePayment,
    this.shuttlePayment,
    this.functionButton,
    this.textButton,
    this.starImageCount,
    this.tagColor,
    this.tagText,
    this.address,
    this.textLeftButton,
    this.functionLeftButton,
    this.functionRightButton,
    this.textRightButton,
    this.ownerCard,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ownerCard == null ? const SizedBox.shrink() : ownerCard!,
        ownerCard == null ? const SizedBox.shrink() : SizedBox(height: AppSizes.padding),
        //
        //
        Container(
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: isSelected == true ? EdgeInsets.all(AppSizes.padding / 3) : EdgeInsets.all(0),
            child: Column(
              children: [
                Container(
                  padding: padding ?? EdgeInsets.all(AppSizes.padding),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: horizontalMode(),
                ),
                isSelected == true ? SizedBox(height: AppSizes.padding / 2) : SizedBox.shrink(),
                isSelected == true
                    ? AppButton(
                        padding: EdgeInsets.symmetric(horizontal: AppSizes.padding, vertical: AppSizes.padding / 4),
                        text: textButton ?? '',
                        borderColor: AppColors.primary,
                        borderWidth: 0,
                        onTap: functionButton ?? () {},
                        rightIcon: Icons.check_circle_rounded,
                      )
                    : SizedBox.shrink(),
                isSelected == true ? SizedBox(height: AppSizes.padding / 2) : SizedBox.shrink(),
              ],
            ),
          ),
        ),
        //
        //
      ],
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
                  SizedBox(
                    height: AppSizes.padding / 2,
                  ),
                  Flex(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    direction: Axis.horizontal,
                    children: [
                      Text(
                        address ?? 'City, Country',
                        style: AppTextStyle.medium(size: 14),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        // buttonDown()
      ],
    );
  }

  Widget headItem() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Berdiri 2023',
              style: AppTextStyle.regular(size: 10),
            ),
            AppTags(
              text: tagText ?? 'Premium',
              color: tagColor ?? AppColors.redLv1,
              fontSize: 10,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              borderRadius: 8,
            ),
          ],
        ),
        SizedBox(
          height: AppSizes.padding / 2,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: AppTextStyle.bold(size: 20),
            ),
            heartButton(),
          ],
        ),
      ],
    );
  }

  Widget imageCard(double width, double height) {
    return AppCard(
      onTap: () {},
      backgroundImage: randomImage,
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

  Widget heartButton() {
    return AppIconButton(
      padding: EdgeInsets.all(0),
      buttonColor: AppColors.transparent,
      icon: const Icon(
        CustomIcon.heartIcon,
        color: AppColors.primary,
      ),
      onTap: () {},
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

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: AppButton(
                onTap: functionLeftButton ?? () {},
                text: textLeftButton ?? '',
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
                onTap: functionRightButton ?? () {},
                padding: EdgeInsets.symmetric(
                  vertical: AppSizes.padding / 2.5,
                ),
                text: textRightButton ?? '',
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
}
