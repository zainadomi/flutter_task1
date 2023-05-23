import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_task/app/controllers/filter_controller.dart';
import 'package:my_first_task/app/routes/routes.dart';
import 'package:my_first_task/core/utils/assets/app_assets.dart';
import 'package:my_first_task/core/utils/sizes/sizes.dart';
import 'package:my_first_task/widgets/material_widgets/main_text.dart';
import '../../core/utils/theme/colors.dart';
import '../../widgets/filter_screen/course_subject_list_view.dart';
import '../../widgets/filter_screen/type_list_view.dart';
import '../../widgets/material_widgets/main_button.dart';

class FilterScreen extends GetView<FilterController>{
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: AppSizes.kSizesBox1 * 0.7,
          backgroundColor: AppColors.kBlack,
          leading:  InkWell(
            onTap: (){
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios_new,
              color: AppColors.kWhite,
              size: AppSizes.kIconSize1,
            ),
          ),
          title: MainText(
            text: 'Filter',
            color: AppColors.kWhite,
            fontSize: AppSizes.kSubTitle * 0.8,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: AppColors.kBlack,
        body: GetBuilder<FilterController>(
          builder: (_) {
            return Padding(
              padding: EdgeInsets.all(AppSizes.kPadding1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MainText(
                    text: 'Type',
                    color: AppColors.kWhite,
                    fontSize: AppSizes.kSubTitle * 0.7,
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(
                    height: AppSizes.kSizesBox * 0.8,
                  ),
                  TypeListView(filterController: controller,),
                  SizedBox(
                    height: AppSizes.kSizesBox1 * 0.5,
                  ),
                  MainText(
                    text: 'Certificate',
                    color: AppColors.kWhite,
                    fontSize: AppSizes.kSubTitle * 0.7,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(
                    height: AppSizes.kSizesBox1 * 0.6,
                  ),
                  Row(
                    children: [
                      SizedBox(
                          height: AppSizes.kSizesBox1,
                          child: Image.asset(AppAssets.kCertificate,)),
                      SizedBox(
                        width: AppSizes.kSizesBox1 * 0.7,
                      ),
                      MainText(
                        text: 'Has a certificate',
                        color: AppColors.kWhite,
                        fontWeight: FontWeight.w500,
                        fontSize: AppSizes.kSubTitle * 0.6,
                      ),
                      const Spacer(),
                      CupertinoSwitch(
                        activeColor: AppColors.kOrange,
                        trackColor: Colors.grey,
                        value: controller.toggle,
                        onChanged: controller.toggleMethod,
                      ),
                      // SizedBox(
                      //     height: AppSizes.kSizesBox2 * 1.2,
                      //     child: Image.asset(AppAssets.kToggleOn)),
                    ],
                  ),
                  SizedBox(height: AppSizes.kSizesBox2),
                  MainText(
                    text: 'Course Subject',
                    color: AppColors.kWhite,
                    fontSize: AppSizes.kSubTitle * 0.7,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(height: AppSizes.kSizesBox1),
                  CourseSubjectListView(filterController: controller,),
                  const Spacer(),

                  MainButton(

                   onTap:(){
                     Get.toNamed(Routes.searchScreen);
                   },

                    title: 'Filter',
                  ),
                  SizedBox(height: AppSizes.kSizesBox),
                  Align(
                    alignment: Alignment.center,
                    child: TextButton(
                      onPressed: () {},
                      child: MainText(
                        text: 'Clear',
                        color: AppColors.kWhite,
                        fontSize: AppSizes.kSubTitle * 0.7,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
        ));
  }
}
