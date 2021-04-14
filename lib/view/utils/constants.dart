import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:get/get.dart';

//COLORS
const Color kDeepPrimaryColor = Color(0xFF902D26);
const Color kPrimaryColor = Color(0xFFD6475C);
const Color kLightPrimaryColor = Color(0xFFFAF7F7);
const Color kPurple = Color(0xFFA93BD1);
const Color kGreen = Color(0xFF11D1AC);
const Color kOrange = Color(0xFFF46F16);
const Color kYellow = Color(0xFFF9A60E);
const Color kGrey = Color(0xFF4B4B4B);
const Color kLightGrey = Color(0xFFD9D5D5);

//ASSETS
const String kLogoSplash = 'assets/images/logo-splash.riv';
const String kLogo = 'assets/images/logo.png';

//RESPONSIVE
final kInch = math.sqrt(math.pow(Get.width, 2) + math.pow(Get.height, 2));
final kWidth = Get.width;
final kHeight = Get.height;

//RADIUS
const double kInputRadius = 8;

//INPUT DECORATIONS
final OutlineInputBorder kEnabledBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(kInputRadius),
    borderSide: const BorderSide(color: kLightGrey)
);

final OutlineInputBorder kFocusedBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(kInputRadius),
);

final OutlineInputBorder kErrorBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(kInputRadius),
);

final OutlineInputBorder kFocusedErrorBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(kInputRadius),
  borderSide: const BorderSide(width: 0.5),
);

final OutlineInputBorder kDisabledBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(kInputRadius),
  borderSide: const BorderSide(width: 0.2, color: Colors.black12),
);