import 'package:flutter/material.dart';
import 'package:my_first_task/widgets/material_widgets/main_text.dart';

import '../core/utils/sizes/sizes.dart';
import '../core/utils/theme/colors.dart';

class DetailsContainer extends StatelessWidget {
  final String title;
  final String time;
  final String percent;

  const DetailsContainer(
      {Key? key,
      required this.title,
      required this.time,
      required this.percent,
      r})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.kContainerHeight * 1.3,
      width: AppSizes.kContainerWidth,
      decoration: BoxDecoration(
        color: AppColors.kDarkGrey,
        borderRadius: BorderRadius.circular(AppSizes.kBoarderRadius),
      ),
      child: Padding(
        padding: EdgeInsets.all(AppSizes.kPadding1 * 0.9),
        child: Padding(
          padding: EdgeInsets.only(
              left: AppSizes.kPadding1, right: AppSizes.kPadding1),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MainText(
                    text: title,
                    color: AppColors.kWhite,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: AppSizes.kSizesBox1 * 0.7,
                  ),
                  Row(children: [
                    Icon(Icons.timer_sharp,
                        color: AppColors.kYellow,
                        size: AppSizes.kIconSize * 0.7),
                    SizedBox(
                      width: AppSizes.kSizesBox * 0.5,
                    ),
                    MainText(
                      text: time,
                      color: AppColors.kYellow,
                      fontSize: AppSizes.kSmallLabel * 0.9,
                      fontWeight: FontWeight.w400,
                    ),
                  ]),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  Container(
                    height: AppSizes.kContainerHeight * 0.89,
                    width: AppSizes.kSmallContainerWidth * 0.5,
                    decoration: BoxDecoration(
                      color: percent == "100%"
                          ? AppColors.kYellow
                          : AppColors.kMidGrey,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(AppSizes.kPadding1 * 0.3),
                      child: Container(
                        height: AppSizes.kContainerHeight * 0.5,
                        width: AppSizes.kSmallContainerWidth * 0.4,
                        decoration: const BoxDecoration(
                          color: AppColors.kBlack,
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(AppSizes.kPadding1 * 0.23),
                          child: Container(
                            height: AppSizes.kContainerHeight * 0.3,
                            width: AppSizes.kSmallContainerWidth * 0.2,
                            decoration: BoxDecoration(
                              color: percent == "100%"
                                  ? AppColors.kYellow
                                  : AppColors.kDarkGrey,
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(AppSizes.kPadding1),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: MainText(
                                    text: percent,
                                    color: percent == "100%"
                                        ? AppColors.kBlack
                                        : AppColors.kWhite,
                                    fontWeight: FontWeight.w500,
                                    fontSize: AppSizes.kSmallLabel,
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
