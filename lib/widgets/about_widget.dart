import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app/controllers/details_controller.dart';
import '../core/utils/sizes/sizes.dart';
import '../core/utils/theme/colors.dart';
import 'material_widgets/main_text.dart';

class AboutWidget extends StatelessWidget {
  final DetailsController controller;
  const AboutWidget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: AppSizes.kSizesBox1 * 0.3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              MainText(
                text: 'About',
                color: AppColors.kGrey,
                fontWeight: FontWeight.w300,
              ),
            ],
          ),
        ),
        Obx(() => Row(
          children: [
            SizedBox(
              width: AppSizes.kContainerWidth,
              child: MainText(
                text:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book',
                color: AppColors.kWhite,
                fontWeight: FontWeight.w300,
                textOverflow: TextOverflow.ellipsis,
                maxLine: controller.descTextShowFlag.value ? 5 : 2,
              ),
            ),
            const Spacer(),
            InkWell(
                onTap: () {
                  controller.changeOnTap();
                },
                child: controller.descTextShowFlag.value
                    ? Icon(
                  Icons.keyboard_arrow_up,
                  color: AppColors.kWhite,
                  size: AppSizes.kIconSize1,
                )
                    : Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.kWhite,
                  size: AppSizes.kIconSize1,
                )),
          ],
        )),
      ],
    );
  }
}
