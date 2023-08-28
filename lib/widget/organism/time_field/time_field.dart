import 'package:flutter/material.dart';

import '../../../app/asset/app_assets.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../molecule/app_card_container.dart';
import '../../molecule/app_chips.dart';
import '../../molecule/app_text_field.dart';

class TimeField extends StatefulWidget {
  final void Function(String)? onChangedStartCalendar;
  final void Function()? onEditingCompleteStartCalendar;
  final void Function(String)? onChangedEndCalendar;
  final void Function()? onEditingCompleteEndCalendar;
  final void Function(String)? onChangedStartTime;
  final void Function()? onEditingCompleteStartTime;
  final void Function(String)? onChangedEndTime;
  final void Function()? onEditingCompleteEndTime;
  final List<AppChips>? listTimeChips;
  final bool? showCalendarField;
  final bool? showTimeField;
  final EdgeInsets? padding;
  final EdgeInsets? paddingScroll;

  const TimeField({
    this.onChangedEndCalendar,
    this.onChangedStartCalendar,
    this.onEditingCompleteEndCalendar,
    this.onEditingCompleteStartCalendar,
    this.onChangedEndTime,
    this.onChangedStartTime,
    this.onEditingCompleteEndTime,
    this.onEditingCompleteStartTime,
    this.listTimeChips,
    this.showCalendarField = true,
    this.showTimeField = true,
    this.padding,
    this.paddingScroll,
  });

  @override
  State<TimeField> createState() => _TimeFieldState();
}

int chipsSelected = -1;

class _TimeFieldState extends State<TimeField> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppCardContainer(
      padding: EdgeInsets.all(0),
      child: Column(
        children: [
          widget.showCalendarField == false
              ? const SizedBox.shrink()
              : timeFieldChild(
                  CustomIcon.calendarIcon,
                  widget.onChangedStartCalendar ?? (String) {},
                  widget.onEditingCompleteStartCalendar ?? () {},
                  widget.onChangedStartCalendar ?? (String) {},
                  widget.onEditingCompleteEndCalendar ?? () {},
                ),
          widget.showCalendarField == false
              ? const SizedBox.shrink()
              : SizedBox(
                  height: AppSizes.padding,
                ),
          widget.showTimeField == false
              ? const SizedBox.shrink()
              : timeFieldChild(
                  Icons.access_time,
                  widget.onChangedStartTime ?? (String) {},
                  widget.onEditingCompleteStartTime ?? () {},
                  widget.onChangedStartTime ?? (String) {},
                  widget.onEditingCompleteEndTime ?? () {},
                ),
          SizedBox(
            height: AppSizes.padding,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: widget.padding ?? EdgeInsets.symmetric(horizontal: AppSizes.padding),
                child: Text(
                  'Waktu Mulai',
                  style: AppTextStyle.bold(
                    size: 20,
                  ),
                ),
              ),
              SizedBox(
                height: AppSizes.padding,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                padding: widget.paddingScroll ?? EdgeInsets.zero,
                child: Row(
                  children: [
                    ...List.generate(widget.listTimeChips?.length ?? 4, (index) {
                      return Padding(
                        padding: index == 3 ? EdgeInsets.all(0) : EdgeInsets.only(right: AppSizes.padding),
                        child: widget.listTimeChips?[index] ??
                            AppChips(
                                text: '${09 + index}:00 AM',
                                onTap: () {
                                  setState(() {
                                    chipsSelected = index;
                                  });
                                },
                                isSelected: chipsSelected == index ? true : false),
                      );
                    })
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget timeFieldChild(
    IconData icon,
    void Function(String) onChangedStart,
    void Function() onEditingCompleteStart,
    void Function(String) onChangedEnd,
    void Function() onEditingCompleteEnd,
  ) {
    return Padding(
      padding: widget.padding ?? EdgeInsets.symmetric(horizontal: AppSizes.padding),
      child: Row(
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
                  suffixIcon: icon,
                  iconsColor: AppColors.black,
                  onChanged: onChangedStart,
                  onEditingComplete: onEditingCompleteStart,
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
                  suffixIcon: icon,
                  iconsColor: AppColors.black,
                  onChanged: onChangedEnd,
                  onEditingComplete: onEditingCompleteEnd,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
