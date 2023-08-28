import 'package:flutter/material.dart';

import '../../../app/asset/app_assets.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../atom/app_image.dart';
import '../../molecule/app_button.dart';
import '../../molecule/app_card_container.dart';
import '../../molecule/app_icon_button.dart';

class UserProfileCard extends StatelessWidget {
  final String? nameUser;
  final String? idUser;
  final String? countBalance;
  final String? employeePlace;
  final String? employeeJob;
  final String? image;

  final bool? onlyEmployee;
  final bool? onlyBalance;
  final bool? onlyUser;
  final bool? onlySaldo;

  final void Function()? onTapCopyButton;
  final void Function()? onTapHistoryButton;
  final void Function()? onTapTopUpButton;
  final void Function()? onTapWithDrawButton;
  final void Function()? onTapPayButton;
  final void Function()? onTapDetailButton;

  const UserProfileCard({
    super.key,
    this.countBalance,
    this.onTapCopyButton,
    this.onTapHistoryButton,
    this.onTapPayButton,
    this.onTapTopUpButton,
    this.onTapWithDrawButton,
    this.onTapDetailButton,
    this.idUser,
    this.image,
    this.nameUser,
    this.employeeJob,
    this.employeePlace,
    this.onlySaldo = false,
    this.onlyBalance = false,
    this.onlyEmployee = false,
    this.onlyUser = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AppCardContainer(
          padding: EdgeInsets.all(AppSizes.padding * 2),
          borderRadius: BorderRadius.circular(40),
          backgroundColor: AppColors.blueLv1,
          gradient: const LinearGradient(colors: [
            AppColors.blueLv2,
            AppColors.blueLv1,
          ]),
          child: content(),
        ),
        Positioned(
          top: 75,
          left: 200,
          child: Opacity(
            opacity: 0.5,
            child: Image.asset(
              AppAssets.cubeImage,
              width: 100,
              height: 100,
            ),
          ),
        ),
        Positioned(
          top: 247,
          left: 223,
          child: Opacity(
            opacity: 0.5,
            child: Image.asset(
              AppAssets.cubeImage,
              width: 100,
              height: 100,
            ),
          ),
        ),
        Positioned(
          top: 38,
          right: 242,
          child: Opacity(
            opacity: 0.5,
            child: Image.asset(
              AppAssets.cubeImage,
              width: 250,
              height: 282,
            ),
          ),
        ),
        Positioned(
          left: 232,
          bottom: 86,
          child: Opacity(
            opacity: 0.5,
            child: Image.asset(
              AppAssets.cubeImage,
              width: 250,
              height: 282,
            ),
          ),
        ),
      ],
    );
  }

  Widget content() {
    return Column(
      children: [
        onlyBalance == true ? const SizedBox.shrink() : userContent(),
        //
        onlyBalance == true || onlyUser == true ? const SizedBox.shrink() : SizedBox(height: AppSizes.padding),
        onlyUser == true ? const SizedBox.shrink() : balanceContent(),
        //
        onlyEmployee == false ? const SizedBox.shrink() : SizedBox(height: AppSizes.padding),
        onlyEmployee == false ? const SizedBox.shrink() : employeeContent(),
      ],
    );
  }

  Widget userContent() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nameUser ?? '',
                  style: AppTextStyle.bold(
                    size: 20,
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      idUser ?? '',
                      style: AppTextStyle.medium(
                        size: 14,
                        color: Colors.white,
                      ),
                    ),
                    AppIconButton(
                        icon: const Icon(
                          CustomIcon.copyIcon,
                          size: 16,
                          color: Colors.white,
                        ),
                        buttonColor: AppColors.transparent,
                        onTap: onTapCopyButton ?? () {})
                  ],
                ),
              ],
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(image ?? randomImage),
              maxRadius: 25,
            )
          ],
        ),
      ],
    );
  }

  Widget balanceContent() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: onlySaldo == true ? MainAxisAlignment.center : MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Saldo Platform Wallet Anda',
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.fade,
                  style: AppTextStyle.medium(
                    size: 14,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: AppSizes.padding / 3,
                ),
                Text(
                  countBalance ?? '',
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.fade,
                  style: AppTextStyle.bold(
                    size: 32,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            onlySaldo == true
                ? const SizedBox.shrink()
                : AppButton(
                    text: 'Riwayat',
                    fontSize: 10,
                    borderColor: Colors.white,
                    borderWidth: 1,
                    padding: EdgeInsets.symmetric(horizontal: AppSizes.padding / 1.5, vertical: AppSizes.padding / 3),
                    onTap: onTapHistoryButton ?? () {},
                  )
          ],
        ),
        onlySaldo == true
            ? const SizedBox.shrink()
            : SizedBox(
                height: AppSizes.padding,
              ),
        onlySaldo == true
            ? const SizedBox.shrink()
            : AppCardContainer(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AppIconButton(
                      icon: const Icon(
                        Icons.add_box_rounded,
                        color: AppColors.primary,
                      ),
                      onTap: onTapTopUpButton ?? () {},
                      buttonColor: AppColors.blueLv4,
                      textStyle: AppTextStyle.bold(size: 14, color: AppColors.primary),
                      text: 'Top Up',
                    ),
                    AppIconButton(
                      icon: const Icon(
                        CustomIcon.withdrawBoldIcon,
                        color: AppColors.primary,
                      ),
                      onTap: onTapWithDrawButton ?? () {},
                      buttonColor: AppColors.blueLv4,
                      text: 'Withdrawal',
                      textStyle: AppTextStyle.bold(size: 14, color: AppColors.primary),
                    ),
                    AppIconButton(
                      icon: const Icon(
                        CustomIcon.scanIcon,
                        color: AppColors.primary,
                      ),
                      onTap: onTapPayButton ?? () {},
                      textStyle: AppTextStyle.bold(size: 14, color: AppColors.primary),
                      buttonColor: AppColors.blueLv4,
                      text: 'Bayar',
                    ),
                  ],
                ),
              )
      ],
    );
  }

  Widget employeeContent() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              employeePlace ?? '',
              softWrap: true,
              maxLines: 2,
              overflow: TextOverflow.fade,
              style: AppTextStyle.medium(
                size: 14,
                color: Colors.white,
              ),
            ),
            Row(
              children: [
                Text(
                  employeeJob ?? '',
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.fade,
                  style: AppTextStyle.bold(
                    size: 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
        AppButton(
          text: 'Detail',
          fontSize: 10,
          borderColor: Colors.white,
          borderWidth: 1,
          padding: EdgeInsets.symmetric(horizontal: AppSizes.padding / 1.5, vertical: AppSizes.padding / 3),
          onTap: onTapDetailButton ?? () {},
        )
      ],
    );
  }
}
