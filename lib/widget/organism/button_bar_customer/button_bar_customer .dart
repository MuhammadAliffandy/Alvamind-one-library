import 'package:alvamind_library/widget/molecule/app_ink_container.dart';
import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../atom/app_divider.dart';
import '../../molecule/app_card_container.dart';
import '../../molecule/app_icon_button.dart';

class ButtonBarCustomer extends StatelessWidget {
  final String textCenter;
  final String textLeftOut;
  final String textLeftIn;
  final String textRightIn;
  final String textRightOut;

  final IconData iconCenter;
  final IconData iconLeftOut;
  final IconData iconLeftIn;
  final IconData iconRightIn;
  final IconData iconRightOut;
  final Color? iconCenterColor;
  final Color? iconCenterBackgroundColor;
  final Color? textCenterColor;

  final void Function() onTapButtonCenter;
  final void Function() onTapButtonLeftOut;
  final void Function() onTapButtonLeftIn;
  final void Function() onTapButtonRightIn;
  final void Function() onTapButtonRightOut;

  final int? index;
  final double? height;
  final double? gapTopButtonCenter;
  final List<BoxShadow>? boxShadow;

  const ButtonBarCustomer({
    super.key,
    required this.textCenter,
    required this.textLeftOut,
    required this.textLeftIn,
    required this.textRightIn,
    required this.textRightOut,
    required this.iconCenter,
    required this.iconLeftOut,
    required this.iconLeftIn,
    required this.iconRightIn,
    required this.iconRightOut,
    required this.onTapButtonCenter,
    required this.onTapButtonLeftOut,
    required this.onTapButtonLeftIn,
    required this.onTapButtonRightIn,
    required this.onTapButtonRightOut,
    this.iconCenterColor,
    this.iconCenterBackgroundColor,
    this.textCenterColor,
    this.index,
    this.boxShadow,
    this.height,
    this.gapTopButtonCenter,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> listButton = [
      AppInkContainer(
        padding: const EdgeInsets.all(0),
        borderRadius: BorderRadius.circular(100),
        onTap: onTapButtonLeftOut,
        child: AppIconButton(
          padding: EdgeInsets.only(top: AppSizes.padding / 1.5),
          paddingText: const EdgeInsets.only(top: 2),
          icon: Icon(
            size: 20,
            iconLeftOut,
            color: index == 0 ? AppColors.primary : AppColors.blackLv6,
          ),
          text: textLeftOut,
          buttonColor: AppColors.transparent,
          onTap: () {},
          textStyle: AppTextStyle.medium(
            size: 10,
            color: index == 0 ? AppColors.primary : AppColors.blackLv6,
          ),
        ),
      ),

      AppInkContainer(
        padding: const EdgeInsets.all(0),
        borderRadius: BorderRadius.circular(100),
        onTap: onTapButtonLeftIn,
        child: AppIconButton(
          padding: EdgeInsets.only(top: AppSizes.padding / 1.5),
          paddingText: const EdgeInsets.only(top: 2),
          icon: Icon(
            size: 20,
            iconLeftIn,
            color: index == 1 ? AppColors.primary : AppColors.blackLv6,
          ),
          text: textLeftIn,
          onTap: onTapButtonLeftIn,
          buttonColor: AppColors.transparent,
          textStyle: AppTextStyle.medium(
            size: 10,
            color: index == 1 ? AppColors.primary : AppColors.blackLv6,
          ),
        ),
      ),

      // =======================
      AppInkContainer(
        padding: const EdgeInsets.all(0),
        borderRadius: BorderRadius.circular(100),
        onTap: onTapButtonCenter,
        child: Container(
          margin: EdgeInsets.all(AppSizes.padding / 2),
          decoration: BoxDecoration(
            color: iconCenterBackgroundColor ?? AppColors.primary,
            shape: BoxShape.circle,
          ),
          child: AppIconButton(
            padding: EdgeInsets.only(top: AppSizes.padding / 1.5),
            paddingText: const EdgeInsets.only(top: 2),
            icon: Icon(
              size: 20,
              iconCenter,
              color: textCenterColor != null
                  ? textCenterColor
                  : index == 2
                      ? AppColors.primary
                      : AppColors.blackLv6,
            ),
            text: textCenter,
            onTap: onTapButtonCenter,
            buttonColor: Colors.transparent,
            textStyle: AppTextStyle.medium(
              size: 10,
              color: textCenterColor != null
                  ? textCenterColor
                  : index == 2
                      ? AppColors.primary
                      : AppColors.blackLv6,
            ),
          ),
        ),
      ),

      // ==========================
      AppInkContainer(
        padding: const EdgeInsets.all(0),
        borderRadius: BorderRadius.circular(100),
        onTap: onTapButtonRightIn,
        child: AppIconButton(
          padding: EdgeInsets.only(top: AppSizes.padding / 1.5),
          paddingText: const EdgeInsets.only(top: 2),
          icon: Icon(
            iconRightIn,
            color: index == 3 ? AppColors.primary : AppColors.blackLv6,
            size: 20,
          ),
          text: textRightIn,
          onTap: onTapButtonRightIn,
          buttonColor: AppColors.transparent,
          textStyle: AppTextStyle.medium(
            size: 10,
            color: index == 3 ? AppColors.primary : AppColors.blackLv6,
          ),
        ),
      ),

      AppInkContainer(
        padding: const EdgeInsets.all(0),
        borderRadius: BorderRadius.circular(100),
        onTap: onTapButtonRightOut,
        child: AppIconButton(
          padding: EdgeInsets.only(top: AppSizes.padding / 1.5),
          paddingText: const EdgeInsets.only(top: 2),
          icon: Icon(
            iconRightOut,
            color: index == 4 ? AppColors.primary : AppColors.blackLv6,
            size: 20,
          ),
          text: textRightOut,
          onTap: onTapButtonRightOut,
          buttonColor: AppColors.transparent,
          textStyle: AppTextStyle.medium(
            size: 10,
            color: index == 4 ? AppColors.primary : AppColors.blackLv6,
          ),
        ),
      )
    ];

    return AppCardContainer(
      boxShadow: boxShadow ?? [],
      backgroundColor: AppColors.white,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
        bottomLeft: Radius.circular(0),
        bottomRight: Radius.circular(0),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.padding,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: height ?? 70,
                  width: MediaQuery.of(context).size.width - AppSizes.padding * 2,
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                    ),
                    itemBuilder: (_, index) => Container(
                      padding: index != 2 ? EdgeInsets.only(top: gapTopButtonCenter ?? AppSizes.padding / 3) : const EdgeInsets.all(0),
                      child: listButton[index],
                    ),
                    itemCount: 5,
                  )),
            ],
          ),
          SizedBox(height: AppSizes.padding / 1.5),
          AppDivider(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.padding * 8),
            thickness: 4,
            color: AppColors.blackLv7,
          ),
          SizedBox(height: AppSizes.padding / 2),
        ],
      ),
    );
  }
}
