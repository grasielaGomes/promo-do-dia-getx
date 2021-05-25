import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/controllers/editions_controller.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class ZipCodeField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Responsive _responsive = Responsive();
    return GetBuilder<EditionsController>(
        id: 'zipCode',
        builder: (_) => Theme(
          data: Theme.of(context).copyWith(
              primaryColor: kOrange,
              textSelectionTheme:
              const TextSelectionThemeData(cursorColor: kOrange)),
          child: Container(
            margin: EdgeInsets.only(bottom: _responsive.heightPercent(2)),
            child: TextFormField(
              style: TextStyle(fontSize: _responsive.inchPercent(1.8)),
              initialValue: _.zip,
              autocorrect: false,
              decoration: InputDecoration(
                labelText: 'Zip code',
                border: kEnabledBorder,
                contentPadding:
                EdgeInsets.all(_responsive.inchPercent(2)),
                labelStyle: TextStyle(fontSize: _responsive.inchPercent(1.5)),
                suffixIcon: GestureDetector(
                  onTap: (){
                    _.clearInitialValue();
                  },
                  child: Icon(_.isLoading ? Icons.search_rounded : Icons.close_rounded,
                      size: _.responsive.inchPercent(2.5)),
                ),
              ),
            ),
          ),
        ));
  }
}
