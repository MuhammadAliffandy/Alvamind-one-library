import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../molecule/app_expansion_list_tile.dart';
import '../accordion/accordion_question_card.dart';

class TermsConditionList extends StatelessWidget {
  final List<String>? title;
  final List<String>? subtitle;
  final bool? isDisabled;
  final bool? withHeadTitle;
  final double? gap;
  final Color? backgroundColor;
  final List<Color>? titleColor;
  final List<Color>? subtitleColor;
  final double? titleSize;
  final double? subtitleSize;

  const TermsConditionList({
    super.key,
    this.title,
    this.subtitle,
    this.isDisabled,
    this.withHeadTitle = false,
    this.backgroundColor,
    this.gap,
    this.subtitleColor,
    this.subtitleSize,
    this.titleColor,
    this.titleSize,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        withHeadTitle == false
            ? const SizedBox.shrink()
            : Text(
                'Terms Condition List',
                style: AppTextStyle.bold(
                  size: 32,
                  color: AppColors.black,
                ),
              ),
        withHeadTitle == false
            ? const SizedBox.shrink()
            : SizedBox(
                height: AppSizes.padding,
              ),
        ...List.generate(4, (i) {
          return Padding(
            padding: i == 4 ? const EdgeInsets.all(0) : EdgeInsets.only(bottom: gap ?? AppSizes.padding),
            child: AppExpansionListTile(
              isDisabled: isDisabled,
              title: title?[i] ?? '${i + 1} . Lorem ipsum dolor sit amet ',
              titleColor: titleColor?[i] ?? AppColors.black,
              expand: true,
              backgroundColor: backgroundColor ?? AppColors.white,
              children: [
                QuestionText(
                  text: subtitle?[i] ?? 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua  sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  color: subtitleColor?[i] ?? AppColors.black,
                  padding: EdgeInsets.all(AppSizes.padding / 10),
                  backgroundColor: AppColors.transparent,
                )
              ],
            ),
          );
        })
      ],
    );
  }
}
