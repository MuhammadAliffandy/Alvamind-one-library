import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_text_style.dart';
import '../../../app/utility/currency_formatter.dart';
import '../../molecule/app_card.dart';
import '../../molecule/app_icon_button.dart';
import '../../molecule/app_tags.dart';

class ItemCardImage extends StatelessWidget {
  final String image;
  final String stars;
  final String title;
  final String subtitle;
  final double price;
  final Function()? onTapCard;
  final Function()? onTapLikeButton;

  const ItemCardImage({
    Key? key,
    required this.image,
    required this.stars,
    required this.title,
    required this.subtitle,
    required this.price,
    this.onTapCard,
    this.onTapLikeButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCard(
      onTap: onTapCard,
      backgroundImage: image,
      height: 400,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 26),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          starBadge(),
          body(),
        ],
      ),
    );
  }

  Widget starBadge() {
    return Align(
      alignment: Alignment.centerRight,
      child: AppTags(
        text: stars,
        color: AppColors.blackLv9.withOpacity(0.54),
        borderRadius: 100,
        textColor: AppColors.primary,
        leftIcon: Icons.star,
        iconsColor: AppColors.orangeLv1,
        fontSize: 14,
      ),
    );
  }

  Widget body() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.heading4(color: AppColors.white),
        ),
        const SizedBox(height: 10),
        Text(
          subtitle,
          style: AppTextStyle.bodyLarge(
            fontWeight: AppFontWeight.regular,
            color: AppColors.white,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  CurrencyFormatter.format(price),
                  style: AppTextStyle.heading4(color: AppColors.white),
                ),
                Text(
                  ' / night',
                  style: AppTextStyle.bodyMedium(
                    fontWeight: AppFontWeight.regular,
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
            AppIconButton(
              buttonColor: AppColors.transparent,
              icon: const Icon(
                Icons.favorite_border,
                color: AppColors.white,
                size: 32,
              ),
              onTap: onTapLikeButton ?? () {},
            ),
          ],
        )
      ],
    );
  }
}
