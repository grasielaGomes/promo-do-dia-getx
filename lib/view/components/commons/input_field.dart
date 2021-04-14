
import 'package:flutter/material.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';

class InputField extends StatelessWidget {
  final IconData icon;
  final String label;
  final Widget? iconShowPassword;
  final TextEditingController controller;
  final FormFieldValidator<String> validator;
  final bool obscure;

  const InputField(
      {
        required this.controller,
        required this.icon,
        required this.label,
        this.obscure = false,
        this.iconShowPassword,
        required this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(fontSize: kInch * 0.018),
      obscureText: obscure,
      controller: controller,
      validator: validator,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: kInch * 0.02),
        labelText: label,
        labelStyle: TextStyle(fontSize: kInch * 0.015, color: kGrey),
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: kInch * 0.01),
          child: Icon(icon, color: kLightGrey, size: kInch * 0.025),
        ),
        enabledBorder: kEnabledBorder,
        focusedBorder: kFocusedBorder,
        errorBorder: kErrorBorder,
        focusedErrorBorder: kFocusedErrorBorder,
        disabledBorder: kDisabledBorder,
        errorStyle: TextStyle(color: kPrimaryColor, fontSize: kInch * 0.012),
        suffixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: kInch * 0.01),
          child: iconShowPassword,
        ),
      ),
    );
  }
}
