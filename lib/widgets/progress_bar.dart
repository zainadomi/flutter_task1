import 'package:flutter/material.dart';
import 'package:my_first_task/app/controllers/details_controller.dart';

import '../core/utils/sizes/sizes.dart';
import '../core/utils/theme/colors.dart';
import 'material_widgets/main_text.dart';

class ProgressWidget extends StatelessWidget {
  final DetailsController controller;
  const ProgressWidget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LinearProgressIndicator(
          value: controller.value,
          backgroundColor: Colors.grey,
          color: controller.setLinearColor(controller.value),
        ),
        SizedBox(height: AppSizes.kSizesBox),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MainText(text: '${controller.value*100} %', color: AppColors.kWhite,fontSize: AppSizes.kSmallLabel,),
            MainText(text: '(${(controller.value/10*100).toString().split('.')[0]}/10)', color: AppColors.kWhite,fontSize: AppSizes.kSmallLabel,)
          ],
        ),
      ],
    );
  }
}
