import 'package:flutter/material.dart';

class ScreenUtils {

  //获取屏幕宽度
  static double getScreenWidth(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width;
  }
}
