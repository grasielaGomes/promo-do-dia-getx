
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


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
const Color kWhite = Colors.white;

//ASSETS
const String kLogoSplash = 'assets/images/logo-splash.riv';
const String kLogo = 'assets/images/logo.png';
const String kImage1 = 'assets/images/image1.png';
const String kImage2 = 'assets/images/image2.png';
const String kImage3 = 'assets/images/image3.png';
const String kImage4 = 'assets/images/image4.png';
const String kImage5 = 'assets/images/image5.png';
const String kImage6 = 'assets/images/image6.png';
const String kImage7 = 'assets/images/image7.png';
const String kImage8 = 'assets/images/image8.png';

//RADIUS
const double kInputRadius = 8;

//INPUT DECORATIONS
final OutlineInputBorder kEnabledBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(kInputRadius),
    borderSide: const BorderSide(color: kLightGrey)
);

final OutlineInputBorder kFocusedBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(kInputRadius),
    borderSide: const BorderSide(color: kOrange)
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