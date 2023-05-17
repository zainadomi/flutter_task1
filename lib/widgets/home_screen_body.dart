import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_task/widgets/progress_bar.dart';
import 'package:my_first_task/widgets/row_icons_widget.dart';
import 'package:my_first_task/widgets/stepper_list_widget.dart';
import 'package:my_first_task/widgets/stepper_tile_widget.dart';
import 'package:stepper_list_view/stepper_list_view.dart';

import '../app/controllers/details_controller.dart';
import '../core/utils/constants/constant.dart';
import '../core/utils/sizes/sizes.dart';
import '../core/utils/theme/colors.dart';
import 'about_widget.dart';
import 'details_container.dart';
import 'material_widgets/main_text.dart';
import 'nav_bar_List.dart';

class HomeScreenBody extends GetView<DetailsController>  {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailsController>(
      builder: (_) {
        return Padding(
          padding:  EdgeInsets.all(AppSizes.kPadding1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  MainText(
                    text: 'Your progress',
                    color: AppColors.kGrey,
                    fontWeight: FontWeight.w300,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: AppSizes.kSizesBox1 * 0.3),
                child: ProgressWidget(controller: controller,),
              ),
              const Divider(
                thickness: 0.12,
                color: AppColors.kWhite,
              ),
              AboutWidget(controller: controller,),
              Padding(
                padding: EdgeInsets.symmetric(vertical: AppSizes.kSizesBox1 * 0.5),
                child: const Divider(
                  thickness: 0.12,
                  color: AppColors.kWhite,
                ),
              ),
              RowIconsWidget(controller: controller,),
              SizedBox(height: AppSizes.kSizesBox1 * 0.5),
              const Divider(
                thickness: 0.12,
                color: AppColors.kWhite,
              ),
              StepperListWidget(),
            ],
          ),
        );
      }
    );
  }
}