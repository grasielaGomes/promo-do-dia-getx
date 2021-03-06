import 'package:flutter/material.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

final Responsive _responsive = Responsive();

class OutputField extends StatelessWidget {
  final String? initialValue;
  final String label;
  final bool? enable;
  final FormFieldValidator<String> validator;
  final Function(String?)? onSaved;

  const OutputField({
    required this.initialValue,
    required this.label,
    this.enable,
    this.onSaved,
    required this.validator,
  });

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
          initialValue: initialValue,
          onSaved: onSaved,
          validator: validator,
          autocorrect: false,
          enabled: enable,
          decoration: InputDecoration(
            labelText: label,
            border: kEnabledBorder,
            contentPadding:
            EdgeInsets.all(_responsive.inchPercent(2)),
            labelStyle: TextStyle(fontSize: _responsive.inchPercent(1.5)),
            ),
          ),
        ),
    );
  }
}
