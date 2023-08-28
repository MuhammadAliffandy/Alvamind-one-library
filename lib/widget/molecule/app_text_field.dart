import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../app/const/countries.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_text_style.dart';
import '../../model/country_model.dart';
import '../atom/app_image.dart';
import '../atom/app_tool_tip.dart';

enum AppTextFieldType {
  text,
  password,
  number,
  phone,
  search,
}

class AppTextField extends StatefulWidget {
  final AppTextFieldType type;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool enabled;
  final bool autofocus;
  final double fontSize;
  final double? iconsSize;
  final double borderRadius;
  final EdgeInsets contentPadding;
  final Color fillColor;
  final Color onFocusFillColor;
  final Color iconsColor;
  final Color onFocusIconsColor;
  final Color borderColor;
  final Color disabledColor;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final TextStyle? labelStyle;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final String? hintText;
  final String? labelText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final Function(String text)? onChanged;
  final Function()? onEditingComplete;
  final Function()? onTapSearcFilter;
  final Function(CountryModel)? onTapCountry;
  final List<TextInputFormatter>? inputFormatters;
  final bool showCounter;
  final CountryModel? selectedCountry;

  const AppTextField({
    super.key,
    this.type = AppTextFieldType.text,
    this.controller,
    this.focusNode,
    this.enabled = true,
    this.autofocus = false,
    this.fontSize = 14,
    this.iconsSize,
    this.borderRadius = 16,
    this.contentPadding = const EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 18,
    ),
    this.fillColor = AppColors.blackLv9,
    this.onFocusFillColor = AppColors.blueLv5,
    this.iconsColor = AppColors.blackLv5,
    this.onFocusIconsColor = AppColors.primary,
    this.borderColor = AppColors.primary,
    this.disabledColor = AppColors.blackLv7,
    this.minLines,
    this.maxLines,
    this.maxLength,
    this.labelStyle,
    this.textStyle,
    this.hintStyle,
    this.textInputType,
    this.textInputAction,
    this.hintText,
    this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.prefixWidget,
    this.suffixWidget,
    this.onChanged,
    this.onEditingComplete,
    this.onTapSearcFilter,
    this.onTapCountry,
    this.inputFormatters,
    this.showCounter = false,
    this.selectedCountry,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  FocusNode _focusNode = FocusNode();
  Color _fillColor = AppColors.blackLv9;
  Color _iconsColor = AppColors.blackLv5;

  bool _obsecureText = false;

  CountryModel _country = countries.first;

  @override
  void initState() {
    _focusNode = widget.focusNode ?? FocusNode();

    _fillColor = widget.fillColor;
    _iconsColor = widget.iconsColor;

    _obsecureText = widget.type == AppTextFieldType.password;

    _country = widget.selectedCountry ?? countries.first;

    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        setState(() {
          _fillColor = widget.onFocusFillColor;
          _iconsColor = widget.onFocusIconsColor;
        });
      } else {
        setState(() {
          _fillColor = widget.fillColor;
          _iconsColor = widget.iconsColor;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        labelWidget(),
        textFieldWidget(),
      ],
    );
  }

  Widget labelWidget() {
    if (widget.labelText == null || widget.labelText == '') {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        widget.labelText!,
        style: widget.labelStyle ??
            AppTextStyle.bodyMedium(
              fontWeight: AppFontWeight.bold,
            ),
      ),
    );
  }

