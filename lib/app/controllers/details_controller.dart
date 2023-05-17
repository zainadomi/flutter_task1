import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_task/core/utils/theme/colors.dart';

class DetailsController extends GetxController {
  RxBool descTextShowFlag = false.obs;
  final double value = 0.2;

  changeOnTap(){
    descTextShowFlag.toggle();
  }

  Color setLinearColor(double value) {

    //0.2
    double currentValue = value * 10;
    Color color = Colors.green;

    if(currentValue <= 3.33){
      color = Colors.green;
    }else if(currentValue <= 6.66){
      color = Colors.red;
    }else{
      color = AppColors.kYellow;
    }
    return color;
  }

}