import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_task/core/utils/sizes/sizes.dart';
import 'package:my_first_task/core/utils/theme/colors.dart';
import 'package:my_first_task/widgets/material_widgets/main_text.dart';

class MainButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  const MainButton({Key? key, required this.onTap, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Container(
        height:AppSizes.kContainerHeight * 0.8,
        width: double.infinity,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.kBoarderRadius * 0.6),
          color: AppColors.kOrange,
        ),
        child: Align(
          alignment: Alignment.center,
          child: MainText(
            text: title,
            color: AppColors.kBlack,
            fontSize: AppSizes.kSubTitle * 0.6,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
