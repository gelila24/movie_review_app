import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_review_app/shared/themes/app_theme.dart';

class CustomTextField extends StatelessWidget {
  final IconData? rightIcon;
  final IconData? leftIcon;
  final String? label;
  final Function()? onRightIconPressed;
  final FormFieldValidator<String>? validator;
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final BoxDecoration? decoration;
  final TextStyle? hintStyle;
  final int? maxLines;
  final List<TextInputFormatter>? inputFormatters;
  const CustomTextField(
      {Key? key,
      this.validator,
      this.label,
      required this.hintText,
      required this.controller,
      this.hintStyle,
      this.rightIcon,
      this.leftIcon,
      this.onRightIconPressed,
      this.keyboardType = TextInputType.text,
      this.obscureText = false,
      this.maxLines,
      this.decoration,
      this.inputFormatters})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration ?? AppTheme.textFieldDecoration(),
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.only(top: 5, left: 25),
      child: TextFormField(
          controller: controller,
          obscureText: obscureText,
          keyboardType: keyboardType,
          validator: validator,
          maxLines: maxLines,
          inputFormatters: inputFormatters,
          style: AppTheme.textfieldInputStyle(),
          decoration: AppTheme.textFieldInputDecoration().copyWith(
            label: label != null ? Text(label!) : null,
            labelStyle:
                AppTheme.normalWhite().copyWith(color: AppTheme.textDark),
            hintText: (hintText),
            hintStyle: hintStyle ?? AppTheme.hintTextStyle(),
            contentPadding: EdgeInsets.zero,
            errorBorder: InputBorder.none,
            errorStyle: AppTheme.hintTextStyle()
                .copyWith(color: Colors.red, height: 0.1),
            prefix: leftIcon != null ? Icon(leftIcon) : null,
          )),
    );
  }
}
