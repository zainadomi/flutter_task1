import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_task/app/controllers/filter_controller.dart';
import 'package:my_first_task/core/utils/assets/app_assets.dart';
import 'package:my_first_task/core/utils/sizes/sizes.dart';
import 'package:my_first_task/core/utils/theme/colors.dart';
import 'package:my_first_task/widgets/material_widgets/main_text.dart';

class TypeWidget extends StatelessWidget {
  final FilterController filterController;
  final dynamic type;

  const TypeWidget({Key? key, required this.type, required this.filterController,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: (){
        filterController.setType(type['id']);
      },
      child: Container(
        height: AppSizes.kContainerHeight*.68,
        width: AppSizes.kSmallContainerWidth*.68,
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.all(Radius.circular(AppSizes.kBoarderRadius)),
          // color: AppColors.kDarkGrey,
          image: DecorationImage(
            image: AssetImage(
              filterController.isSelectedType(type['id'])?AppAssets.kSelected:AppAssets.kUnSelected,
            ),
            fit: BoxFit.contain,
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: AppSizes.kContainerHeight*1.2,
                child: Image(image: AssetImage(type['image']))),
            SizedBox(height: AppSizes.kSizesBox1 * 0.7,),
            MainText(
              text: type['type'],
              color: AppColors.kGrey,
              fontSize: AppSizes.kSubTitle * 0.6,
            )
          ],
        ),
      ),
    );
  }
}
