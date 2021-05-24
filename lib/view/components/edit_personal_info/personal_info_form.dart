import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/controllers/account_controller.dart';
import 'package:promo_do_dia_getx/view/components/commons/heading_text.dart';
import 'package:promo_do_dia_getx/view/components/commons/output_field.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';

class PersonalInfoForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AccountController>(
        id: 'personalForm',
        builder: (_) {
          final double _height = _.responsive.heightPercent(2);
          final double _width = _.responsive.widthPercent(4);
          return Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                HeadingText.h3(
                    text: 'address'.tr,
                    color: kGrey.withAlpha(150)),
                SizedBox(height: _height),
                OutputField(
                  label: 'zip code',
                  initialValue: '35500-474',
                  validator: (value){},
                  suffixIcon: GestureDetector(
                    onTap: (){},
                    child: Icon(Icons.close_rounded,
                        size: _.responsive.inchPercent(2.5)),
                  ),
                ),
                OutputField(
                  label: 'street',
                  initialValue: 'Olímpio Moreira',
                  validator: (value){},
                ),
                Row(
                  children: [
                    Flexible(
                      child: OutputField(
                        label: 'number',
                        initialValue: '140',
                        validator: (value){},
                      ),
                    ),
                    SizedBox(width: _width),
                    Flexible(
                      child: OutputField(
                        label: 'complement',
                        initialValue: 'apto 101',
                        validator: (value){},
                      ),
                    ),
                  ],
                ),
                OutputField(
                  label: 'district',
                  initialValue: 'Interlagos',
                  validator: (value){},
                ),
                Row(
                  children: [
                    Flexible(
                      flex: 2,
                      child: OutputField(
                        label: 'city',
                        initialValue: 'Divinópolis',
                        validator: (value){},
                      ),
                    ),
                    SizedBox(width: _width),
                    Flexible(
                      child: OutputField(
                        label: 'state',
                        initialValue: 'MG',
                        validator: (value){},
                      ),
                    ),
                  ],
                ),
                HeadingText.h3(
                    text: 'Contact info',
                    color: kGrey.withAlpha(150)),
                SizedBox(height: _height),
                OutputField(
                  label: 'name'.tr,
                  initialValue: 'Grasiela Gomes da Silva',
                  validator: (value){},
                ),
                OutputField(
                  label: 'email'.tr,
                  initialValue: 'grasiela@e-lead.com.br',
                  validator: (value){},
                ),
                OutputField(
                  label: 'phone'.tr,
                  initialValue: '(31) 9 9194-7363',
                  validator: (value){},
                ),
              ],
            ));
        }
    );
  }
}
