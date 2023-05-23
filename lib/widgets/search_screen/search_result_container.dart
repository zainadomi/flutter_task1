import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_task/core/utils/assets/app_assets.dart';
import 'package:my_first_task/core/utils/sizes/sizes.dart';
import 'package:my_first_task/core/utils/theme/colors.dart';
import 'package:my_first_task/widgets/material_widgets/main_text.dart';

class SearchResultContainer extends StatelessWidget {
  final String courseCategory;
  final String courseName;
  final String userType;
  final String time;
  final String image;

  const SearchResultContainer(
      {Key? key,
      required this.courseCategory,
      required this.courseName,
      required this.userType,
      required this.time, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.kContainerHeight * 5.2,
      width: AppSizes.kSmallContainerWidth * 1.15,
      decoration: BoxDecoration(
        color: AppColors.kDarkGrey,
        borderRadius: BorderRadius.circular(AppSizes.kBoarderRadius * 0.9),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Stack(children: [
              Container(
                height: AppSizes.kContainerHeight * 2.7,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppSizes.kBoarderRadius * 0.9),
                        topRight:
                            Radius.circular(AppSizes.kBoarderRadius * 0.9)),
                    image:  DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.fill)),
              ),
              Padding(
                padding: EdgeInsets.all(AppSizes.kPadding * 0.9),
                child: Row(
                  children: [
                    Container(
                      height: AppSizes.kSmallContainerHeight * 1.1,
                      width: AppSizes.kSmallContainerWidth * 0.6,
                      decoration: BoxDecoration(
                        color: AppColors.kDarkGrey.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(
                            AppSizes.kBoarderRadius * 0.3),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: MainText(
                          text: courseCategory,
                          color: AppColors.kYellow,
                          fontSize: AppSizes.kSmallLabel * 0.94,
                          fontWeight: FontWeight.w500,
                          maxLine: 1,
                          textOverflow: TextOverflow.ellipsis,

                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: AppSizes.kContainerHeight * 0.6,
                      width: AppSizes.kSmallContainerWidth * 0.17,
                      decoration: BoxDecoration(
                        color: AppColors.kDarkGrey.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(
                            AppSizes.kBoarderRadius * 0.5),
                      ),
                      child: Icon(
                        Icons.bookmark_border,
                        color: AppColors.kWhite,
                        size: AppSizes.kIconSize1 * 0.8,
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: AppSizes.kPadding * 0.7,
                right: AppSizes.kPadding,
                top: AppSizes.kPadding),
            child: Column(
              children: [
                MainText(
                  text: courseName,
                  color: AppColors.kWhite,
                  maxLine: 2,
                  fontSize: AppSizes.kLabel * 0.89,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: AppSizes.kSizesBox1 * 0.8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.swap_vert_outlined,
                      color: AppColors.kYellow,
                      size: AppSizes.kIconSize,
                    ),

                    MainText(
                      text: userType,
                      color: AppColors.kWhite,
                      fontSize: AppSizes.kSmallLabel * 0.9,
                      fontWeight: FontWeight.w400,
                    ),
                    Container(
                      height: AppSizes.kSmallContainerHeight * 0.9,
                      width: AppSizes.kMiniContainerWidth  ,
                      color: AppColors.kWhite,
                    ),
                    Icon(
                      Icons.timer_sharp,
                      color: AppColors.kDarkOrange,
                      size: AppSizes.kIconSize,
                    ),
                    MainText(
                      text: time,
                      color: AppColors.kWhite,
                      fontSize: AppSizes.kSmallLabel *0.9,
                      fontWeight: FontWeight.w400,
                    ),
                    Container(
                      height: AppSizes.kSmallContainerHeight * 0.9,
                      width: AppSizes.kMiniContainerWidth  ,
                      color: AppColors.kWhite,
                    ),

                    Icon(
                      Icons.phone_iphone_rounded,
                      color: AppColors.kWhite,
                      size: AppSizes.kIconSize,
                    ),

                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
