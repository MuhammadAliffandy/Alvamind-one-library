import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../molecule/app_icon_button.dart';

class StarChecked extends StatefulWidget {
  final dynamic Function(int) onTapStar;
  final double? iconSize;
  final Color? iconColor;

  const StarChecked({
    super.key,
    required this.onTapStar,
    this.iconSize,
    this.iconColor,
  });

  @override
  State<StarChecked> createState() => _StarCheckedState();
}

class _StarCheckedState extends State<StarChecked> {
  List<bool> isChecked = [
    ...List.generate(5, (index) {
      return false;
    })
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ...List.generate(5, (index) {
          return AppIconButton(
            icon: Icon(
              isChecked[index] == true ? Icons.star : Icons.star_border_outlined,
              color: widget.iconColor ?? AppColors.primary,
              size: widget.iconSize ?? 40,
            ),
            buttonColor: AppColors.transparent,
            padding: EdgeInsets.all(AppSizes.padding / 4),
            onTap: () {
              if (index >= -1) {
                index == 0 && isChecked[0] == true && isChecked[1] == false
                    ? isChecked = [
                        ...List.generate(5, (val) {
                          return false;
                        })
                      ]
                    : isChecked = [
                        ...List.generate(5, (val) {
                          return val <= index ? true : false;
                        })
                      ];
              }

              widget.onTapStar(isChecked.where((element) {
                return element == true;
              }).length);
              setState(() {});
            },
          );
        })
      ],
    );
  }
}
