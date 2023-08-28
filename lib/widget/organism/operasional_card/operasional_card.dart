import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../molecule/app_Toggle.dart';
import '../../molecule/app_card_container.dart';
import '../../molecule/app_chips.dart';

// ignore: must_be_immutable
class OperasionalCard extends StatefulWidget {
  final String? title;
  final String? dayTitle;
  final String? time;
  final String? text;
  bool? isDisabled;
  final bool? isCustom;
  final bool? withSubtitle;
  final void Function()? chipCloseButton;
  final dynamic Function(bool) onChanged;

  OperasionalCard({
    super.key,
    this.isDisabled,
    this.dayTitle,
    this.text,
    this.time,
    this.chipCloseButton,
    this.isCustom,
    this.title,
    this.withSubtitle = true,
    required this.onChanged,
  });

  @override
  State<OperasionalCard> createState() => _OperasionalCardState();
}

class _OperasionalCardState extends State<OperasionalCard> {
  bool value1 = true;
  bool value2 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppCardContainer(
          padding: EdgeInsets.all(AppSizes.padding * 1.2),
          boxShadow: const [
            BoxShadow(
              color: AppColors.blackLv7,
              offset: Offset(0, 4),
              blurRadius: 60,
              spreadRadius: 0,
            ),
          ],
          child: Column(
            children: [
              widget.isCustom == true
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.title ?? '',
                          style: AppTextStyle.bold(size: 20),
                        ),
                        AppToggle(
                          value: widget.isDisabled == true ? false : value1,
                          onChanged: (val) {
                            value1 = val;
                            setState(() {
                              value1 == false ? widget.isDisabled = true : widget.isDisabled = false;
                            });
                            widget.onChanged(val);
                          },
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            AppToggle(
                              value: widget.isDisabled == true ? false : value1,
                              onChanged: (val) {
                                value1 = val;
                                setState(() {
                                  value1 == false ? widget.isDisabled = true : widget.isDisabled = false;
                                });
                                widget.onChanged(val);
                              },
                            ),
                            SizedBox(
                              width: AppSizes.padding / 2,
                            ),
                            Text(
                              widget.dayTitle ?? '',
                              style: AppTextStyle.bold(size: 20),
                            )
                          ],
                        ),
                        widget.isDisabled == true
                            ? AppChips(
                                text: 'Tutup',
                                fontSize: 14,
                                textStyle: AppTextStyle.bold(
                                  size: 14,
                                  color: AppColors.blackLv3,
                                ),
                                selectedColor: AppColors.blackLv6,
                                leftIcon: Icons.login_rounded,
                                unselectedColor: AppColors.blackLv3,
                                borderWidth: 0,
                                padding: EdgeInsets.symmetric(
                                  vertical: AppSizes.padding / 2,
                                  horizontal: AppSizes.padding,
                                ),
                                onTap: widget.chipCloseButton ?? () {},
                                isSelected: true,
                              )
                            : Row(
                                children: [
                                  Text(
                                    widget.time ?? '',
                                    style: AppTextStyle.medium(size: 16),
                                  ),
                                  SizedBox(
                                    width: AppSizes.padding / 2,
                                  ),
                                  AppToggle(
                                    value: value1,
                                    onChanged: (val) {
                                      value1 = val;
                                      setState(() {
                                        widget.isDisabled == false ? widget.isDisabled = false : widget.isDisabled = true;
                                      });
                                    },
                                  ),
                                ],
                              ),
                      ],
                    ),
              widget.isDisabled == true || widget.withSubtitle == false
                  ? const SizedBox.shrink()
                  : SizedBox(
                      height: AppSizes.padding,
                    ),
              widget.isDisabled == true || widget.withSubtitle == false
                  ? const SizedBox.shrink()
                  : Text(
                      widget.text ?? 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                      style: AppTextStyle.medium(size: 14),
                    )
            ],
          ),
        )
      ],
    );
  }
}
