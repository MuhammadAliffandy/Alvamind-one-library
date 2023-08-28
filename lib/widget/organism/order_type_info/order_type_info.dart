import 'package:flutter/material.dart';

import '../../../app/asset/app_assets.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../molecule/app_icon_button.dart';

class OrderTypeInfo extends StatelessWidget {
  final String? countMachine;
  final String? countCustomers;
  final String? countEmployees;
  final double? fontSize;
  final double? iconSize;
  final double? backgroundSize;
  final bool? withOrder;
  final bool? onlyOrder;
  final bool? isCustomer;
  final void Function()? deliveryButton;
  final void Function()? dropButton;
  final void Function()? selfButton;
  const OrderTypeInfo({
    super.key,
    this.countCustomers,
    this.countEmployees,
    this.countMachine,
    this.withOrder = true,
    this.deliveryButton,
    this.dropButton,
    this.selfButton,
    this.backgroundSize,
    this.fontSize,
    this.iconSize,
    this.onlyOrder = false,
    this.isCustomer = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        withOrder == true
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  appRightIcon(
                    CustomIcon.truckFastIcon,
                    'Delivery',
                    deliveryButton ?? () {},
                  ),
                  appRightIcon(
                    CustomIcon.boxIcon,
                    'Drop',
                    dropButton ?? () {},
                  ),
                  appRightIcon(
                    CustomIcon.scanIcon,
                    'Self Service',
                    selfButton ?? () {},
                  ),
                ],
              )
            : const SizedBox.shrink(),
        withOrder == true
            ? SizedBox(
                height: AppSizes.padding / 2,
              )
            : const SizedBox.shrink(),
        onlyOrder == true
            ? const SizedBox.shrink()
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  detailInfo(countMachine ?? '', isCustomer == true ? 'Transaksi' : 'Mesin aktif'),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 12,
                    ),
                    height: 18,
                    width: 1,
                    color: AppColors.blackLv4,
                  ),
                  detailInfo(countCustomers ?? '', isCustomer == true ? 'Ulasan' : 'Konsumen'),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 12,
                    ),
                    height: 18,
                    width: 1,
                    color: AppColors.blackLv4,
                  ),
                  detailInfo(countEmployees ?? '', isCustomer == true ? 'Komplain' : 'Karyawan'),
                ],
              ),
      ],
    );
  }

  Widget detailInfo(
    String title,
    String subtitle,
  ) {
    return Column(
      children: [
        Text(
          title,
          softWrap: true,
          maxLines: 3,
          overflow: TextOverflow.fade,
          textAlign: TextAlign.center,
          style: AppTextStyle.bold(size: 18),
        ),
        SizedBox(
          height: AppSizes.padding / 2,
        ),
        Row(
          children: [
            isCustomer == true
                ? const SizedBox.shrink()
                : const Icon(
                    Icons.circle,
                    size: 10,
                    color: AppColors.blackLv6,
                  ),
            isCustomer == true
                ? const SizedBox.shrink()
                : SizedBox(
                    width: AppSizes.padding / 4,
                  ),
            Text(
              subtitle,
              softWrap: true,
              maxLines: 3,
              overflow: TextOverflow.fade,
              textAlign: TextAlign.center,
              style: AppTextStyle.medium(
                size: 12,
                color: AppColors.blackLv4,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget appRightIcon(
    IconData icon,
    String text,
    void Function() onTapButton,
  ) {
    return Row(
      children: [
        AppIconButton(
          icon: Icon(
            icon,
            color: AppColors.primary,
            size: iconSize ?? 16,
          ),
          buttonColor: AppColors.blueLv5,
          width: backgroundSize ?? 40,
          height: backgroundSize ?? 40,
          onTap: onTapButton,
        ),
        SizedBox(
          width: AppSizes.padding / 2,
        ),
        Text(
          text,
          softWrap: true,
          maxLines: 3,
          overflow: TextOverflow.fade,
          style: AppTextStyle.bold(
            size: fontSize ?? 14,
          ),
        )
      ],
    );
  }
}
