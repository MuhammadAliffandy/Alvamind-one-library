import 'package:alvamind_library/view/samples/sample_wrapper.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';
import 'package:flutter/material.dart';

import '../../widget/organism/bar_chart/bar_chart.dart';
import '../../widget/organism/bar_chart/bar_chart_group_data.dart';
import '../../widget/organism/bar_chart/chart.dart';
import '../../widget/organism/tags_organism.dart/tags_organism.dart';

class BarChartSamplesView extends StatefulWidget {
  const BarChartSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-bar-chart-samples';

  @override
  State<BarChartSamplesView> createState() => _BarChartSamplesViewState();
}

class _BarChartSamplesViewState extends State<BarChartSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bar Chart Samples')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            barChartOmzet(),
            barChartLaba(),
          ],
        ),
      ),
    );
  }

  int tagSelected = 0;
  int tagSelected2 = 0;

  Widget barChartOmzet() {
    return SampleWrapper(
      title: 'Bar Chart Omzet',
      widget: BarChart(
          textTypeChart: 'Omzet',
          textDateRange: '1 Jan 2023 - 31 Juli 2023',
          countTotal: 'Rp. 687.375.337',
          countTransaction: '1000',
          onTapItem: (value) {},
          tagBar: TagsOrganism(
            listChips: const [
              'Drop Service',
              'Self Service',
              'Delivery',
              'Home Service',
            ],
            selected: -1,
            onTap: (value) {
              // TODO
              setState(() {
                tagSelected = value;
              });
            },
          ),
          barChart: tagSelected == 0
              ? Chart(
                  listValueChart: [
                    generateGroupDataOmzet(0, 1, 2, 2, 2),
                    generateGroupDataOmzet(1, 2, 1, 1.2, 2),
                    generateGroupDataOmzet(2, 1, 2, 1.2, 2),
                    generateGroupDataOmzet(3, 2, 2, 1.1, 2),
                    generateGroupDataOmzet(4, 2, 1, 1.4, 2),
                    generateGroupDataOmzet(5, 2, 2, 1.4, 2),
                  ],
                )
              : tagSelected == 1
                  ? Chart(
                      listValueChart: [
                        generateGroupDataOmzet(0, 1, 2, 2, 2),
                        generateGroupDataOmzet(1, 2, 1, 1.2, 2),
                        generateGroupDataOmzet(2, 2, 2, 1.4, 2),
                        generateGroupDataOmzet(3, 1, 2, 1.2, 2),
                        generateGroupDataOmzet(4, 2, 1, 1.4, 2),
                        generateGroupDataOmzet(5, 2, 2, 1.1, 2),
                      ],
                    )
                  : tagSelected == 2
                      ? Chart(
                          listValueChart: [
                            generateGroupDataOmzet(0, 2, 1, 1.2, 2),
                            generateGroupDataOmzet(1, 1, 2, 2, 2),
                            generateGroupDataOmzet(2, 2, 2, 1.1, 2),
                            generateGroupDataOmzet(3, 2, 2, 1.4, 2),
                            generateGroupDataOmzet(4, 1, 2, 1.2, 2),
                            generateGroupDataOmzet(5, 2, 1, 1.4, 2),
                          ],
                        )
                      : Chart(
                          listValueChart: [
                            generateGroupDataOmzet(0, 2, 1, 1.2, 2),
                            generateGroupDataOmzet(1, 2, 1, 1.4, 2),
                            generateGroupDataOmzet(2, 1, 2, 1.2, 2),
                            generateGroupDataOmzet(3, 1, 2, 2, 2),
                            generateGroupDataOmzet(4, 2, 2, 1.1, 2),
                            generateGroupDataOmzet(5, 2, 2, 1.4, 2),
                          ],
                        )),
    );
  }

  Widget barChartLaba() {
    return SampleWrapper(
      title: 'Bar Chart Laba',
      widget: BarChart(
        textTypeChart: 'Laba Rugi',
        textDateRange: '1 Jan 2023 - 31 Juli 2023',
        countTotal: '- Rp687.375.337',
        countTotalColor: AppColors.redLv1,
        countTransaction: '1000',
        onTapItem: (value) {},
        tagBar: TagsOrganism(
          listChips: const [
            'Pemasukan',
            'Pengeluaran',
          ],
          onTap: (value) {
            // TODO
            setState(() {
              tagSelected2 = value;
            });
          },
        ),
        barChart: tagSelected2 == 0
            ? Chart(
                listValueChart: [
                  generateGroupDataProfit(0, 4, 5),
                  generateGroupDataProfit(1, 4, 2),
                  generateGroupDataProfit(4, 2, 2),
                  generateGroupDataProfit(2, 2, 1),
                  generateGroupDataProfit(3, 1, 2),
                  generateGroupDataProfit(5, 2, 1),
                ],
              )
            : Chart(
                listValueChart: [
                  generateGroupDataProfit(0, 4, 5),
                  generateGroupDataProfit(1, 1, 2),
                  generateGroupDataProfit(2, 2, 1),
                  generateGroupDataProfit(3, 2, 2),
                  generateGroupDataProfit(4, 2, 2),
                  generateGroupDataProfit(5, 2, 1),
                ],
              ),
      ),
    );
  }
}
