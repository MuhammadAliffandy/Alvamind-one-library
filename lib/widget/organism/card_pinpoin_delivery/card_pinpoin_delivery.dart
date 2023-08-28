import 'package:flutter/material.dart';

import '../../../app/asset/app_assets.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../atom/app_divider.dart';
import '../../molecule/app_button.dart';
import '../../molecule/app_card_container.dart';
import '../../molecule/app_text_field.dart';

class CardPinPoinDelivery extends StatelessWidget {
  final Widget? orderList;
  final Widget? courierDetail;
  final Widget? deliverAddress;
  final String? locationUser;
  final String? countLocationUser;

  final void Function()? functionEditButton;
  final void Function(String)? onChanged;

  const CardPinPoinDelivery({
    super.key,
    this.orderList,
    this.courierDetail,
    this.deliverAddress,
    this.countLocationUser,
    this.locationUser,
    this.onChanged,
    this.functionEditButton,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppCardContainer(
            boxShadow: const [
              BoxShadow(
                color: AppColors.blackLv7,
                offset: Offset(0, 4),
                blurRadius: 60,
                spreadRadius: 0,
              ),
            ],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                widgetAddress(
                  countLocationUser ?? 'Lokasi anda ( dalam 10 km )',
                  locationUser ?? 'Margahayu, Bandung',
                ),
                AppButton(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.padding / 1.5,
                    vertical: AppSizes.padding / 2,
                  ),
                  fontSize: 14,
                  leftIcon: CustomIcon.editPenIcon,
                  text: 'Ubah',
                  onTap: functionEditButton ?? () {},
                )
              ],
            )),
        SizedBox(height: AppSizes.padding),
        AppCardContainer(
          boxShadow: const [
            BoxShadow(
              color: AppColors.blackLv7,
              offset: Offset(0, 4),
              blurRadius: 60,
              spreadRadius: 0,
            ),
          ],
          child: AddressCard(
            countLocationUser: countLocationUser ?? 'Lokasi anda ( dalam 10 km )',
            locationUser: locationUser ?? 'Margahayu, Bandung',
            onChanged: onChanged ?? (String) {},
          ),
        ),
        SizedBox(height: AppSizes.padding),
        AppCardContainer(
          backgroundColor: AppColors.transparent,
          child: Column(
            children: [
              courierDetail ?? const SizedBox.shrink(),
            ],
          ),
        ),
        SizedBox(height: AppSizes.padding),
        AppCardContainer(
          padding: EdgeInsetsDirectional.symmetric(
            vertical: 0,
            horizontal: AppSizes.padding,
          ),
          backgroundColor: AppColors.transparent,
          child: Column(
            children: [
              deliverAddress ?? const SizedBox.shrink(),
              const AppDivider(
                thickness: 2,
                color: AppColors.blackLv7,
              ),
            ],
          ),
        ),
        orderList ?? const SizedBox.shrink(),
      ],
    );
  }
}

class AddressCard extends StatelessWidget {
  final String? locationUser;
  final String? countLocationUser;
  final void Function(String)? onChanged;

  const AddressCard({
    super.key,
    this.countLocationUser,
    this.locationUser,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        widgetAddress(
          countLocationUser ?? 'Lokasi anda ( dalam 10 km )',
          locationUser ?? 'Margahayu, Bandung',
        ),
        SizedBox(height: AppSizes.padding),
        AppTextField(
          hintText: 'Cari Alamat...',
          prefixIcon: Icons.search,
          onChanged: onChanged ??
              (text) {
                // TODO
              },
        ),
      ],
    );
  }
}

Widget widgetAddress(String titleAddress, String subtitleAddress) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          const Icon(
            Icons.location_pin,
            size: 14,
            color: AppColors.primary,
          ),
          SizedBox(
            width: AppSizes.padding / 2,
          ),
          Text(
            titleAddress,
            style: AppTextStyle.regular(
              size: 14,
            ),
          ),
        ],
      ),
      SizedBox(
        height: AppSizes.padding / 4,
      ),
      Text(
        subtitleAddress,
        style: AppTextStyle.bold(
          size: 16,
        ),
      ),
    ],
  );
}
