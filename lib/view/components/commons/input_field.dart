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
      {required this.controller,
      required this.icon,
      required this.label,
      this.obscure = false,
      this.iconShowPassword,
      required this.validator});

  final Responsive _responsive = Responsive();

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          primaryColor: kOrange,
          textSelectionTheme:
              const TextSelectionThemeData(cursorColor: kOrange)),
      child: TextFormField(
        style: TextStyle(fontSize: _responsive.inchPercent(1.8)),
        obscureText: obscure,
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
          border: kEnabledBorder,
          contentPadding:
              EdgeInsets.symmetric(vertical: _responsive.inchPercent(2)),
          labelText: label,
          labelStyle: TextStyle(fontSize: _responsive.inchPercent(1.5)),
          prefixIcon: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: _responsive.inchPercent(1)),
            child: Icon(icon, size: _responsive.inchPercent(2.5)),
          ),
          suffixIcon: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: _responsive.inchPercent(1)),
            child: iconShowPassword,
          ),
        ),
      ),
    );
  }
}
