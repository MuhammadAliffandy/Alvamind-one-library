import 'package:alvamind_library/widget/molecule/app_card_container.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';

class Chart extends StatelessWidget {
  final List<BarChartGroupData> listValueChart;

  const Chart({
    super.key,
    required this.listValueChart,
  });

  Widget leftTitles(double value, TitleMeta meta) {
    const style = TextStyle(fontSize: 10);
    String text;
    switch (value.toInt()) {
      case 0:
        text = '0';
        break;
      case 2:
        text = '2.5K';
        break;
      case 4:
        text = '5K';
        break;
      case 6:
        text = '7.5K';
        break;
      case 8:
        text = '10K';
        break;
      default:
        text = '';
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(text, style: style),
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(fontSize: 10);
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'JAN';
        break;
      case 1:
        text = 'FEB';
        break;
      case 2:
        text = 'MAR';
        break;
      case 3:
        text = 'APR';
        break;
      case 4:
        text = 'MAY';
        break;
      case 5:
        text = 'JUN';
        break;
      case 6:
        text = 'JUL';
        break;
      default:
        text = '';
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(text, style: style),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppCardContainer(
      padding: const EdgeInsets.all(0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1.2,
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceBetween,
                titlesData: FlTitlesData(
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: leftTitles,
                      reservedSize: 30,
                    ),
                  ),
                  rightTitles: const AxisTitles(),
                  topTitles: const AxisTitles(),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: bottomTitles,
                      reservedSize: 20,
                    ),
                  ),
                ),
                barTouchData: BarTouchData(
                    enabled: true,
                    touchTooltipData: BarTouchTooltipData(
                        tooltipBgColor: AppColors.white,
                        tooltipRoundedRadius: 10,
                        tooltipBorder: const BorderSide(
                          width: 1,
                          color: AppColors.primary,
                        ))),
                borderData: FlBorderData(show: false),
                gridData: const FlGridData(show: false),
                barGroups: listValueChart,
                extraLinesData: ExtraLinesData(
                  extraLinesOnTop: false,
                  horizontalLines: [
                    ...List.generate(5, (i) {
                      return HorizontalLine(
                        y: i == 1
                            ? 2
                            : i == 2
                                ? 4
                                : i == 3
                                    ? 6
                                    : i == 4
                                        ? 8
                                        : 0,
                        color: AppColors.blackLv7,
                        strokeWidth: 1,
                        dashArray: [
                          20,
                          4
                        ],
                      );
                    })
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
