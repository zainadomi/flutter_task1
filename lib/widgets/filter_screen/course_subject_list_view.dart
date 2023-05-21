import 'package:flutter/material.dart';

import '../../app/controllers/filter_controller.dart';
import '../../core/utils/constants/constant.dart';
import '../../core/utils/sizes/sizes.dart';
import 'course_subject_widget.dart';

class CourseSubjectListView extends StatelessWidget {
  final FilterController filterController;
  const CourseSubjectListView({Key? key, required this.filterController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.kHeight * 0.4,
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 170,
            childAspectRatio: 3.5,
            crossAxisSpacing: 20,
            mainAxisSpacing: AppSizes.kSizesBox * 1.2,
          ),
          itemCount: AppConstant.courseSubject.length,
          itemBuilder: (BuildContext ctx, index) {
            var courseSubject = AppConstant.courseSubject[index];
            return CourseSubjectWidget(
                courseSubject: courseSubject, filterController: filterController,);
          }),
    );
  }
}
