import 'package:flutter/material.dart';
// import 'package:get/get.dart';f

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static getHeight(double pixels, BuildContext context) {
    double x = getScreenHeight(context) / pixels;
    return getScreenHeight(context) / x;
  }

  static getWidth(double pixels, BuildContext context) {
    double x = getScreenWidth(context) / pixels;
    return getScreenWidth(context) / x;
  }
}