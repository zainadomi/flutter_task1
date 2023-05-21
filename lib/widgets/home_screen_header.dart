import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../app/routes/routes.dart';
import '../core/utils/assets/app_assets.dart';
import '../core/utils/sizes/sizes.dart';
import '../core/utils/theme/colors.dart';
import 'material_widgets/main_text.dart';

class HomeScreenHeaders extends StatelessWidget {
  const HomeScreenHeaders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        ShaderMask(
          shaderCallback: (rect) {
            return const LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                // fromLTRB
                Colors.transparent,
                Colors.black,
                Colors.black,
                Colors.transparent,
              ],
              stops: [0, 2, 0, 1],
            ).createShader(
              Rect.fromLTRB(rect.width, 0, rect.width, rect.height),
            );
          },
          blendMode: BlendMode.dstIn,
          child: Container(
            height: AppSizes.kHeight,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppAssets.kHomeScreenImage),
                    fit: BoxFit.cover)),
          ),
        ),
        SizedBox(
          height: AppSizes.kHeight,
          child: Padding(
            padding: EdgeInsets.all(AppSizes.kPadding1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: AppSizes.kPadding1*2.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Icon(Icons.arrow_back_ios_new,
                          color: AppColors.kWhite,size: AppSizes.kIconSize,),

                      Container(
                        height: AppSizes.kContainerHeight * 0.8,
                        width: AppSizes.kSmallContainerWidth * 0.2,
                        decoration: BoxDecoration(
                          color: AppColors.kDarkGrey.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(
                              AppSizes.kBoarderRadius * 0.7),
                        ),
                        child: InkWell(
                          onTap: (){
                            Get.toNamed(Routes.filterScreen);
                          },
                          child: Icon(Icons.bookmark_border,
                              color: AppColors.kWhite, size: AppSizes.kIconSize1 * 0.8,),
                        ),
                      ),
                    ],
                  ),
                ),
                MainText(
                  text: 'The Beginner\'s Guide to Create Animated',
                  maxLine: 2,
                  color: AppColors.kWhite,
                  fontSize: AppSizes.kSubTitle * 0.95,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
