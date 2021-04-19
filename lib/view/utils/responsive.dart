import 'dart:math' as math;

import 'package:get/get.dart';

class Responsive {

  double widthPercent(double percent){
    return Get.width * percent / 100;
  }

  double heightPercent(double percent){
    return Get.height * percent / 100;
  }

  double inchPercent(double percent){
    final inch = math.sqrt(math.pow(Get.width, 2) + math.pow(Get.height, 2));
    return inch * percent / 100;
  }

}