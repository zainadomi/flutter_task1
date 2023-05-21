import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_task/app/controllers/filter_controller.dart';
import 'package:my_first_task/core/utils/sizes/sizes.dart';
import 'package:my_first_task/core/utils/theme/colors.dart';
import 'package:my_first_task/widgets/material_widgets/main_text.dart';

class CourseSubjectWidget extends StatelessWidget {
  final FilterController filterController;
  final dynamic courseSubject;

  const CourseSubjectWidget({Key? key, required this.courseSubject, required this.filterController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: (){
        filterController.setCourseSubject(filterController.setCourseSubject(courseSubject['id']));
      },
      child: Container(
        height: AppSizes.kSmallContainerHeight * 0.5 ,
        width: AppSizes.kContainerWidth ,
        decoration: BoxDecoration(
            color: AppColors.kLightBlack,
            borderRadius: BorderRadius.circular(AppSizes.kBoarderRadius1 * 0.8,),
          border: Border.all(color: filterController.isSelectedCourse(courseSubject['id'])?AppColors.kYellow:AppColors.kBoarderGrey,width: 0.8)
        ),
        child: Align(
          alignment: Alignment.center,
          child: MainText(
            text: courseSubject['courseSubject'],
            fontWeight: FontWeight.w400,
            color: AppColors.kWhite,
            fontSize: AppSizes.kSubTitle * 0.6,
          ),
        ),
      ),
    );
  }
}
