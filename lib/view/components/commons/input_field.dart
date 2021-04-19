
import 'package:flutter/material.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class InputField extends StatelessWidget {
  final IconData icon;
  final String label;
  final Widget? iconShowPassword;
  final TextEditingController controller;
  final FormFieldValidator<String> validator;
  final bool obscure;

  InputField(
      {
        required this.controller,
        required this.icon,
        required this.label,
        this.obscure = false,
        this.iconShowPassword,
        required this.validator});

  final Responsive _responsive = Responsive();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(fontSize: _responsive.inchPercent(1.8)),
      obscureText: obscure,
      controller: controller,
      validator: validator,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: _responsive.inchPercent(2)),
        labelText: label,
        labelStyle: TextStyle(fontSize: _responsive.inchPercent(1.5), color: kGrey),
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: _responsive.inchPercent(1)),
          child: Icon(icon, color: kLightGrey, size: _responsive.inchPercent(2.5)),
        ),
        enabledBorder: kEnabledBorder,
        focusedBorder: kFocusedBorder,
        errorBorder: kErrorBorder,
        focusedErrorBorder: kFocusedErrorBorder,
        disabledBorder: kDisabledBorder,
        errorStyle: TextStyle(color: kPrimaryColor, fontSize: _responsive.inchPercent(1.2)),
        suffixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: _responsive.inchPercent(1)),
          child: iconShowPassword,
        ),
      ),
    );
  }
}
