import 'package:flutter/cupertino.dart';
import 'package:my_first_task/widgets/material_widgets/main_text.dart';

import '../core/utils/sizes/sizes.dart';
import '../core/utils/theme/colors.dart';

class NavBarList extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;

  const NavBarList({Key? key, required this.icon, required this.title, required this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon,color: iconColor,size: AppSizes.kIconSize,),
        SizedBox(height: AppSizes.kSizesBox,),
        MainText(text: title,color: AppColors.kWhite,fontSize: AppSizes.kSmallLabel * 0.8,)
      ],
    );
  }
}
