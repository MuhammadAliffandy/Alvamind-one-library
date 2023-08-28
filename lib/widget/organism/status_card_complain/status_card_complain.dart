import 'package:alvamind_library/app/theme/app_sizes.dart';
import 'package:alvamind_library/app/theme/app_text_style.dart';
import 'package:alvamind_library/widget/molecule/app_icon_button.dart';
import 'package:alvamind_library/widget/molecule/app_tags.dart';
import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../molecule/app_ink_container.dart';

import '../../molecule/app_progress_line.dart';

class StatusCardComplain extends StatelessWidget {
  final String tagStatus;
  final double countStatus;
  final void Function() onTapChevronButton;
  final void Function() onTapCard;

  const StatusCardComplain({
    Key? key,
    required this.countStatus,
    required this.onTapChevronButton,
    required this.onTapCard,
    required this.tagStatus,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppInkContainer(
      onTap: onTapCard,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Status Komplain',
                style: AppTextStyle.bold(size: 18),
              ),
              Row(
                children: [
                  AppTags(
                    text: tagStatus,
                    borderWidth: 1,
                    borderColor: AppColors.primary,
                    color: AppColors.transparent,
                    textColor: AppColors.primary,
                  ),
                  SizedBox(
                    width: AppSizes.padding / 4,
                  ),
                  AppIconButton(
                      padding: EdgeInsets.all(AppSizes.padding / 6),
                      buttonColor: AppColors.transparent,
                      icon: Icon(
                        Icons.chevron_right,
                      ),
                      onTap: onTapChevronButton)
                ],
              ),
            ],
          ),
          SizedBox(
            height: AppSizes.padding,
          ),
          AppProgressLine(
            value: countStatus,
            maxValue: 100,
            label: 'Progress',
          ),
        ],
      ),
    );
  }
}
