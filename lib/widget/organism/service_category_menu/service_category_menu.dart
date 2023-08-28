import 'package:flutter/material.dart';

import '../../../app/asset/app_assets.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_text_style.dart';
import '../../molecule/app_icon_button.dart';

class ServiceCategory extends StatelessWidget {
  final double? height;
  final int? crossAxisCount;

  ServiceCategory({
    super.key,
    this.height,
    this.crossAxisCount,
  });

  final categoryMenusUp = [
    AppIconButton(
      icon: Image.asset(
        AppAssets.tshirtIcon,
        fit: BoxFit.cover,
        scale: 1.3,
      ),
      text: 'Pakaian',
      textStyle: AppTextStyle.medium(size: 14),
      buttonColor: AppColors.greenLv6,
      onTap: () {},
    ),
    AppIconButton(
      icon: Image.asset(
        AppAssets.moneyyIcon,
        fit: BoxFit.cover,
        scale: 1.3,
      ),
      buttonColor: Color(0xFF9C27B0).withOpacity(0.36),
      text: 'Karpet',
      textStyle: AppTextStyle.medium(size: 14),
      onTap: () {},
    ),
    AppIconButton(
      icon: Image.asset(
        AppAssets.mosqueIcon,
        fit: BoxFit.cover,
        scale: 1.3,
      ),
      text: 'Alat Ibadah',
      buttonColor: AppColors.blueLv5,
      textStyle: AppTextStyle.medium(size: 14),
      onTap: () {},
    ),
    AppIconButton(
      icon: Image.asset(
        AppAssets.dollIcon,
        fit: BoxFit.cover,
        scale: 1.3,
      ),
      text: 'Boneka',
      textStyle: AppTextStyle.medium(size: 14),
      onTap: () {},
      buttonColor: Color(0xFF246BFD).withOpacity(0.36),
    ),
    AppIconButton(
      icon: Image.asset(
        AppAssets.sleepingIcon,
        fit: BoxFit.cover,
        scale: 1.3,
      ),
      textStyle: AppTextStyle.medium(size: 14),
      text: 'Alat Tidur',
      buttonColor: Color(0xFFFF981F).withOpacity(0.36),
      onTap: () {},
    ),
    AppIconButton(
      icon: Image.asset(
        AppAssets.helmetIcon,
        fit: BoxFit.cover,
        scale: 1.3,
      ),
      buttonColor: Color(0xFF4AAF57).withOpacity(0.36),
      textStyle: AppTextStyle.medium(size: 14),
      text: 'Helm',
      onTap: () {},
    ),
    AppIconButton(
      icon: Image.asset(
        AppAssets.bagIcon,
        fit: BoxFit.cover,
        scale: 1.3,
      ),
      buttonColor: Color(0xFF8BC255).withOpacity(0.36),
      textStyle: AppTextStyle.medium(size: 14),
      text: 'Sepatu & Tas',
      onTap: () {},
    ),
    AppIconButton(
      icon: Image.asset(
        AppAssets.categoryIcon,
        fit: BoxFit.cover,
        scale: 1.3,
      ),
      buttonColor: Color(0xFFFF981F).withOpacity(0.36),
      textStyle: AppTextStyle.medium(size: 14),
      text: 'Lainnya',
      onTap: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height ?? 180,
        width: MediaQuery.of(context).size.width,
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount ?? 4,
          ),
          itemBuilder: (_, index) => Container(
            child: categoryMenusUp[index],
          ),
          itemCount: 8,
        ));
  }
}