  Widget textFieldWidget() {
    return TextField(
      focusNode: _focusNode,
      controller: widget.controller,
      onChanged: widget.onChanged,
      onEditingComplete: widget.onEditingComplete,
      enabled: widget.enabled,
      style: widget.textStyle ??
          AppTextStyle.bodyMedium(fontWeight: AppFontWeight.semibold),
      cursorColor: AppColors.blackLv1,
      cursorWidth: 1.5,
      autofocus: widget.autofocus,
      obscureText: _obsecureText,
      minLines: widget.minLines,
      maxLines: widget.type == AppTextFieldType.password ? 1 : widget.maxLines,
      maxLength: widget.maxLength,
      maxLengthEnforcement: MaxLengthEnforcement.enforced,
      keyboardType: keyboardType(),
      textInputAction: widget.textInputAction,
      inputFormatters: inputFormatters(),
      decoration: InputDecoration(
        counterText: widget.showCounter ? null : '',
        isDense: true,
        filled: true,
        fillColor: widget.enabled ? _fillColor : widget.disabledColor,
        prefixIcon: prefixIconWidget(),
        suffixIcon: suffixIconWidget(),
        prefix: widget.prefixWidget,
        suffix: widget.suffixWidget,
        hintText: widget.hintText,
        hintStyle: widget.hintStyle ??
            AppTextStyle.bodyMedium(
              fontWeight: AppFontWeight.regular,
              color: AppColors.blackLv5,
            ),
        contentPadding: widget.contentPadding,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(widget.borderRadius),
          ),
          borderSide: BorderSide(
            width: 1,
            color: widget.borderColor,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(widget.borderRadius),
          ),
          borderSide: const BorderSide(
            width: 1,
            color: AppColors.error,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(widget.borderRadius),
          ),
          borderSide: BorderSide.none,
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(widget.borderRadius),
          ),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  TextInputType? keyboardType() {
    if (widget.textInputType != null) {
      return widget.textInputType;
    }

    if (widget.type == AppTextFieldType.phone) {
      return TextInputType.phone;
    }

    if (widget.type == AppTextFieldType.number) {
      return TextInputType.number;
    }

    return widget.textInputType;
  }

  List<TextInputFormatter>? inputFormatters() {
    if (widget.inputFormatters != null) {
      return widget.inputFormatters;
    }

    if (widget.type == AppTextFieldType.phone) {
      return [FilteringTextInputFormatter.digitsOnly];
    }

    if (widget.type == AppTextFieldType.number) {
      return [FilteringTextInputFormatter.digitsOnly];
    }

    return widget.inputFormatters;
  }

  Widget? prefixIconWidget() {
    if (widget.type == AppTextFieldType.phone) {
      return phoneCodePopupButton();
    }

    if (widget.type == AppTextFieldType.search) {
      return Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Icon(
          widget.prefixIcon ?? Icons.search_rounded,
          color: _iconsColor,
          size: widget.iconsSize,
        ),
      );
    }

    if (widget.prefixIcon == null) {
      return null;
    }

    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Icon(
        widget.prefixIcon,
        color: _iconsColor,
        size: widget.iconsSize,
      ),
    );
  }

  Widget? suffixIconWidget() {
    if (widget.type == AppTextFieldType.password) {
      return textVisibilityIconButton();
    }

    if (widget.type == AppTextFieldType.search) {
      return GestureDetector(
        onTap: widget.onTapSearcFilter,
        child: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Icon(
            widget.suffixIcon ?? Icons.tune_rounded,
            color: _iconsColor,
            size: widget.iconsSize,
          ),
        ),
      );
    }

    if (widget.suffixIcon == null) {
      return null;
    }

    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Icon(
        widget.suffixIcon,
        color: _iconsColor,
        size: widget.iconsSize,
      ),
    );
  }

  Widget phoneCodePopupButton() {
    return AppToolTipMenu(
      onTapItem: (i) {
        if (widget.onTapCountry != null) {
          widget.onTapCountry!(countries[i]);
        }
        _country = countries[i];
        setState(() {});
      },
      padding: const EdgeInsets.only(left: 24, right: 8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: widget.iconsSize ?? 24,
            child: AppImage(
              image: _country.flag,
              imgProvider: ImgProvider.assetImage,
            ),
          ),
          const SizedBox(width: 4),
          Icon(
            Icons.keyboard_arrow_down_rounded,
            color: _iconsColor,
            size: widget.iconsSize ?? 24,
          ),
          const SizedBox(width: 4),
          Text(
            _country.phoneCode,
            style: widget.textStyle ??
                AppTextStyle.bodyMedium(fontWeight: AppFontWeight.semibold),
          )
        ],
      ),
      children: List.generate(countries.length, (i) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: widget.iconsSize ?? 24,
              child: AppImage(
                image: countries[i].flag,
                imgProvider: ImgProvider.assetImage,
              ),
            ),
            const SizedBox(width: 4),
            Text(
              countries[i].phoneCode,
              style: AppTextStyle.semibold(size: 12),
            )
          ],
        );
      }),
    );
  }

  Widget textVisibilityIconButton() {
    return GestureDetector(
      onTap: () {
        setState(() {
          _obsecureText = !_obsecureText;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Icon(
          _obsecureText
              ? Icons.visibility_off_rounded
              : Icons.remove_red_eye_rounded,
          color: _iconsColor,
          size: widget.iconsSize,
        ),
      ),
    );
  }
}
