import 'package:flutter/material.dart';

import '../app/controllers/details_controller.dart';
import '../core/utils/theme/colors.dart';
import 'nav_bar_List.dart';

class RowIconsWidget extends StatelessWidget {
  final DetailsController controller;
  const RowIconsWidget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        NavBarList(
            icon: Icons.swap_vert,
            title: 'Intermediate',
            iconColor: AppColors.kYellow),
        Spacer(),
        NavBarList(
            icon: Icons.timer_sharp,
            title: '02 H 20 M',
            iconColor: AppColors.kYellow),
        Spacer(),
        NavBarList(
            icon: Icons.mobile_friendly,
            title: 'Mobile Friendly',
            iconColor:AppColors.kWhite),
        Spacer(),
        NavBarList(
            icon: Icons.verified_user,
            title: 'Certified',
            iconColor: AppColors.kWhite),
      ],
    );
  }
}
