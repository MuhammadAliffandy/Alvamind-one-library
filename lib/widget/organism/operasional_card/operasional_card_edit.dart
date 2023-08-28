// ignore_for_file: must_be_immutable

import 'package:alvamind_library/widget/atom/app_divider.dart';
import 'package:alvamind_library/widget/molecule/app_column_ink.dart';
import 'package:alvamind_library/widget/molecule/app_ink_container.dart';
import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../molecule/app_Toggle.dart';
import '../../molecule/app_chips.dart';
import '../../molecule/app_text_field.dart';

class OperasionalCardEdit extends StatefulWidget {
  final String? dayTitle;
  final String? time;
  final String? text;
  bool? isDisabled;
  final dynamic Function(bool) onChangedToggle;
  final void Function(String)? onChangedStart;
  final void Function(String)? onChangedEnd;
  final void Function()? onEditingCompleteStart;
  final void Function()? onEditingCompleteEnd;

  OperasionalCardEdit({
    super.key,
    this.dayTitle,
    this.text,
    this.time,
    this.isDisabled,
    this.onChangedEnd,
    this.onChangedStart,
    this.onEditingCompleteEnd,
    this.onEditingCompleteStart,
    required this.onChangedToggle,
  });

  @override
  State<OperasionalCardEdit> createState() => _OperasionalCardEditState();
}

class _OperasionalCardEditState extends State<OperasionalCardEdit> {
  bool value1 = true;
  bool isEdit = false;

  @override
  Widget build(BuildContext context) {
    return AppColumnInk(
      children: [
        AppInkContainer(
          onTap: () {
            setState(() {
              isEdit = !isEdit;
            });
          },
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
              Row(
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
                          widget.onChangedToggle(val);
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
                          onTap: () {},
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
                          ],
                        ),
                ],
              ),
              widget.isDisabled == true
                  ? const SizedBox.shrink()
                  : isEdit == false
                      ? const SizedBox.shrink()
                      : const AppDivider(
                          thickness: 2,
                          color: AppColors.blackLv8,
                        ),
              widget.isDisabled == true
                  ? const SizedBox.shrink()
                  : isEdit == false
                      ? const SizedBox.shrink()
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Mulai',
                                    style: AppTextStyle.bold(
                                      size: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: AppSizes.padding,
                                  ),
                                  AppTextField(
                                    hintText: 'Mulai...',
                                    suffixIcon: Icons.access_time,
                                    iconsColor: AppColors.black,
                                    onEditingComplete: widget.onEditingCompleteStart ?? () {},
                                    onChanged: widget.onChangedStart ?? (String) {},
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: AppSizes.padding,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Selesai',
                                    style: AppTextStyle.bold(
                                      size: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: AppSizes.padding,
                                  ),
                                  AppTextField(
                                    hintText: 'Selesai...',
                                    suffixIcon: Icons.access_time,
                                    iconsColor: AppColors.black,
                                    onEditingComplete: widget.onEditingCompleteEnd ?? () {},
                                    onChanged: widget.onChangedEnd ?? (String) {},
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
            ],
          ),
        )
      ],
    );
  }
}
