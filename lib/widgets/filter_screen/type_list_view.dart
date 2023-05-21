import 'package:flutter/material.dart';
import 'package:my_first_task/app/controllers/filter_controller.dart';
import 'package:my_first_task/widgets/filter_screen/type_widget.dart';

import '../../core/utils/constants/constant.dart';
import '../../core/utils/sizes/sizes.dart';

class TypeListView extends StatelessWidget {
  final FilterController filterController;
  const TypeListView({Key? key, required this.filterController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: AppSizes.kHeight * 0.4,
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: AppConstant.typeData.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          var typeData = AppConstant.typeData[index];
          return TypeWidget(
              type: typeData, filterController: filterController,);
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: AppSizes.kSizesBox1*.8,
          );
        },
      ),
    );
  }
}
