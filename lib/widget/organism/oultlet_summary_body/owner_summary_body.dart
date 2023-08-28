import 'package:alvamind_library/app/theme/app_sizes.dart';

import 'package:flutter/material.dart';

import '../../../app/asset/app_assets.dart';
import '../../../app/theme/app_colors.dart';
import '../../atom/app_statistic_square.dart';

class OwnerSummaryBody extends StatefulWidget {
  final int countMachine;
  final int countEmployees;
  final int countConsument;
  final int countTransaction;
  final Widget barChart;
  final Widget statusComplainWidget;
  final Widget deleteButton;
  final double? height;

  const OwnerSummaryBody({
    required this.barChart,
    required this.deleteButton,
    required this.statusComplainWidget,
    required this.countConsument,
    required this.countEmployees,
    required this.countMachine,
    required this.countTransaction,
    this.height,
  });

  @override
  State<OwnerSummaryBody> createState() => _OwnerSummaryBodyState();
}

int tagSelected = 0;
int tagSelected2 = 0;

class _OwnerSummaryBodyState extends State<OwnerSummaryBody> {
  @override
  Widget build(BuildContext context) {
    List<Widget> listStatistic = [
      AppStatisticSquare(
        title: 'MESIN CUCI',
        subTitle: 'mesin',
        data: widget.countMachine.toString(),
        colors: const [
          AppColors.blueLv2,
          AppColors.blueLv1
        ],
        icon: CustomIcon.speakerIcon,
        iconColor: AppColors.primary,
        borderRadiusCircle: 18,
        padding: const EdgeInsets.all(20),
      ),
      AppStatisticSquare(
        title: 'KARYAWAN',
        subTitle: 'orang',
        data: widget.countEmployees.toString(),
        colors: const [
          Color(0XFFFB9400),
          AppColors.orangeLv1,
        ],
        icon: Icons.person,
        iconColor: AppColors.primary,
        borderRadiusCircle: 18,
        padding: const EdgeInsets.all(20),
      ),
      AppStatisticSquare(
        title: 'KONSUMEN',
        subTitle: 'orang',
        data: widget.countConsument.toString(),
        colors: const [
          AppColors.greenLv2,
          AppColors.greenLv1
        ],
        icon: CustomIcon.threeUserBoldIcon,
        iconColor: AppColors.primary,
        borderRadiusCircle: 18,
        padding: const EdgeInsets.all(20),
      ),
      AppStatisticSquare(
        title: 'TRASANKSI',
        subTitle: 'order',
        data: widget.countTransaction.toString(),
        colors: const [
          AppColors.redLv2,
          AppColors.redLv1
        ],
        icon: CustomIcon.documentBoldIcon,
        iconColor: AppColors.primary,
        borderRadiusCircle: 15,
        padding: const EdgeInsets.all(20),
      ),
    ];
    // TODO: implement build
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (_, index) => Container(
            margin: EdgeInsets.all(AppSizes.padding / 2),
            child: listStatistic[index],
          ),
          itemCount: 4,
          shrinkWrap: true,
        ),
        SizedBox(height: AppSizes.padding),
        widget.barChart,
        SizedBox(height: AppSizes.padding),
        widget.statusComplainWidget,
        SizedBox(height: AppSizes.padding),
        widget.deleteButton,
      ],
    );
  }
}
