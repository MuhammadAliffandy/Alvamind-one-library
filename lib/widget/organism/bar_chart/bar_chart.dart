import 'package:alvamind_library/app/asset/app_assets.dart';
import 'package:alvamind_library/widget/molecule/app_card_container.dart';
import 'package:flutter/material.dart';
import 'package:alvamind_library/app/theme/app_text_style.dart';
import 'package:alvamind_library/widget/molecule/app_icon_button.dart';
import 'package:alvamind_library/widget/molecule/app_long_card.dart';

import '../../../app/const/countries.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../model/country_model.dart';
import '../../../model/drop_down_model.dart';

import '../../molecule/app_drop_down.dart';

class BarChart extends StatelessWidget {
  final String textTypeChart;
  final String? textDateRange;
  final String? countTotal;
  final Color? countTotalColor;
  final String? countTransaction;
  final Widget tagBar;
  final Widget barChart;
  final dynamic Function(dynamic) onTapItem;

  const BarChart({
    super.key,
    required this.textTypeChart,
    required this.barChart,
    required this.tagBar,
    this.countTotal,
    this.countTransaction,
    this.textDateRange,
    this.countTotalColor,
    required this.onTapItem,
  });

  @override
  Widget build(BuildContext context) {
    CountryModel _country = countries.first;
    return AppCardContainer(
      boxShadow: [
        BoxShadow(
          color: AppColors.blackLv7.withOpacity(0.5),
          offset: Offset(0, 4),
          blurRadius: 60,
          spreadRadius: 0,
        ),
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppLongCard(
            padding: const EdgeInsets.all(0),
            children: [
              Expanded(
                child: Row(
                  children: [
                    AppIconButton(
                        buttonColor: AppColors.blueLv5,
                        icon: const Icon(
                          CustomIcon.chartBoldIcon,
                          color: AppColors.primary,
                        ),
                        onTap: () {}),
                    SizedBox(
                      width: AppSizes.padding / 1.5,
                    ),
                    Expanded(
                      child: Text(
                        textTypeChart,
                        softWrap: true,
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                        style: AppTextStyle.bold(size: 24),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 160,
                child: AppDropDown(
                  fillColor: AppColors.white,
                  iconsColor: AppColors.black,
                  onTapItem: (item) {
                    _country = countries.firstWhere((e) => e.countryCode == item.value);
                    onTapItem(_country);
                  },
                  hintText: '6 Bulan Terakhir',
                  hintStyle: AppTextStyle.bold(size: 14, color: AppColors.black),
                  borderColor: AppColors.black,
                  enabled: true,
                  selectedItem: _country.name,
                  items: List.generate(
                    countries.length,
                    (i) => DropDownModel(text: countries[i].name, value: countries[i].countryCode),
                  ),
                  itemsBuilder: (item) {
                    return Text(
                      item.text,
                      style: AppTextStyle.semibold(size: 12),
                    );
                  },
                ),
              )
            ],
          ),
          SizedBox(
            height: AppSizes.padding,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(textDateRange ?? '1 Jan 2023 - 31 Juli 2023', style: AppTextStyle.regular(size: 14, color: AppColors.blackLv4)),
              SizedBox(height: AppSizes.padding / 2),
              Text(countTotal ?? 'Rp 687.375.337', style: AppTextStyle.bold(size: 24, color: countTotalColor ?? AppColors.black)),
              SizedBox(height: AppSizes.padding / 2),
              Text('$countTransaction Transaksi', style: AppTextStyle.regular(size: 14, color: AppColors.blackLv4)),
            ],
          ),
          SizedBox(
            height: AppSizes.padding,
          ),
          tagBar,
          SizedBox(
            height: AppSizes.padding,
          ),
          barChart,
        ],
      ),
    );
  }
}
