import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

final Responsive _responsive = Responsive();

class InputField extends StatelessWidget {
  final String label;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController controller;
  final FormFieldValidator<String> validator;
  final bool obscure;

  const InputField({
    required this.label,
    required this.controller,
    this.prefixIcon,
    this.suffixIcon,
    required this.validator,
    this.obscure = false,
  });

  InputField.password(
      {required this.controller,
      this.suffixIcon,
      required this.label,
      required this.validator})
      : obscure = true,
        prefixIcon = Icon(Icons.lock_outline_rounded,
            size: _responsive.inchPercent(2.5));

  InputField.user(
      {required this.controller, this.suffixIcon, required this.validator})
      : obscure = false,
        label = 'name'.tr,
        prefixIcon = Icon(Icons.person_outline_rounded,
            size: _responsive.inchPercent(2.5));

  InputField.email(
      {required this.controller, this.suffixIcon, required this.validator})
      : obscure = false,
        label = 'email'.tr,
        prefixIcon = Icon(Icons.alternate_email_rounded,
            size: _responsive.inchPercent(2.5));

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          primaryColor: kOrange,
          textSelectionTheme:
              const TextSelectionThemeData(cursorColor: kOrange)),
      child: Container(
        margin: EdgeInsets.only(bottom: _responsive.heightPercent(2)),
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
                padding: EdgeInsets.symmetric(
                    horizontal: _responsive.inchPercent(1)),
                child: prefixIcon),
            suffixIcon: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: _responsive.inchPercent(1)),
              child: suffixIcon,
            ),
          ),
        ),
      ),
    );
  }
}
