import 'package:flutter/material.dart';
import 'package:my_first_task/core/utils/sizes/sizes.dart';
import 'package:my_first_task/widgets/stepper_tile_widget.dart';
import 'package:stepper_list_view/stepper_list_view.dart';

import '../core/utils/constants/constant.dart';
import '../core/utils/theme/colors.dart';

class StepperListWidget extends StatelessWidget {
  StepperListWidget({Key? key}) : super(key: key);

  final _stepperData = List.generate(
      5,
          (index) => StepperItemData(
        id: '$index',
        content: null,
        avatar: '',
      )).toList();

  @override
  Widget build(BuildContext context) {
    return StepperListView(
      shrinkWrap: true,
      stepperData: _stepperData,
      stepAvatar: (_, data) {
        final stepData = data as StepperItemData;
        int index = int.parse(stepData.id.toString());
        final bool isSelected = index == 0;
        return PreferredSize(
          preferredSize: Size.fromRadius(AppSizes.kSizesBox*1.6),
          child: Container(
            width: AppSizes.kSizesBox1 * 1.2,
            height: AppSizes.kSizesBox1,
            decoration: BoxDecoration(
                color: isSelected?Colors.amber:Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey),
                boxShadow: [
                  if(isSelected)
                    BoxShadow(color: AppColors.kYellow.withOpacity(.5),spreadRadius: 1,blurRadius: 2,offset: const Offset(1,1))
                ]
            ),
            child: isSelected?const Icon(Icons.check,color: AppColors.kWhite,size: 22,):const SizedBox(),
          ),
        );
      },
      stepContentWidget: (_, data) {
        final stepData = data as StepperItemData;
        int index = int.parse(stepData.id.toString());
        var detailsData = AppConstant.detailsData[index];
        return StepperTileWidget(detailsData: detailsData,);
      },
      stepperThemeData: const StepperThemeData(
        lineWidth: 1,
      ),
      physics: const ClampingScrollPhysics(),
    ) ;
  }
}
