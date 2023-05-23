import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_task/app/Routes/routes.dart';
import 'package:my_first_task/widgets/material_widgets/main_button.dart';
import '../../core/utils/sizes/sizes.dart';
import '../../core/utils/theme/colors.dart';
import '../../widgets/home_screen_body.dart';
import '../../widgets/home_screen_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBlack,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const HomeScreenHeaders(),
            SizedBox(height: AppSizes.kSizesBox),
            const HomeScreenBody(),

          ],
        ),
      ),
    );
  }
}
