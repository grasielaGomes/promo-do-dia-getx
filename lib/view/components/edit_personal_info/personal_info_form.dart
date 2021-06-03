import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/controllers/editions_controller.dart';
import 'package:promo_do_dia_getx/view/components/commons/heading_text.dart';
import 'package:promo_do_dia_getx/view/components/commons/output_field.dart';
import 'package:promo_do_dia_getx/view/components/edit_personal_info/zip_code_field.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';

class PersonalInfoForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<EditionsController>(
        id: 'personalForm',
        builder: (_) {
          final double _height = _.responsive.heightPercent(2);
          final double _width = _.responsive.widthPercent(4);
          return Form(
            key: _.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                HeadingText.h3(
                    text: 'address'.tr,
                    color: kGrey.withAlpha(150)),
                SizedBox(height: _height),
                ZipCodeField(),
                OutputField(
                  label: 'street',
                  initialValue: _.values[0],
                  onSaved: (value) => _.values[0] = value,
                  validator: (value){},
                ),
                Row(
                  children: [
                    Flexible(
                      child: OutputField(
                        label: 'number',
                        initialValue: _.values[1],
                        validator: (value){},
                      ),
                    ),
                    SizedBox(width: _width),
                    Flexible(
                      child: OutputField(
                        label: 'complement',
                        initialValue: _.values[2],
                        validator: (value){},
                      ),
                    ),
                  ],
                ),
                OutputField(
                  label: 'district',
                  initialValue: _.values[3],
                  validator: (value){},
                ),
                Row(
                  children: [
                    Flexible(
                      flex: 2,
                      child: OutputField(
                        label: 'city',
                        enable: !_.isLoading,
                        initialValue: _.values[4],
                        validator: (value){},
                      ),
                    ),
                    SizedBox(width: _width),
                    Flexible(
                      child: OutputField(
                        label: 'state',
                        enable: !_.isLoading,
                        initialValue: _.values[5],
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
