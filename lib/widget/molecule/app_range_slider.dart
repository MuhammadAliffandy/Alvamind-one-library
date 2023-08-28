import 'package:flutter/material.dart';
import 'package:range_slider_flutter/range_slider_flutter.dart';

import '../../app/theme/app_colors.dart';

class AppRangeSlider extends StatefulWidget {
  final double lowerValue;
  final double upperValue;
  final double? min;
  final double? max;
  final Widget? leftSuffix;
  final Widget? leftPrefix;
  final Widget? rightSuffix;
  final Widget? rightPrefix;
  final dynamic Function(int, dynamic, dynamic) onDragging;
  final dynamic Function(int, dynamic, dynamic)? onDragStarted;
  final dynamic Function(int, dynamic, dynamic)? onDragCompleted;

  const AppRangeSlider({
    required this.lowerValue,
    required this.upperValue,
    required this.onDragging,
    this.min,
    this.max,
    this.leftPrefix,
    this.leftSuffix,
    this.rightPrefix,
    this.rightSuffix,
    this.onDragCompleted,
    this.onDragStarted,
  });

  @override
  State<AppRangeSlider> createState() => _AppRangeSliderState();
}

class _AppRangeSliderState extends State<AppRangeSlider> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RangeSliderFlutter(
      values: [
        widget.lowerValue,
        widget.upperValue
      ],
      min: widget.min ?? 0,
      max: widget.max ?? 20000,
      textPositionTop: -80,
      handlerHeight: 30,
      handlerWidth: 30,
      fontSize: 14,
      textBackgroundColor: AppColors.primary,
      handler: RangeSliderFlutterHandler(
          decoration: BoxDecoration(
        color: AppColors.white,
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.primary, width: 7),
      )),
      rangeSlider: true,
      rightHandler: RangeSliderFlutterHandler(
          child: Center(),
          decoration: BoxDecoration(
            color: AppColors.white,
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.primary, width: 7),
          )),
      tooltip: RangeSliderFlutterTooltip(
          leftSuffix: widget.leftSuffix,
          rightSuffix: widget.rightSuffix,
          rightPrefix: widget.rightPrefix,
          leftPrefix: widget.leftPrefix,
          alwaysShowTooltip: true,
          boxStyle: RangeSliderFlutterTooltipBox(
              decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.primary,
          ))),
      trackBar: RangeSliderFlutterTrackBar(
        activeTrackBarHeight: 8,
        inactiveTrackBarHeight: 8,
        activeTrackBar: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.primary,
        ),
        inactiveTrackBar: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.blackLv8,
        ),
      ),
      onDragging: (handlerIndex, lowerValue, upperValue) {
        widget.onDragging(handlerIndex, lowerValue, upperValue);

        setState(() {});
      },
      onDragCompleted: (handlerIndex, lowerValue, upperValue) {
        widget.onDragCompleted ??
            (
              handlerIndex,
              lowerValue,
              upperValue
            );
      },
      onDragStarted: ((handlerIndex, lowerValue, upperValue) {
        widget.onDragStarted ??
            (
              handlerIndex,
              lowerValue,
              upperValue
            );
        ;
      }),
    );
  }
}
